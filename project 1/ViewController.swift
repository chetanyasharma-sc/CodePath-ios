//
//  ViewController.swift
//  project 1
//
//  Created by chetanya sharma on 8/29/21.
//  Copyright © 2021 chetanya sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var billamounttextfield: UITextField!
    
    @IBOutlet weak var tipamountlabel: UILabel!
    
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    
    @IBOutlet weak var totallabel: UILabel!
    
    
   
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount  from text field input .
        let bill   = Double(billamounttextfield.text!) ?? 0
        
        // get total tip by multiplying tip * tipPercentage.
        let tipPercentage = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentage [tipcontrol.selectedSegmentIndex]
        
        let total = bill + tip
        
        // update tip amount label
        
        tipamountlabel.text = String(format: "$%.2f",tip)
        totallabel.text = String(format: "$%.2f",total )
    }
    
}

