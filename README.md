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

1. Create rails app

2. Push to gh remote repo

3. Create searches routes
git
4. Generate searches controller
  * Require json and open-uri

5. Def Index in searches controller
  * Store API URL in variable
  * Create logic for Index method to rederct each API call to the right path and insert the param given by the view.
  * Retrive the value from the parsed json to hand it to the view
  * Paginate those results.

7. Private:
  * Permit required params method.
  * Create an method to call the API, open , read and parse the resuls 

6. Create Index view
  * Searches form
  * Searches rendering
  * Pagination controllers

7. Styles and front
