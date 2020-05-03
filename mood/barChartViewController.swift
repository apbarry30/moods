//
//  BarChartViewController.swift
//  mood
//
//  Created by Amanda Barry on 5/2/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import UIKit

class BarChartViewController: UIViewController {
    var barHeight = 0.0

    var myString = String()
    public var myDoube = Int()
        
    @IBOutlet var label: UILabel!
    @IBOutlet var barChartView: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChartView.barHeight = Double(myDoube)
        
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
