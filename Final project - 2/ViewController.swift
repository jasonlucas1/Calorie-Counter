//
//  ViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 3/31/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var breakfastFood = ""
    var breakfastCalories = 0
    var lunchFood = ""
    var lunchCalories = 0
    var dinnerFood = ""
    var dinnerCalories = 0
    var calorieGoal = 0
    
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
    @IBAction func onTappedButtonSaved(sender: AnyObject) {
        breakfastFood = breakfastFoodTextField.text!
        breakfastCalories = Int(breakfastCaloriesTextField.text!)!
        lunchFood = lunchFoodTextField.text!
        lunchCalories = Int(lunchCaloriesTextField.text!)!
        dinnerFood = dinnerFoodTextField.text!
        dinnerCalories = Int(dinnerCaloriesTextField.text!)!
        calorieGoal = Int(calorieGoalTextField.text!)!
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
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
