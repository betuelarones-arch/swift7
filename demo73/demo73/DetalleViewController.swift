//
//  DetalleViewController.swift
//  demo73
//
//  Created by Tecsup on 27/04/26.
//

import UIKit

class DetalleViewController: UIViewController {
    
    @IBOutlet weak var imagenDetalle: UIImageView!
    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var regionLabel: UILabel!
    
    @IBOutlet weak var descripcionLabel: UILabel!
    
    var culturaSeleccionada: Cultura?

        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let cultura = culturaSeleccionada {
                nombreLabel.text = cultura.nombre
                regionLabel.text = "Región: \(cultura.region)"
                descripcionLabel.text = cultura.descripcion
                imagenDetalle.image = UIImage(named: cultura.imagen)
                self.title = cultura.nombre
            }
        }

}
