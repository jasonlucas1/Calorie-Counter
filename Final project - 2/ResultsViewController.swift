//
//  ResultsViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 5/15/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var breakfastFoodCalories = 0
    var lunchCalories = 0
    var dinnerCalories = 0
    var calorieGoal = 0
    
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var DailyResultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        DailyResultsLabel.text! = "\(breakfastFoodCalories + lunchCalories + dinnerCalories) / \(calorieGoal)"
        setLabel()
    }
    func setLabel() {
        if breakfastFoodCalories + lunchCalories + dinnerCalories < calorieGoal {
            resultsLabel.text! = "You have not reached your goal"
        }
        else{
            resultsLabel.text! = "You have reached your goal"
        }
    }
}
