//
//  DetailedViewController.swift
//  Final project - 2
//
//  Created by Student on 4/14/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    var info = Day()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        caloriesTextField.delegate = self //set delegate to textfile
    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool {   //delegate method
        textField.resignFirstResponder()
        return true
    }
    
}
