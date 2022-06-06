  require "json"
  require "open-uri"
class SearchesController < ApplicationController

  def index
    @base_filepath = "https://api.chucknorris.io/jokes/"
    @random_fp = "random"
    @query_fp = "search?query=#{params[:query]}"
    @category_fp = "random?category=#{params[:category]}"
    
    if params[:random] 
      @api_response = api_call(@base_filepath + @random_fp)
      @random_fact = @api_response['value']
    elsif params[:category] && params[:query]&.empty?
      @api_response = api_call(@base_filepath + @category_fp)
      @random_cat_fact = @api_response['value']
    elsif params[:query]
      @api_response = api_call(@base_filepath + @query_fp)
      @facts_display = nil
      @api_response.each { |result| @facts_display = result[1] }
      @result_values = @facts_display.each { |x| x['value'] }
      paginate()

    end
  end

  def paginate
    @page = 0 
    unless params[:page].nil?
      @page = params[:page].to_i
    end
    @page_arr = []
    @page_arr << (@result_values[@page])
    @page_arr << (@result_values[@page+1])
    @page_arr << (@result_values[@page+2])
  end

  private

  def search_params
    params.require(:search).permit(:query, :category, :random, :page)
  end

  def api_call(filepath)
    response = URI.open(filepath).read
    JSON.parse(response)
  end
end
