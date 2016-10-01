//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Morgan Atwood on 1/18/16.
//  Copyright © 2016 Morganic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guessButton(sender: AnyObject) {
        
        let randomNumber = String(arc4random_uniform(6))
        
        
        if randomNumber == guess.text {
            
            resultLabel.text = "You're right!"
            
        } else {
            
            resultLabel.text = "Wrong! it was a " + randomNumber
        }
        
       
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

