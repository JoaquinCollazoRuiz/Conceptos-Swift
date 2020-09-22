import UIKit

class CamisetasController: UIViewController{
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var webVIew: UIWebView!
    var nombreCeldaRecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitulo.text = nombreCeldaRecibido!
    }
    

    
}
