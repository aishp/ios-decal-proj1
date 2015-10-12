//
//  AddTaskViewController.swift
//  ToDo App
//
//  Created by Aishwarya on 10/11/15.
//  Copyright © 2015 Aishwarya. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var taskDesc: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func createClicked(sender: AnyObject) {
       // print("Create Clicked")
        if(taskName.text != "")
        {
         taskMgr.addTask(taskName.text!, desc: taskDesc.text!)
        }
        taskName.text = ""
        taskDesc.text = ""
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
   
}
