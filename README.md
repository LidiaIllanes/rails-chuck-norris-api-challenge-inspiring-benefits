# README

Hay que desarrollar un buscador de facts de Chuck Norris que se obtienen de la API https://api.chucknorris.io

El buscador tendrá las siguientes características:

* No necesita login, es abierto.
* Se permitirá buscar por:
    * Palabras.
    * Categorías.
    * De manera aleatoria.
* Los resultados se mostrarán paginados.
* Cada búsqueda junto con los resultados obtenidos se guardarán en base de datos.
* Existirá la opción de introducir una cuenta de email para que se envíen los resultados de la búsqueda.
* La aplicación estará disponible en castellano e inglés (los contenidos extraídos de la API no es necesario traducirlos, se pueden presentar en inglés).

  * La estructura y el diseño de la página y de los correos son completamente libres, al igual que el modelo de datos para guardar la información. Se puede añadir cualquier otra funcionalidad o mejora que se considere.

  * Forma de entrega: subirlo a un repositorio público de GitHub o Bitbucket incluyendo una carpeta con algunas capturas de pantalla de la solución desarrollada y una pequeña explicación sobre la solución planteada en el Readme.
  ********************************************************************

1. Create rails app

2. Push to gh remote repo

3. Create searches routes

4. Generate searches controller
  * Require json and open-uri

5. Def Index in searches controller
  * Store API URL in variables
  * The Index method will:
    * if the params passed are from the random field or category dropdown in the view,
     the method api_call will be call passing as argument the concatenation of the base_filepath and the random/categoy 
     api_call will open, read and parse the json file and return it.
     then it will retrieve the value of the key 'value' and store it in a global variable so it can be called from the view.
     * if the params passed are from the query field it ill call the api_call the same way but once they are parse it will iterate trough them to extract each value of each the key 'value' and store them into the @resul_values variable as an array.
    * And lastly, call the method paginate() on those results to distribute them in pages that the view can use.
    
6. Create Index view
  * Searches form
  * Searches rendering
  * Pagination controllers

7. Styles and front
