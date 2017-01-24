//
//  ViewController.swift
//  Miraclepill
//
//  Created by ChengLog G on 24/1/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var Statepicker: UIPickerView!
    
    @IBOutlet weak var StatePickbutton: UIButton!
    
    let states = ["Alaska", "Alabama","California","Maine","New york"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Statepicker.dataSource = self
        Statepicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateBtnpress(_ sender: Any) {
        Statepicker.isHidden = false
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       StatePickbutton.setTitle(states[row], for: UIControlState.normal)
        Statepicker.isHidden = true
    }
}

