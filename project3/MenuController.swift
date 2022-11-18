//
//  ViewController.swift
//  project3
//
//  Created by Alumno on 10/31/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var menus : [MenuI] = []
    var contactos: [Contactos] = []
    var menuCafe : [MenuCafe] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menus.append(MenuI(segue: "goToPerfil", menu: "Mi perfil"))
        menus.append(MenuI(segue: "goToHorario", menu: "Horario"))
        menus.append(MenuI(segue: "goToMenu", menu: "Menu Cafeteria"))
        menus.append(MenuI(segue: "goToPagos", menu: "Calendario de pagos"))
    
        
        
        contactos.append(Contactos(nombre: "Juan José Torres Díaz", TCasa: "6444161874", TPersonal: "6441591874", parentesco: "Abuelo Materno"))
        
   
        menuCafe.append(MenuCafe(comida: "Pizza", precio: "$99,00"))
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as! CeldaMenuController
        celda.lblMenu.text = menus[indexPath.row].menu
        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Se ejectua cuando se selecciona una celda del TableView
        performSegue(withIdentifier: menus[indexPath.row].segue, sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHorario" {
        let destino = segue.destination as! HorarioController
        }

        if segue.identifier == "goToMenu" {
            let destino = segue.destination as! MenuCafeController
            
        }
        if segue.identifier == "contactoemergencia" {
            let destino = segue.destination as! ContactoEmergenciaController
            destino.contactos = contactos
        }
    }
}

