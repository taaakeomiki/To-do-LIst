//
//  SecondViewController.swift
//  My Task LIst
//
//  Created by 三木健生 on 2017/04/11.
//  Copyright © 2017年 mikitakeo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask_Click(sender: UIButton){
        //print("the button was ckicled.")
        taskMgr.addTask(name: textTask.text!, desc: textDesc.text!);
        self.view.endEditing(true)
        textTask.text = ""
        textDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
        
    }
    
    
    
    
    
    //override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!){
      //  self.view.endEditing(true)
    //}
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }

}

