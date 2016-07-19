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
    @IBOutlet weak var ingredienteres: UILabel!
    
    var texmas = ""
    var textam = ""
    var texque = ""
    var texing = ""
    
    override func viewWillAppear(animated: Bool) {
        masares.text=String(texmas)
        tamañores.text=String(textam)
        quesores.text=String(texque)
        ingredienteres.text=String(texing)
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
        
        if texing == "NO ELEGISTE INGREDIENTES" {
            mensaje = "NO PODEMOS REALIZAR TU PEDIDO DEBIDO A QUE NO ELEGISTE INGREDIENTES"
        }
        
        if texque == "NO ELEGISTE QUESO" {
            mensaje = "NO PODEMOS REALIZAR TU PEDIDO DEBIDO A QUE NO ELEGISTE TIPO DE QUESO"
        }
        
        if texmas == "NO ELEGISTE MASA" {
            mensaje = "NO PODEMOS REALIZAR TU PEDIDO DEBIDO A QUE NO ELEGISTE TIPO DE MASA"
        }
        
        if textam == "NO ELEGISTE TAMAÑO" {
            mensaje = "NO PODEMOS REALIZAR TU PEDIDO DEBIDO A QUE NO ELEGISTE TAMAÑO DE PIZZA"
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
