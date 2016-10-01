//
//  SecondViewController.swift
//  To Do List Final
//
//  Created by Morgan Atwood on 1/25/16.
//  Copyright © 2016 Morganic. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var inputItem: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(inputItem.text!)
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
        inputItem.text = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

