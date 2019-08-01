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
    var customMessages = [
        "Cambodia!": ["Did you know that this is the only flag in the world featuring a building?", "Cambodia's new year is in April!"],
        "Jamaica!" : [ "Jamaica has 8 native snake species, with none of them being venomous" , "Jamiaca is home to the fastest fastest runners on earth"],
        "Greenland!" : ["Around 80% of its land is covered by an icecap!", "Its closest European country is Iceland!" ],
        "Uganda!" : ["Bicycles are the main form of transportation", "Home to 11% of the world's bird population!"]
        ]
    
    
    @IBAction func showMessage(sender: UIButton) {
        //the new screen needs to pop up
        // title should say : the flag is ....
        // can say did u guess correct
        let selectedFlag = sender.titleLabel?.text
        var number = Int.random(in: 0 ... 1)
        let flagMessage = customMessages[flags[selectedFlag!]!]![number]
   
        
        let alertController = UIAlertController(title: "This flag is \(flags[selectedFlag!]!)" , message: flagMessage , preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.default, handler: nil ))
    
        present(alertController, animated: true , completion: nil )
    }
    

    
}

