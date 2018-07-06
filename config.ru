# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> ESTAS EN EL INDEX!!! :) </h1>']]

    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en otro landing!! </h1>']]
    else
      [404, {'Content-Type' => 'text/html'}, [File.read("404.html")]]
    end
  end
end
run MiPrimeraWebApp.new