//
//  ViewConfirmacion.swift
//  prueba3
//
//  Created by Luis Rodriguez on 17/07/16.
//  Copyright © 2016 Luis Rodriguez. All rights reserved.
//

import UIKit

class ViewConfirmacion: UIViewController {
    
    
    @IBOutlet weak var tamañores: UILabel!
    @IBOutlet weak var masares: UILabel!
    @IBOutlet weak var quesores: UILabel!
    @IBOutlet weak var ingredienteres: UITextView!
    
    var texmas = ""
    var textam = ""
    var texque = ""
    var ingrediente:[String:String] = [:]
    
    override func viewWillAppear(animated: Bool) {
        masares.text=String(texmas)
        tamañores.text=String(textam)
        quesores.text=String(texque)
        var ingredientesSelected:String = ""
        for ingrediente1 in ingrediente.values
        {
            ingredientesSelected += " \(ingrediente1) "
        }
        self.ingredienteres.text = ingredientesSelected
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
        let envio5=pedido()
        let Vistapedido=segue.destinationViewController as! ViewPedido
        Vistapedido.texped=envio5
    }
    
    @IBAction func botped(sender: AnyObject) {
        pedido()
    }
    
    func pedido()->String{
        
        var mensaje:String = "PEDIDO CONFIRMADO...EN SU PUERTA EN MENOS DE 30 MINUTOS O ES GRATIS"
        
        if texque == "NO ELEGISTE QUESO" {
            let alert = UIAlertController(title: "Aviso", message: "REGRESA PARA SELECCIONAR EL TIPO DE QUESO", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        if texmas == "NO ELEGISTE MASA" {
            let alert = UIAlertController(title: "Aviso", message: "REGRESA PARA SELECCIONAR EL TIPO DE MASA", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        if textam == "NO ELEGISTE TAMAÑO" {
            let alert = UIAlertController(title: "Aviso", message: "REGRESA PARA SELECCIONAR EL TAMAÑO DE TU PIZZA", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        return mensaje
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
