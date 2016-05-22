//
//  DailyResultViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 5/15/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class DailyResultViewController: UIViewController {
    
    //Variables
    var breakfastFoodText = ""
    var breakfastCaloriesText = 0
    var lunchFoodText = ""
    var lunchCaloriesText = 0
    var dinnerFoodText = ""
    var dinnerCaloriesText = 0
    var calorieGoalText = 0
    
    //Labels
    @IBOutlet weak var breakFastFoodLabel: UILabel!
    @IBOutlet weak var breakfastCaloriesLabel: UILabel!
    @IBOutlet weak var lunchFoodLabel: UILabel!
    @IBOutlet weak var lunchCaloriesLabel: UILabel!
    @IBOutlet weak var dinnerFoodLabel: UILabel!
    @IBOutlet weak var dinnerCaloriesLabel: UILabel!
    @IBOutlet weak var calorieGoalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    //Set's the label to what the user entered into textfields before
    func setLabels() {
        breakFastFoodLabel.text! = breakfastFoodText
        breakfastCaloriesLabel.text! = String(breakfastCaloriesText)
        lunchFoodLabel.text! = lunchFoodText
        lunchCaloriesLabel.text! = String(lunchCaloriesText)
        dinnerFoodLabel.text! = dinnerFoodText
        dinnerCaloriesLabel.text! = String(dinnerCaloriesText)
        calorieGoalLabel.text! = String(calorieGoalText)
    }
    
    //Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ResultsViewController
        dvc.breakfastFoodCalories = breakfastCaloriesText
        dvc.lunchCalories = lunchCaloriesText
        dvc.dinnerCalories = dinnerCaloriesText
        dvc.calorieGoal = calorieGoalText
    }
}
