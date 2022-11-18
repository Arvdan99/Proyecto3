//
//  HorarioAsistenciaController.swift
//  project3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import Foundation

import UIKit

class HorarioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var horario : [Horario] = []
    
    @IBOutlet weak var TvHorario: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        horario.append(Horario(materia: "Animacion", hora: "9:00 - 1:00", salon: "G16B"))
  
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return horario.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaHorario") as! CeldaHorarioController
        celda.lblMateria.text = horario[indexPath.row].materia
        celda.lblHora.text = horario[indexPath.row].hora
        celda.lblAula.text = horario[indexPath.row].salon
        
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
 
 
}

