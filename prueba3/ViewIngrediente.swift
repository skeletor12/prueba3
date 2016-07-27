//
//  ViewIngrediente.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewIngrediente: UIViewController {
    
    
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var peperoni: UIButton!
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var pimiento: UIButton!
    @IBOutlet weak var piña: UIButton!
    @IBOutlet weak var aceituna: UIButton!
    @IBOutlet weak var extraqueso: UIButton!
    
    var jamonPressed:Bool = false
    var peperoniPressed:Bool = false
    var pavoPressed:Bool = false
    var salchichaPressed:Bool = false
    var cebollaPressed:Bool = false
    var pimientoPressed:Bool = false
    var piñaPressed:Bool = false
    var aceitunaPressed:Bool = false
    var extraquesoPressed:Bool = false
    
    var conteo : Int = 0
    var ingrediente:[String:String] = [:]
    @IBOutlet weak var tamañores: UILabel!
    @IBOutlet weak var masares: UILabel!
    @IBOutlet weak var quesores: UILabel!
    
    var texmas = ""
    var textam = ""
    var texque = ""
    var texing = ""
    
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
        let Vistaingrediente=segue.destinationViewController as! ViewConfirmacion
        Vistaingrediente.ingrediente=self.ingrediente
        Vistaingrediente.textam=self.textam
        Vistaingrediente.texmas=self.texmas
        Vistaingrediente.texque=self.texque
    }
    
    @IBAction func boting(sender: AnyObject) {
        imprime4()
    }
    
    
    func imprime4() -> String {
        
        if texing == "" {
           texing = "NO ELEGISTE INGREDIENTES"
        }
        return texing
        
    }
    
    
    
    @IBAction func jamonSelected(sender: AnyObject) {
    if (jamonPressed == false){
        self.ingrediente["0"] = "JAMON"
        jamon.backgroundColor = UIColor.blackColor()
        jamonPressed = true
        conteo += 1  }
    else {
        self.ingrediente["0"] = nil
        jamon.backgroundColor = UIColor.clearColor()
        jamonPressed = false
        conteo -= 1 }
    }
    
    
    @IBAction func peperoniSelected(sender: AnyObject) {
        if (peperoniPressed == false){
            self.ingrediente["1"] = "PEPERONI"
            peperoni.backgroundColor = UIColor.blackColor()
            peperoniPressed = true
            conteo += 1        }
        else {
            self.ingrediente["1"] = nil
            peperoni.backgroundColor = UIColor.clearColor()
            peperoniPressed = false
            conteo -= 1
        }
    }
    
    @IBAction func pavoSelected(sender: AnyObject) {
    if (pavoPressed == false){
        self.ingrediente["2"] = "PAVO"
        pavo.backgroundColor = UIColor.blackColor()
        pavoPressed = true
        conteo += 1  }
    else {
        self.ingrediente["2"] = nil
        pavo.backgroundColor = UIColor.clearColor()
        pavoPressed = false
        conteo -= 1        }
    }
    
    @IBAction func salchichaSelected(sender: AnyObject) {
     if (salchichaPressed == false){
        self.ingrediente["3"] = "SALCHICHA"
        salchicha.backgroundColor = UIColor.blackColor()
        salchichaPressed = true
        conteo += 1     }
    else {
        self.ingrediente["3"] = nil
        salchicha.backgroundColor = UIColor.clearColor()
        salchichaPressed = false
        conteo -= 1  }
    }
    
    @IBAction func cebollaSelected(sender: AnyObject) {
    if (cebollaPressed == false){
        self.ingrediente["4"] = "CEBOLLA"
        cebolla.backgroundColor = UIColor.blackColor()
        cebollaPressed = true
        conteo += 1    }
    else {
        self.ingrediente["4"] = nil
        cebolla.backgroundColor = UIColor.clearColor()
        cebollaPressed = false
        conteo -= 1        }
    }
    
    @IBAction func pimientoSelected(sender: AnyObject) {
    if (pimientoPressed == false){
        self.ingrediente["5"] = "PIMIENTO"
        pimiento.backgroundColor = UIColor.blackColor()
        pimientoPressed = true
        conteo += 1    }
    else {
        self.ingrediente["5"] = nil
        pimiento.backgroundColor = UIColor.clearColor()
        pimientoPressed = false
        conteo -= 1        }
    }
    
    @IBAction func piñaSelected(sender: AnyObject) {
    if (piñaPressed == false){
        self.ingrediente["6"] = "PIÑA"
        piña.backgroundColor = UIColor.blackColor()
        piñaPressed = true
        conteo += 1    }
    else {
        self.ingrediente["6"] = nil
        piña.backgroundColor = UIColor.clearColor()
        piñaPressed = false
        conteo -= 1        }
    }
    
    @IBAction func aceitunaSelected(sender: AnyObject) {
    if (aceitunaPressed == false){
        self.ingrediente["7"] = "ACEITUNA"
        aceituna.backgroundColor = UIColor.blackColor()
        aceitunaPressed = true
        conteo += 1    }
    else {
        self.ingrediente["7"] = nil
        aceituna.backgroundColor = UIColor.clearColor()
        aceitunaPressed = false
        conteo -= 1        }
    }
    
    @IBAction func extraquesoSelected(sender: AnyObject) {
    if (extraquesoPressed == false){
        self.ingrediente["8"] = "EXTRAQUESO"
        extraqueso.backgroundColor = UIColor.blackColor()
        extraquesoPressed = true
        conteo += 1    }
    else {
        self.ingrediente["8"] = nil
        extraqueso.backgroundColor = UIColor.clearColor()
        extraquesoPressed = false
        conteo -= 1        }
    }
    
    
    @IBAction func continuar(sender: AnyObject) {
        if conteo == 0 {
            
            let alert = UIAlertController(title: "Aviso", message: "Debes seleccionar al menos 1 ingrediente", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        else if conteo > 5 {
            
            let alert = UIAlertController(title: "Aviso", message: "Máximo 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
          
        }
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
