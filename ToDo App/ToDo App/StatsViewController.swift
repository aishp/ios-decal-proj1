//
//  StatsViewController.swift
//  ToDo App
//
//  Created by Aishwarya on 10/11/15.
//  Copyright © 2015 Aishwarya. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        var counter = 0
        for var i = 0; i<completedTasks.tasks.count; i++
        {
            if((completedTasks.tasks[i].timestamp + 86400) > NSDate().timeIntervalSince1970)
            {
                counter++;
            }
        }
        countLabel.text = String(counter)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
