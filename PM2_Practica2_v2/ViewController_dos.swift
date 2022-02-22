//
//  ViewController_dos.swift
//  PM2_Practica2_v2
//
//  Created by Xanderpsy on 20/02/22.
//

import UIKit

class ViewController_dos: UIViewController {
    var recirNombre : String?
    var recirEdad : String?
    @IBOutlet weak var nombreusuarioLabel: UILabel!
    
    @IBOutlet weak var UILabelpequeñin: UILabel!
    @IBOutlet weak var personaIV: UIImageView!
    @IBOutlet weak var edadusuarioLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let edadInt = Int (recirEdad!)
        
        if(edadInt!>=18){
            personaIV.image = UIImage(named: "img1")
            nombreusuarioLabel.text =  " "
            edadusuarioLabel.text = recirNombre
            self.view.backgroundColor = UIColor.green
            UILabelpequeñin.text = "Puedes pasar a la escupidera de salty"
        }else{
            personaIV.image = UIImage(named: "img2")
            nombreusuarioLabel.text =  "Hola:"
            edadusuarioLabel.text = recirNombre
            self.view.backgroundColor = UIColor.red
            UILabelpequeñin.text = "Puedes pasar a la choza de los pequeñines"
        }
        
    }
    @IBAction func regresarbtn(_ sender: UIButton) {
    
        dismiss(animated: true)
    }
    
    @IBAction func salirbtn(_ sender: UIButton) {
        exit(0)
    }
}
