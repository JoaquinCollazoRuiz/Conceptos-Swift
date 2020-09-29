import Foundation

enum LoginError:Error{
    case invalidUser
    case invalidPassword
}

func getUserData() throws{
    
    var usuario:String? = "nombre correcto"
    var usuario = nil
    
    if usuario == nil{
        throw LoginError.invalidUser
    }
}
 
do{
    try getUserData()
    print("Ya tenemos los datos del usuario")
} catch{
    print("No ha sido posible obtener el usuario")
}
