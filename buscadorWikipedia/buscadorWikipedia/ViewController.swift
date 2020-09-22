import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!
    var palabra:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buscar(_ sender: Any) {
        if textField.text!.isEmpty{
            palabra = "Wikipedia"
        }else{
            palabra = textField.text!
            let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
            let objetoUrl = URL(string: urlCompleto)
            let tarea = URLSession.shared.dataTask(with: objetoUrl!){datos,respuesta,error in
                
                if error != nil{
                    print(error!)
                }else{
                    do{
                        let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                        let querySubJson = json["query"] as! [String:Any]
                        let pagesSubJson = querySubJson["pages"] as! [String:Any]
                        let idSubJson = pagesSubJson["23597"] as! [String:Any]
                        let extractStromgHtml = idSubJson["extract"] as! String
                        print(extractStromgHtml)
                        
                        DispatchQueue.main.sync(execute: {
                            self.webView.loadHTMLString(extractStromgHtml, baseURL: nil)
                        })

                        print(json)
                    }catch{
                        print("Algo fallo")
                    }
                }
                
            }
            tarea.resume()
        }
        
    }
    
}

