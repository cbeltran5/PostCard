//
//  ViewController.swift
//  PostCard_proj
//
//  Created by Carlos Beltran on 9/22/14.
//  Copyright (c) 2014 Carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var nameField: UITextField!
    
    @IBOutlet var messageField: UITextField!
    
    @IBOutlet weak var sendButtonConfirm: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButton(sender: UIButton) {
        //sneds message that button was pressed
        messageLabel.hidden = 0
        messageLabel.text = messageField.text
        messageField.text = ""
        
        messageField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        
        sendButtonConfirm.setTitle("Sent!", forState: UIControlState.Normal)
    }
    

}

