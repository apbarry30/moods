//
//  moodAnalysisFace.swift
//  mood
//
//  Created by Hanna Wollin on 5/3/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import UIKit

class moodAnalysisFace: UIViewController {

    @IBOutlet var displayFace:UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    

    //retrieving data
    @IBAction func updateDay(){
        if var dispFace = UserDefaults.standard.string(forKey:"moodFace"){
               displayFace.image=UIImage(named:dispFace)
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
}
