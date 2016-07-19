//
//  ViewQueso.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewQueso: UIViewController {
    
    
    @IBOutlet weak var queso: UITextField!
    
    
    @IBOutlet weak var tamañores: UILabel!
    @IBOutlet weak var masares: UILabel!

    var texmas = "No elegiste tipo de masa"
    var textam = "No elegiste tipo de tamaño"
    
    override func viewWillAppear(animated: Bool) {
        masares.text=String(texmas)
        tamañores.text=String(textam)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let envio3=imprime3()
        let Vistaingrediente=segue.destinationViewController as! ViewIngrediente
        Vistaingrediente.texque=envio3
        Vistaingrediente.texmas=texmas
        Vistaingrediente.textam=textam
    }
    

    @IBAction func botque(sender: AnyObject) {
        imprime3()
    }
    
    func imprime3()->String{
        var texque=String(self.queso.text!)
        
        if texque == "" {
            texque = "NO ELEGISTE QUESO"
        }
        return texque
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
