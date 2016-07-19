//
//  ViewIngrediente.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewIngrediente: UIViewController {
 
    
    @IBOutlet weak var ingrediente: UITextField!
    
    
    
    @IBOutlet weak var tamañores: UILabel!
    @IBOutlet weak var masares: UILabel!
    @IBOutlet weak var quesores: UILabel!
    
    var texmas = ""
    var textam = ""
    var texque = ""

    override func viewWillAppear(animated: Bool) {
        masares.text=String(texmas)
        tamañores.text=String(textam)
        quesores.text=String(texque)
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
        let envio4 = imprime4()
        let Vistaingrediente=segue.destinationViewController as! ViewConfirmacion
        Vistaingrediente.texing=envio4
        Vistaingrediente.textam=textam
        Vistaingrediente.texmas=texmas
        Vistaingrediente.texque=texque
    }
    
    
    
    @IBAction func boting(sender: AnyObject) {
        imprime4()
    }
    
    func imprime4() -> String {
        var texing = String(self.ingrediente.text!)
        
        if texing == "" {
           texing = "NO ELEGISTE INGREDIENTES"
        }
        return texing
        
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
