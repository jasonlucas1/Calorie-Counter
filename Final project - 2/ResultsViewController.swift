//
//  ResultsViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 5/15/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    //Variables
    var breakfastFoodCalories = 0
    var lunchCalories = 0
    var dinnerCalories = 0
    var calorieGoal = 0
    
    
    //Labels
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var DailyResultsLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setResults()
        setLabel()
        
    }
    
    
    //Shows your results for the day
    func setResults() {
        DailyResultsLabel.text! = "\(breakfastFoodCalories + lunchCalories + dinnerCalories) / \(calorieGoal)"
    }
    
    //Function for setting the label to say if you have reached your goal or not.
    func setLabel() {
        if breakfastFoodCalories + lunchCalories + dinnerCalories == calorieGoal {
            resultsLabel.text! = "You have matched your goal"
        }
        else{
            if breakfastFoodCalories + lunchCalories + dinnerCalories < calorieGoal {
            resultsLabel.text! = "You have not reached your goal"
            }
            else{
            resultsLabel.text! = "You have exceeded your goal"
            }
        }
    }
}
