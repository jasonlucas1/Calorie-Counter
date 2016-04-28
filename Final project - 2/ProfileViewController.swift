//
//  ProfileViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 4/20/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    var info = Day()
    
    var recievedString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressLabel.text! = (recievedString)
        
        
    }
    
}