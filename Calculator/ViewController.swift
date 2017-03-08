//
//  ViewController.swift
//  Calculator
//
//  Created by Lucas Nascimento on 02/11/16.
//  Copyright © 2016 Lucas Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var bntResult: UITextField!
    
    var result = Float()
    var currentNumber = Float()
    var currentOp = String()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        bntResult.text = ("\(result)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnNumberInput(_ sender: UIButton) {
        
        //currentNumber = currentNumber * 10  + Float(sender.titleLabel!.text!.toInt()!)
        //currentNumber = currentNumber * 10 + Float(Int(sender.titleLabel!.text!))
        currentNumber = currentNumber * 10 + Float(sender.titleLabel!.text!)!
        bntResult.text = ("\(currentNumber)")
        
       // let labelText = sender.titleLabel?.text ?? "" // If we can't get text, use the empty string (which will fail to init a float)
        //let floatFromLabel = Float(labelText) ?? 0 // If we can't get a float from the label, use 0 as then we're not adding to the current value
        //urrentNumber = currentNumber * 10 + floatFromLabel
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBAction func btnOperation(_ sender: UIButton) {
        
        switch currentOp {
        case "=":
            result = currentNumber
        case "+":
            result = result + currentNumber
        case "-":
            result = result - currentNumber
        case "*":
            result = result * currentNumber
        case "/":
            result = result / currentNumber
            
        default:
            print("Erro!")
        }
        currentNumber = 0
        bntResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "="){
            result = 0
        }
        currentOp = sender.titleLabel!.text! as String!
        
        
    }
    @IBAction func btnClear(_ sender: UIButton) {
        
        result = 0
        currentNumber = 0
        currentOp = "="
        bntResult.text = ("\(result)")
        
    }
    
    
}

