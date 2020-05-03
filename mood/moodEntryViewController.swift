//
//  moodEntryViewController.swift
//  mood
//
//  Created by Amanda Barry on 5/3/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import UIKit

class moodEntryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var slider:UISlider!
          var currentValue: Int = 50

            var weekArray:[String] = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
            var curDay: String?
        //slider variables
        @IBOutlet var outputMoodScale: UILabel!

        
 @IBOutlet var picker: UIPickerView!
        
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
                var pickedDay = String(weekArray[row])
                print(pickedDay)
            
             }
        
        
        //slidercode
        @IBAction func sliderMoved(slider:UISlider){
            currentValue = lroundf(slider.value)
            print("the value of the slider is now: \(slider.value)")
            outputMoodScale.text = String(currentValue)
            moodNumber.append(currentValue)
            
        }

        var weekItems:[String] = [""]
        var moodNumber:[Int] = []
          //reset when done

        @IBAction func reset(){
                         print(moodNumber)
                print(weekItems)
            
        }
        
        //analysis
               
        @IBOutlet var reminders: UITextField!

        @IBAction func continuepressed(){
            if let name = reminders.text{
                UserDefaults.standard.set(name,forKey:"name")
            }
        }
        

    override func viewDidLoad() {
        super.viewDidLoad()

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
