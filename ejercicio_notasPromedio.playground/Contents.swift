import UIKit

/*CREAR PROGRAMA QUE CALCULE EL PROMEDIO DE UN ALUMNO Y SUS 5 MATERIAS PRINCIPALES. AL FINAL DEBES
 DE  DE TENER UNA VARIABLE BOOLEANA QUE DIGA "true" si el alumno tiene promedio 100*/

let asignatura1:Float = 100
let asignatura2:Float = 100
let asignatura3:Float = 100
let asignatura4:Float = 100
let asignatura5:Float = 100
var sobresaliente = false
var media = (asignatura1+asignatura2+asignatura3+asignatura4+asignatura5)/5

if (media == 100){
    sobresaliente = true
}else{
    sobresaliente = false
}
