//
//  Data.swift
//  Final project - 2
//
//  Created by Jason Lucas on 5/11/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class Data: NSObject {
    
    var breakfastFood = ""
    var breakfastCalories = ""
    var lunchFood = ""
    var lunchCalories = ""
    var dinnerFood = ""
    var dinnerCalories = ""
    
    convenience init(food: String, calories: String) {
        self.init()
        self.breakfastFood = food
        self.breakfastCalories = calories
    }
    
    
}
