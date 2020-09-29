import Foundation
import UIKit

let pesoFruta = -15

if pesoFruta > 10{
    print("Te tengo que poner una bolsa grande")
} else if pesoFruta <= 10 && pesoFruta > 0 {
    print("Con una bolsa pequeña tienes suficiente")
} else{
    asseertionFailure("Te ha llegado una pesada negativa")
}

if pesoFruta > 0 {
    print("pesada correcta")
} else{
    precondition(pesoFruta > 0)
}

