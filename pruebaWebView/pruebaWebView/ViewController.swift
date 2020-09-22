//
//  ViewController.swift
//  pruebaWebView
//
//  Created by Joaquín Collazo Ruiz on 14/05/2020.
//  Copyright © 2020 Joaquín Collazo Ruiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vistaWeb: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlGoogle = URL(string: "https://www.google.com/?hl=es")
        vistaWeb.loadRequest(URLRequest(url: urlGoogle!))
        
        //LOS TRES PARÁMETROS QUE PONGO ES LO QUE VOY A RECIBIR DE LA LLAMADA, LO PUEDO LLAMAR COMO QUIERA.
        let urlPeti = URLRequest(url: urlGoogle!)
        let peti = URLSession.shared.dataTask(with: urlPeti){datos,respuesta,error in
            
            if error == nil{
                let datosString = NSString(data: datos!, encoding: String.Encoding.utf8.rawValue)
                print(datosString)
            }else{
                print(error!)
            }
        }
        //AQIÍ LANZO LA PETICIÓN
        peti.resume()
    }


}

