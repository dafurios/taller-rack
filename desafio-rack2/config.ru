# Ejercicio 02

require 'rack'
  class MiSegundaWebApp
  #    def call(env)
  #     if env['REQUEST_PATH'] == '/'
  #      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
  #     end
  #    end
  # end
  def call(env)
      case env['REQUEST_PATH']
        when '/'
          [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]

        when '/index'
          [200, { 'Content-Type' => 'text/html; charset= "utf-8"' }, ['<h1> Estás en el Index! </h1>']]

        when '/otro'
          [200, { 'Content-Type' => 'text/html; charset= "utf-8"' }, ['<h1> Estás en otro landing! </h1>']]

        else
          [404, {'Content-Type' => 'text/html; charset= "utf-8"'}, [File.read("404.html")]]
      end
  end
end


run MiSegundaWebApp.new


# Crear un archivo llamado 404.html cuyo body contenga una etiqueta de título
#  con el texto "No se ha encontrado la página :(".
# 1. Modificar el archivo config.ru para adaptarlo a los siguientes
# requerimientos:
#   Si se ingresa a la url /index:
#   Agregar un código de respuesta 200.
#   Agregar en los Response Headers un Content-type de tipo text/html.
#   Agregar en el Response Body una etiqueta de título que contenga un texto
#   "Estás en el Index!".
# 2. Si se ingresa a la url /otro:
#   Agregar un código de respuesta 200.
#   Agregar en los Response Headers un Content-type de tipo text/html.
#   Agregar en el Response Body una etiqueta de título que contenga un texto
#   "Estás en otro landing!".
# 3. Si se ingresa a cualquier otra url:
#   Agregar un código de respuesta 404.
#   Agregar en los Response Headers un Content-type de tipo text/html.
#   Agregar en el Response Body el archivo 404.html creado al inicio.
