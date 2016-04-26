//
//  DetailedViewController.swift
//  Final project - 2
//
//  Created by Student on 4/14/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    var info = Day()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ProfileViewController
        dvc.info = self.info
    }
    @IBAction func onButtonTappedSave(sender: AnyObject) {
        
    }
    
}
