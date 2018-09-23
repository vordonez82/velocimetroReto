//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, velocidadBaja = 20, velocidadMedia = 30, velocidadAlta = 120
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var velocidadActual: Int
        var mensaje : String = ""
        switch velocidad {
        case Velocidades.Apagado:
            
            velocidadActual = self.velocidad.rawValue
            mensaje = "Apagado"
            self.velocidad = Velocidades.velocidadBaja
        case Velocidades.velocidadBaja:
            
            velocidadActual = self.velocidad.rawValue
            mensaje = "Velocidad Baja"
            self.velocidad = Velocidades.velocidadMedia
        case Velocidades.velocidadMedia:
            
            velocidadActual = self.velocidad.rawValue
            mensaje = "Velocidad Media"
            self.velocidad = Velocidades.velocidadAlta
        case Velocidades.velocidadAlta:
            
            velocidadActual = self.velocidad.rawValue
            mensaje = "Velocidad Alta"
            self.velocidad = Velocidades.velocidadMedia
        }
        return (velocidadActual, mensaje)
    }
}


//Pruebas
var auto = Auto()
auto.velocidad

for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual) \(resultado.velocidadEnCadena)")
}

