//
//  CalendarioPagosController.swift
//  project3
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

var menuCafe : [MenuCafe] = []

class MenuCafeController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuCafe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenuCafe") as! CeldaMenuCafeController
        celda.lblComida.text = menuCafe[indexPath.row].comida
        celda.lblPrecio.text = menuCafe[indexPath.row].precio
        

        return celda
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
