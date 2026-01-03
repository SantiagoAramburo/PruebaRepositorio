class PagesController < ApplicationController
    def hola
        render plain: "¡Hola desde Ruby on Rails y el controlador Pages!"
    end
    def about
        @message = "Esta es la página Acerca de nosotros."
    end
end
