//: Minireto de Velocimetro Digital

import UIKit


enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidad : Velocidades){
        self = velocidad
    }
    
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidad: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        }
        
    }
}


var automovil: Auto = Auto()
var retorno : (actual : Int, velocidadEnCadena : String)

print ("\(automovil.velocidad.hashValue) ,\t\(automovil.velocidad)")

for i in 1...20{
    retorno = automovil.cambioDeVelocidad()
    print("Velocidad:\(retorno.actual) -->\(retorno.velocidadEnCadena)")
}