//
//  moodAnaysis.swift
//  mood
//
//  Created by Amanda Barry on 5/3/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import UIKit

class moodAnaysis: UIViewController {
    
    @IBOutlet var welcomeLabel:UILabel!
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           if let name = UserDefaults.standard.string(forKey: "name"){
               welcomeLabel.text = "Welcome, \(name)!"
           }
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
