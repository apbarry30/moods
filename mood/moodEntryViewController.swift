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
     var curMood: String?

        
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
                weekItems.append(String(weekArray[row]))
                return String(weekArray[row])
             }
        
        
        //slidercode
        @IBAction func sliderMoved(slider:UISlider){
            currentValue = lroundf(slider.value)
            print("the value of the slider is now: \(slider.value)")
            curMood = String(currentValue)
            moodNumbers.append(curMood ?? "0")
            outputMoodScale.text = String(currentValue)
//            moodNumber.append(currentValue)
            
        }
//anaysis
        var weekItems:[String] = []
        var moodNumbers:[String] = []
          //reset when done

        @IBAction func reset(){
            outputMoodScale.text = "50"
            slider.value = 50
            reminders.text = " "
            picker.reloadAllComponents()
                print(moodNumbers)
                print(weekItems)
                print(curMood)
        }
        
        //analysis
               
        @IBOutlet var reminders: UITextField!

        @IBAction func continuepressed(){
            if let name = reminders.text{
                UserDefaults.standard.set(name,forKey:"name")
            }
            if let moodDay = curDay {
                UserDefaults.standard.set(moodDay,forKey:"mood")
            }
            if let feelScale = curMood {
                UserDefaults.standard.set(feelScale,forKey:"number")
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
