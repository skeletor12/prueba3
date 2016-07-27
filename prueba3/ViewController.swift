//
//  ViewController.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tamaño2 = ""
    @IBOutlet weak var chica: UIButton!
    @IBOutlet weak var siguiente: UIButton!
    @IBOutlet weak var mediana: UIButton!
    @IBOutlet weak var grande: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let envio=imprime()
        let sigVista=segue.destinationViewController as! ViewMasa
        sigVista.textam=envio
    }
    
    
    @IBAction func bottam(sender: AnyObject) {
        imprime()
    }

    func imprime()->String{
        var textam = String(tamaño2)
        
        if textam == "" {
            textam = "NO ELEGISTE TAMAÑO"
        }
        
        return textam
    }
    
    
    @IBAction func chicaSelected(sender: AnyObject) {
        self.tamaño2 =  "CHICA"
        chica.backgroundColor = UIColor.blackColor()
        mediana.backgroundColor = UIColor.clearColor()
        grande.backgroundColor = UIColor.clearColor()
    }
    

    @IBAction func medianaSelected(sender: AnyObject) {
        self.tamaño2 = "MEDIANA"
        mediana.backgroundColor = UIColor.blackColor()
        chica.backgroundColor = UIColor.clearColor()
        grande.backgroundColor = UIColor.clearColor()
    }
    
    
    
    @IBAction func grandeSelected(sender: AnyObject) {
        self.tamaño2 = "GRANDE"
        grande.backgroundColor = UIColor.blackColor()
        chica.backgroundColor = UIColor.clearColor()
        mediana.backgroundColor = UIColor.clearColor()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

