//
//  ViewController.swift
//  PM2_Practica2_v2
//
//  Created by Xanderpsy on 20/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTF: UITextField!
    @IBOutlet weak var edadTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func enviarBTN(_ sender: UIButton) {
        
        performSegue(withIdentifier: "EnviarText", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EnviarText"{
            let objDestino = segue.destination as! ViewController_dos
            objDestino.recirNombre =  nombreTF.text
            objDestino.recirEdad =  edadTF.text
            
        }
        
    }
    
}

