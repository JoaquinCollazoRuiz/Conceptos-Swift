import UIKit

//Variable
var edad = 20
//Constante
let nombre = "Joaquín"

//Para forzar el tipo a una variable
var letras:String = "Collazo"
var letra:Character = "J"
var numeros:Int = 1
var falsoVerdader:Bool = true
var pi:Double = 3.14
var pi2:Float = 3.15
var puedePasar:Bool = true
//De esta manera provocamos que este string pueda ser null
var optional:String?
print("valor de optional es -> \(optional)")

var abecedario = ["A","B","C","D","E"]

let mamiferos: Set<String> = ["Perro","Delfin","Gato"]
let reptiles:Set<String> = ["Cocodrilo","Salamandra"]
print(mamiferos.union(reptiles).sorted())

//DICCIONARIO
var equipos : [String:String] = ["MAD":"Real Madrid", "FCB": "Barcelona", "ATL":"Atlético de Madrid"]
equipos["FCB"] = "Futbol Club Barcelona"

for equipo in equipos{
    print(equipo.value)
}

for (equipoKey, equipoValue) in equipos{
    print("\(equipoKey) \(equipoValue)")
}
