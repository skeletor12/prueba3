//
//  ViewMasa.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController {
    


    @IBOutlet weak var masa: UITextField!
    

    @IBOutlet weak var tamañores: UILabel!
    
    var textam = "" 
    
    override func viewWillAppear(animated: Bool) {
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
        let envio2=imprime2()
        let Vistaqueso=segue.destinationViewController as! ViewQueso
        Vistaqueso.texmas=envio2
        Vistaqueso.textam=textam
    }
    


    @IBAction func botmas(sender: AnyObject) {
        imprime2()
    }
    
        func imprime2()->String{
        var texmas = String(self.masa.text!)
            
            if texmas == "" {
                texmas = "NO ELEGISTE MASA"
            }
            
        return texmas
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
