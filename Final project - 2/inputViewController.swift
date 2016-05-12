//
//  inputViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 5/11/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class inputViewController: UIViewController {
    var data = Data()
    var food = ""
    var calories = ""
    
    
    @IBOutlet weak var dailyCalorieIntakeTextField: UITextField!
    @IBOutlet weak var breakfastFoodTextField: UITextField!
    @IBOutlet weak var breakfastCalorieTextField: UITextField!
    @IBOutlet weak var lunchFoodTextField: UITextField!
    @IBOutlet weak var lunchCalorieTextField: UITextField!
    @IBOutlet weak var dinnerFoodTextField: UITextField!
    @IBOutlet weak var dinnerCalorieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    }
    
    @IBAction func breakfastOnTappedButtonSaved(sender: AnyObject) {
        food = breakfastFoodTextField.text!
        calories = breakfastCalorieTextField.text!

    }
    
    @IBAction func lunchOnTappedButtonSaved(sender: AnyObject) {
        
        data.lunchFood = lunchFoodTextField.text!
        data.lunchCalories = lunchCalorieTextField.text!
        
    }
    
    @IBAction func dinnerOnTappedButtonSaved(sender: AnyObject) {
        
        data.dinnerFood = dinnerFoodTextField.text!
        data.dinnerCalories = dinnerCalorieTextField.text!
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let dvc = segue.destinationViewController as! DetailedViewController
        dvc.foodText = food
        dvc.caloriesText = calories
    }
    
}
