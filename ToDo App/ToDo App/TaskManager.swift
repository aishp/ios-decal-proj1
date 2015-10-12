//
//  TaskManager.swift
//  ToDo App
//
//  Created by Aishwarya on 10/11/15.
//  Copyright © 2015 Aishwarya. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()
struct task
{
    var name = "Un-Named"
    var desc = "Un-Described"
    var timestamp = NSDate().timeIntervalSince1970
    var finished = false
}

class TaskManager: NSObject
{
    var tasks = [task]()
    func addTask(name: String, desc: String)
    {
        let curr_time = NSDate().timeIntervalSince1970
        tasks.append(task(name: name, desc: desc, timestamp: curr_time, finished: false))
    }
}

