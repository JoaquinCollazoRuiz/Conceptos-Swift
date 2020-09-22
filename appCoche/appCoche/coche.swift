import Foundation

class Coche{
    
    var nPuertas = 5
    var modelo = "Ford Scort"
    
    
    func numeroPuertas(){
        print("El  \(modelo) tiene \(nPuertas) puertas ")
    }
    
    
    func acelerar() ->String{
        print("El \(modelo) está acelerando")
        return "El coche esta acelerando"
    }
    
    func frenar() ->String{
        print("El \(modelo) está frenando")
        return "El coche esta frenando"
    }
}
