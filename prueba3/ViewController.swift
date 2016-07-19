//
//  ViewController.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tamaño: UITextField!

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
        var textam = String(self.tamaño.text!)
        
        if textam == "" {
            textam = "NO ELEGISTE TAMAÑO"
        }
        
        return textam
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

