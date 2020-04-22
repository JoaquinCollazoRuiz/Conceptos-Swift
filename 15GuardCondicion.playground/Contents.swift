import UIKit

func suma(a:Int?, b:Int?){
    
    //El guard lo hace si es posible, es decir, si puede coger valor de las dos primeras varibales y no son null entrata en la condición si no, en el else.
    guard let primerValor = a,
            let segundoValor = b
        
        else {
        print("No se pudo poner valor a las variables")
            return
    }
    print(primerValor+segundoValor)
}

suma(a: 9, b: 1)
