//
//  ViewController.swift
//  Baby_Swift
//
//  Created by kimsung jun on 2015. 1. 8..
//  Copyright (c) 2015년 kimsung jun. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBAction func btn_next(sender: UIButton) {
        
        var path = NSBundle.mainBundle().pathForResource("pong", ofType: "wav")
        var url = NSURL.fileURLWithPath(path!)
        var soundID:SystemSoundID = 0
        AudioServicesCreateSystemSoundID(url, &soundID)
        AudioServicesPlayAlertSound(soundID)
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

