import UIKit

class Persona{
    var nombre = "Joaquín"
    var edad = 20
    
    func saludo() -> String{
        return "Mi nombre es \(nombre) y tengo \(edad) años"
    }
}

//CREACIÓN DEL OBJETO PERSONA
var objetoPersona = Persona()
//AHORA PODEMOS LLAMAR A SUS PROPIEDADES
objetoPersona.nombre
