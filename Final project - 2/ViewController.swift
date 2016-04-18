//
//  ViewController.swift
//  Final project - 2
//
//  Created by Jason Lucas on 3/31/16.
//  Copyright © 2016 Jason Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    var days = ["Today"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = days[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            days.removeAtIndex(indexPath.row)
            tableView.reloadData()
        }
    }
    @IBAction func onTappedPlusButton(sender: AnyObject) {
        let alert = UIAlertController(title: "Add Date", message: nil, preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Enter Date here"
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        alert.addAction(cancelAction)
        let addAction = UIAlertAction(title: "Add", style: .Default) { (action) in
            let dayTextField = alert.textFields![0] as UITextField
            self.days.append(dayTextField.text!)
            self.tableView.reloadData() }
            alert.addAction(addAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    
    }
   
}