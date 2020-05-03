//
//  moodEntry.swift
//  mood
//
//  Created by Amanda Barry on 4/27/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import Foundation
import UIKit


class moodEntry: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  @IBOutlet var reminders: UITextField!
    
    //vars for passing face
    var face:String?
    var moodFace:String?
    
    //setting face for each button
    @IBAction func madPressed(){
        face="mad.png"
    }
    @IBAction func happy1Pressed(){
        face="happy1.png"
    }
    
    //saving data to UserDefault
    @IBAction func submit(){
        if var moodFace=face{
            UserDefaults.standard.set(moodFace, forKey: "moodFace")
        }
    }
}
