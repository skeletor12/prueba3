//
//  ViewMasa.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController {
    
    
    var masa = ""
    @IBOutlet weak var delgada: UIButton!
    @IBOutlet weak var gruesa: UIButton!
    @IBOutlet weak var crujiente: UIButton!
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
        var texmas = String(masa)
            
            if texmas == "" {
                texmas = "NO ELEGISTE MASA"
            }
            
        return texmas
    }
    
    
    
    @IBAction func delgadaSelected(sender: AnyObject) {
        self.masa = "DELGADA"
        delgada.backgroundColor = UIColor.blackColor()
        gruesa.backgroundColor = UIColor.clearColor()
        crujiente.backgroundColor = UIColor.clearColor()
    }
    
    
    @IBAction func gruesaSelected(sender: AnyObject) {
        self.masa = "GRUESA"
        gruesa.backgroundColor = UIColor.blackColor()
        delgada.backgroundColor = UIColor.clearColor()
        crujiente.backgroundColor = UIColor.clearColor()
    }
    
    
    @IBAction func crujienteSelected(sender: AnyObject) {
        self.masa = "CRUJIENTE"
        crujiente.backgroundColor = UIColor.blackColor()
        gruesa.backgroundColor = UIColor.clearColor()
        delgada.backgroundColor = UIColor.clearColor()
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
