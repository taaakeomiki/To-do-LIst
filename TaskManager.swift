//
//  TaskManager.swift
//  My Task LIst
//
//  Created by 三木健生 on 2017/04/11.
//  Copyright © 2017年 mikitakeo. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "UN-Described"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
    
    
}
