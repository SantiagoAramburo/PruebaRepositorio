module BicicletaHelper
    def mostrar_estado(bicicleta)
        bicicleta.activa ? "Disponible" : "No Disponible"
    end
end
