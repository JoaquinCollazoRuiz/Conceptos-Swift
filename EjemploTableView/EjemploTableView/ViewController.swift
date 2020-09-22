import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tabla: UITableView!
    var contenidoCeldas = ["Camisetas", "Camisas", "Pantalones", "Zapatillas", "Accesorios"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //INDICAMOS QUE ES ESTE CONTROLLER EL ENCARGADO DE MANEJAR LA TABLA
        tabla.dataSource = self
        tabla.delegate = self
    }
    
    
    //NUMERO DE FILAS QUE TIENE UNA TABLA EN CADA SECCIÓN
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    //ESPERA QUE LE DEVUELVAS LA CELDA QUE VA A MOSTRAR
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "idCell")
        //LA PROPIEDAD indexPath.row, ME DEVUELVE DE MANERA ORDENADA EL NÚMERO DE LAS TABLAS
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        
        return celda
    }
    
    //ESTA FUNCIÓN NOS PERMITE SABER EN QUE CELDA ESTA PINCHANDO EL USUARIO
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Con indexPath.row, soy capaz de recuperar el indice de donde esta pinchando el usuario
        print(indexPath.row)
        
        let indexCelda = indexPath.row
        //AQUÍ CREO LOS SEGUES, withIdentifier: IDdelSegue , sender: contenidoQueEnvio
        self.performSegue(withIdentifier: "camisetasSegue", sender: indexCelda)

        
        
    }

    //ESTA FUNCIÓN ES PARA SABER QUE SEGUE(PANTALLA), CARGAR
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //AQUÍ EJECUTO LOS SEGUES
        if segue.identifier == "camisetasSegue" {
            
            let indexCelda = sender as! Int
            //DE ESTA MANERA CREAMOS UN OBJETO, QUE EN REALIDAD ES LA PANTALLA DE DESTINO, de esta manera podemos cargar todas las propiedades de la clase
            let objPantallaCamisetas:CamisetasController = segue.destination as! CamisetasController
            
            //nombreCeldaRecibido es un string al cual le paso la info de este controller al nuevo
            objPantallaCamisetas.nombreCeldaRecibido = contenidoCeldas[indexCelda]
        }

        
    }

}

