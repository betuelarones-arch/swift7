import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let listaCulturas: [Cultura] = [
        Cultura(nombre: "Chavín", region: "Áncash", descripcion: "Famosa por sus cabezas clavas y el lanzón monolítico.", imagen: "chavin"),
        Cultura(nombre: "Paracas", region: "Ica", descripcion: "Destacaron por sus textiles y trepanaciones craneanas.", imagen: "paracas"),
        Cultura(nombre: "Moche", region: "La Libertad", descripcion: "Grandes maestros de la cerámica y el oro (Señor de Sipán).", imagen: "moche")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCulturas.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let culturaAEnviar = listaCulturas[indexPath.row]
        performSegue(withIdentifier: "irADetalle", sender: culturaAEnviar)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cultura = listaCulturas[indexPath.row]
        cell.textLabel?.text = cultura.nombre
        cell.detailTextLabel?.text = cultura.region
        cell.imageView?.image = UIImage(named: cultura.imagen)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irADetalle" {
            if let cultura = sender as? Cultura {
                let pantallaDetalle = segue.destination as! DetalleViewController
                pantallaDetalle.culturaSeleccionada = cultura
            }
        }
    }
}
