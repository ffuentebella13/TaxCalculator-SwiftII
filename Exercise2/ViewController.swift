//
//  ViewController.swift
//  Exercise2
//
//  Created by Francis Jann Fuentebella on 2020-07-07.
//  Copyright © 2020 Francis Jann Fuentebella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var amountVar:Double = 0.0 //amount to be computed
    var customTipAmount:Double = 0.0 //percentage custom of tip
    var customTipVar:Double = 0.0 // will hold computation for tip
    var customTotal:Double = 0.0 // will hold computation for tip
    var defaultTipVar:Double = 0.0 // will hold computation for default tip
    var defaultTotalVar:Double = 0.0 // will hold computation for the total in default
    
    @IBOutlet weak var customTip: UILabel!//label for tip in the slider
    @IBOutlet weak var customTip2: UILabel!//label for tip in the total
    @IBOutlet weak var customTipResult: UILabel! //display result
    @IBOutlet weak var customTipTotal: UILabel!//display the total amount for custom
    @IBOutlet weak var tipDefault: UILabel!//display the default 15% tip
    @IBOutlet weak var defaultTotal: UILabel!//display the total for the default 15%
    @IBOutlet weak var amount: UITextField! //amount from textfield

  
    @IBAction func customTipPercentage(_ sender: UISlider) {
         defaultComputation();
         customTip.text = String(format: "%i",Int(sender.value)) + "%"//display the tip% beside slider
         customTip2.text = String(format: "%i",Int(sender.value)) + "%"//display the tip% in total
         amountVar = Double(amount.text!)!//cast the amount from textfield to double
         customTipAmount = Double (sender.value)//cast the tip % to double
         customTipVar = amountVar * customTipAmount / 100;//computation for custom tip
         customTipResult.text = "$ " + String(format: "%.2f", customTipVar);//display result for tip
         customTotal = amountVar + customTipVar;// computes the total amount for custom
         customTipTotal.text = "$ " + String(format: "%.2f", customTotal); //display total in the custom

        
    
    }
    func defaultComputation() {
        amountVar = Double(amount.text!)!//cast the amount from textfield to double
        defaultTipVar = amountVar * 0.15; //get the tip amount of 15%
        tipDefault.text = "$ " + String(format: "%.2f", defaultTipVar); //display the default tip 15%
        defaultTotalVar = amountVar + defaultTipVar;//computes the total for default
        defaultTotal.text = "$ " + String(format: "%.2f", defaultTotalVar);//display the default total
    }
    //for startup just to display but still changeable
    func initiallizeCustom() {
        amountVar = Double(amount.text!)!//cast the amount from textfield to double
        customTipVar = amountVar * 0.18;//computation for custom tip
        customTipResult.text = "$ " + String(format: "%.2f", customTipVar);//display result for tip
        customTotal = amountVar + customTipVar;// computes the total amount for custom
        customTipTotal.text = "$ " + String(format: "%.2f", customTotal); //display total in the custom
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultComputation();
        initiallizeCustom();
    }


}

