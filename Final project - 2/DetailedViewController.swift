//
//  DetailedViewController.swift
//  Final project - 2
//
//  Created by Student on 4/14/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController, UITextFieldDelegate {
    var data = Data()
    var foodText = ""
    var caloriesText = ""
    
    
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var amountOfCalories: UILabel!
    @IBOutlet weak var dailyConstructionLabel: UILabel!
    @IBOutlet weak var foodResultsLabel: UILabel!
    @IBOutlet weak var dailyConsumptionResultsLabel: UILabel!
    @IBOutlet weak var amountOfCaloriesResultsLabel: UILabel!
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodResultsLabel.text! = foodText
        amountOfCaloriesResultsLabel.text! = caloriesText
        
    }
    
}
