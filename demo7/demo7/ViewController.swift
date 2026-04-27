//
//  ViewController.swift
//  semana7-fso
//
//  Created by Tecsup on 27/04/26.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var listaProfesores = [
        Profesor(nombre: "Valeria Gomez", cargo: "Docente de Redes", foto: UIImage(named: "avatar1")),
        Profesor(nombre: "Edwin Arévalo", cargo: "Docente de Software", foto: UIImage(named: "avatar2")),
        Profesor(nombre: "Jaime Gomez", cargo: "Coordinador de Software", foto: UIImage(named: "avatar3")),
        Profesor(nombre: "Jaime Farfan", cargo: "Docente de Software TC", foto: UIImage(named: "avatar4")),
        Profesor(nombre: "Juan León", cargo: "Docente de Software TC", foto: UIImage(named: "avatar5")),
        Profesor(nombre: "Silvia Montoya", cargo: "Docente de Software TC", foto: UIImage(named: "avatar6")),
        Profesor(nombre: "Elliot Garamendi", cargo: "Docente de Software TC", foto: UIImage(named: "avatar7")),
        Profesor(nombre: "Hugo Torrico", cargo: "Docente de Software TC", foto: UIImage(named: "avatar8"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaProfesores.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        cell.textLabel?.text = listaProfesores[indexPath.row].nombre
        cell.detailTextLabel?.text = listaProfesores[indexPath.row].cargo
        cell.imageView?.image = listaProfesores[indexPath.row].foto

        return cell
    }
    
    
}

