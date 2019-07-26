//
//  ViewController.swift
//  emojinalproject
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     let flags = ["🇰🇭" : "Cambodia!", "🇯🇲" : "Jamaica!", "🇬🇱" : "Greenland!", "🇺🇬" : "Uganda!"]
    
    
    @IBAction func showMessage(sender: UIButton) {
        //the new screen needs to pop up
        // title should say : the flag is ....
        // can say did u guess correct
        let selectedFlag = sender.titleLabel?.text
   
        
        let alertController = UIAlertController(title: "This flag is \(flags[selectedFlag!]!)" , message: "Did you guess correctly?" , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil ))
    
        present(alertController, animated: true , completion: nil )
    }
    

    
}

