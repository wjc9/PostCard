//
//  ViewController.swift
//  PostCard
//
//  Created by Rex on 2014-11-22.
//  Copyright (c) 2014 Rex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        messageLabel.textColor = UIColor.redColor();
        
        
        enterMessage.text = ""
        enterName.text = ""
        enterMessage.resignFirstResponder();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    

}

