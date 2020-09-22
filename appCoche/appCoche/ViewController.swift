import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cocheLbl: UILabel!
    //Invocacción de la clase Coche
    var objetoCoche:Coche?
    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        objetoCoche = Coche()

    }

    @IBAction func numeroPuertas(_ sender: Any) {
        print(objetoCoche!.nPuertas)
        labelMain.text = String(objetoCoche!.nPuertas)
        
    }
    
    @IBAction func acelerarCoche(_ sender: Any) {
        labelMain.text = objetoCoche?.acelerar()
    }
    
    @IBAction func frenarCoche(_ sender: Any) {
        labelMain.text = objetoCoche?.frenar()
    }
    
}

