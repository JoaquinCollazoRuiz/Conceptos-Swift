import UIKit
var a:Int
var b:Int
var resultado = 0

multiplicar(a: 2,b: 1)

func multiplicar (a:Int, b:Int){
    resultado = a*b
}

//PARA FORZAR A QUE NOS DEVUELVE UN INT SE HARÍA DE ESTA MANERA
var sum1:Int
var sum2:Int
var resultSum = 0

suma(sum1: 2,sum2: 8)

func suma(sum1:Int, sum2:Int) -> Int{
    resultSum = sum1+sum2
    return resultSum
}

func saludos() -> String{
    return "Mi nombre es joaquín"
}
