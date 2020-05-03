//
//  moodEntry.swift
//  mood
//
//  Created by Amanda Barry on 4/27/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//

import Foundation
import UIKit


class moodEntry: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, ViewControllerBDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

     //anaysis

       

    //slider
      @IBOutlet var slider:UISlider!
      var currentValue: Int = 50
      @IBOutlet var reminders: UITextField!

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
            let pickedDay = String(weekArray[row])
        
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
    @IBOutlet weak var textField: UITextField!
           
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if let viewControllerB = segue.destination as? AnaysisViewController {
               viewControllerB.text = textField.text
               viewControllerB.delegate = self
           }
       }
       
       func textChanged(text: String?) {
           textField.text = text
       }
    
    
    //
    //        let indexPath = IndexPath(row: listItems.count - 1, section: 0)
    //        tableView.insertRows(at: [indexPath], with: .automatic)
        }



