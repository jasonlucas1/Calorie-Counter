//
//  ViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 3/31/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //Variables
    var breakfastFood = ""
    var breakfastCalories = 0
    var lunchFood = ""
    var lunchCalories = 0
    var dinnerFood = ""
    var dinnerCalories = 0
    var calorieGoal = 0
    
    //Textfields
    @IBOutlet weak var breakfastFoodTextField: UITextField!
    @IBOutlet weak var breakfastCaloriesTextField: UITextField!
    @IBOutlet weak var lunchFoodTextField: UITextField!
    @IBOutlet weak var lunchCaloriesTextField: UITextField!
    @IBOutlet weak var dinnerFoodTextField: UITextField!
    @IBOutlet weak var dinnerCaloriesTextField: UITextField!
    @IBOutlet weak var calorieGoalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //Makes sure user entered value into textfield
    func checkLabels() {
        if breakfastFoodTextField.text! == "" || lunchFoodTextField.text! == "" || dinnerFoodTextField.text! == "" || Int(breakfastCaloriesTextField.text!)! == 0 || Int(lunchCaloriesTextField.text!)! == 0 || Int(dinnerCaloriesTextField.text!)! == 0 {
            let alert = UIAlertController(title: "Error", message: "Please enter food or calories in Text Field", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else {
            breakfastFood = breakfastFoodTextField.text!
            breakfastCalories = Int(breakfastCaloriesTextField.text!)!
            lunchFood = lunchFoodTextField.text!
            lunchCalories = Int(lunchCaloriesTextField.text!)!
            dinnerFood = dinnerFoodTextField.text!
            dinnerCalories = Int(dinnerCaloriesTextField.text!)!
            calorieGoal = Int(calorieGoalTextField.text!)!
        }
    }
    
    //Saves the data inputed into textfields
    @IBAction func onTappedButtonSaved(sender: AnyObject) {
        checkLabels()
    }
    
    //ResignFirstResponder with just a tap on the viewcontroller
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    //Beginning Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! DailyResultViewController
        dvc.breakfastFoodText = breakfastFood
        dvc.breakfastCaloriesText = breakfastCalories
        dvc.lunchFoodText = lunchFood
        dvc.lunchCaloriesText = lunchCalories
        dvc.dinnerFoodText = dinnerFood
        dvc.dinnerCaloriesText = dinnerCalories
        dvc.calorieGoalText = calorieGoal
    }
    
}
