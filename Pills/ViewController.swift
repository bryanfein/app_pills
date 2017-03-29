//
//  ViewController.swift
//  Pills
//
//  Created by Bryan Fein on 3/28/17.
//  Copyright © 2017 Bryan Fein. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var statePicker: UIPickerView!
    @IBOutlet var statePickerBtn: UIButton!
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    
    @IBOutlet var success: UIImageView!
    
    
    let states = ["Alabama", "Utah", "New Jersey", "New York", "California"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        //        self.view.backgroundColor = UIColor.purple
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        textField1.isHidden = true
        textField2.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count //for how many elements we have in the array determins how many rows we have
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        textField1.isHidden = false
        textField2.isHidden = false
        
    }
    @IBAction func buyNowBtn(_ sender: Any) {
        
        for view in self.view.subviews{
            view.isHidden = true
        }
        
        success.isHidden = false
        
    }

}







