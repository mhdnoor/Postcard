//
//  ViewController.swift
//  Postcard
//
//  Created by mohammed on 10/31/14.
//  Copyright (c) 2014 takefirststep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var NameLable: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a n ib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //I added these lines
    @IBAction func sendMailButtenPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
       
        NameLable.hidden = false
        NameLable.text = enterNameTextField.text
        NameLable.textColor = UIColor.blueColor()
        
        enterNameTextField.resignFirstResponder()
        enterNameTextField.text = ""
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal )
    }

}

