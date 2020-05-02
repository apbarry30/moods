//
//  moodEntry.swift
//  mood
//
//  Created by Amanda Barry on 4/27/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import Foundation
import UIKit


class moodEntry: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

     //graph
    
       

    @IBOutlet var textField: UITextField!
    //slider
      @IBOutlet var slider:UISlider!
      var currentValue: Int = 50
      @IBOutlet var reminders: UITextField!
        var happyface2: UIImage!
        var happyface1: UIImage!
    //picker variables
        var weekArray:[String] = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        var curDay: String?
    //slider variables
    @IBOutlet var outputMoodScale: UILabel!

    
    
    
//protocol for picker view;
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
             if (component == 0){
                 curDay = weekArray[row]
                print(curDay!)
                //user just selected their day of the week
             }
         }
         func numberOfComponents(in pickerView: UIPickerView) -> Int {
             return 1
         }
         
         //protocol for data source
         func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            
                 return weekArray.count
             
         }
         
         //protocol for delegate
         func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return String(weekArray[row])
            
         }
    
    
    //slidercode
    @IBAction func sliderMoved(slider:UISlider){
        currentValue = lroundf(slider.value)
        print("the value of the slider is now: \(slider.value)")
        outputMoodScale.text = String(currentValue)
        
    }
    
      //reset when done

   
    @IBAction func enter(_ segue: UIStoryboardSegue) {
            currentValue = lroundf(slider.value)
            print(currentValue)
            performSegue(withIdentifier: "segue", sender: self)
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let barController = segue.destination as! BarChartViewController
        barController.myDoube = currentValue
        print(currentValue)
//        barController.myString = textField.text ?? "enter a value"
       }


}
