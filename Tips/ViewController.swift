//
//  ViewController.swift
//  Tips
//
//  Created by Sita Mulomudi on 12/28/15.
//  Copyright © 2015 TinverseNorm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipPercentages = [0.18, 0.2, 0.22];

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var billField: UITextField!
    @IBOutlet var totalAmount: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
  
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercent = tipPercentages[tipControl.selectedSegmentIndex];
        var billAmount: Double = Double(billField.text!)!;
        print(billAmount);
        var tip = billAmount * tipPercent;
        var total = billAmount + tip;
        
        tipLabel.text = String(format: "$%.2f", tip);
        totalAmount.text = String(format: "$%.2f", total);
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

