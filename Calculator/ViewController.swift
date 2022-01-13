//
//  ViewController.swift
//  Calculator
//
//  Created by Navneeth Prasanth on 12/01/2022.
//

import UIKit

class ViewController: UIViewController {
    var numberonscreen :Double = 0;
    var previousnumber :Double = 0;
    var performingmath = false;
    var operation = 0;
    

    
    @IBAction func numbers(_ sender: UIButton) {
        if performingmath == true {
            
            label.text = String(sender.tag-1)

            numberonscreen = Double(label.text!)!

            performingmath = false

            }

            else {

            label.text = label.text! + String(sender.tag-1)

            numberonscreen = Double(label.text!)!

            }

            }
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousnumber = Double(label.text!)!
            
            if sender.tag == 12 //Divide
            {
                label.text = "÷";
            }
            else if sender.tag == 13 //Multiply
            {
                label.text = "X";
            }
            else if sender.tag == 14 //Subtract
            {
                label.text = "-";
            }
            else if sender.tag == 15 //Add
            {
                label.text = "+";
            }
            operation = sender.tag
            performingmath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                label.text = String(previousnumber / numberonscreen)
            }
            else if operation == 13
            {
                label.text = String(previousnumber * numberonscreen)
            }
            else if operation == 14
            {
                label.text = String(previousnumber - numberonscreen)
            }
            else if operation == 15
            {
                label.text = String(previousnumber + numberonscreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            previousnumber = 0;
            numberonscreen = 0;
            operation = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

