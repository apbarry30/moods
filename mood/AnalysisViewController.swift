//
//  AnalysisViewController.swift
//  mood
//
//  Created by Amanda Barry on 5/3/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import UIKit

class AnalysisViewController: UIViewController {
    @IBOutlet var reminderLabel:UITextView!
    @IBOutlet var dayofWeek: UITextView!
    @IBOutlet var feelingScale: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = UserDefaults.standard.string(forKey: "name"){
                  reminderLabel.text = "\(name)!"
              }
        
        if let moodDay = UserDefaults.standard.string(forKey:"mood") {
            dayofWeek.text = "\(moodDay)'s Entry"
               }
        
        if let moodScale = UserDefaults.standard.string(forKey:"number") {
                   feelingScale.text = "My Mood Score is: \(moodScale)"
                      }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
