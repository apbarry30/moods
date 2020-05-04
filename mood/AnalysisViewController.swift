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
    @IBOutlet var meanLabel: UILabel!

    @IBOutlet var sunday: UILabel!
    @IBOutlet var sundayDay: UITextView!
    @IBOutlet var monday: UILabel!
    @IBOutlet var mondayDay: UITextView!

    @IBOutlet var tuesday: UILabel!
    @IBOutlet var tuesdayDay: UITextView!

    @IBOutlet var wednesday: UILabel!
    @IBOutlet var wednesdayDay: UITextView!


    @IBOutlet var thursday: UILabel!
    @IBOutlet var thursdayDay: UITextView!

    @IBOutlet var friday: UILabel!
    @IBOutlet var fridayDay: UITextView!

    @IBOutlet var saturday: UILabel!
    @IBOutlet var saturdayDay: UITextView!

    @IBOutlet var average:UILabel!
    var days:[String] = [""]
    var Scale:[String] = [""]
    var reminders:[String] = [""]
    var curday: String?
   
    var MmoodDay=""
    var suInt:Int?
    var MInt:Int?
    var TInt:Int?
    var WInt:Int?
    var ThInt:Int?
    var FInt:Int?
    var SInt:Int?
    var num=0
    var den=0
    var avg=0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = UserDefaults.standard.string(forKey: "name"){
            reminderLabel.text = "\(name)!"
            reminders.append(name)
            print(reminders)
//            reminderLabel.text = reminders
              }
        
        if let moodDay = UserDefaults.standard.string(forKey:"mood") {
//            dayofWeek.text = "\(moodDay)"
            curday = moodDay
            days.append(moodDay)
            print(moodDay)
               }
////
//        if let moodScale = UserDefaults.standard.string(forKey:"number") {
//                   feelingScale.text = "My Mood Score is: \(moodScale)"
//            Scale.append(moodScale)
//                      }
//        if let moodmean = UserDefaults.standard.string(forKey:"mean") {
//        feelingScale.text = "Your Average Mood is: \(moodmean)"
//           }
        
        
        let SumoodDay = UserDefaults.standard.string(forKey:"Sumood")
        let SumoodScale = UserDefaults.standard.string(forKey:"Sunumber")
        if (SumoodDay == "Sunday"){
                sundayDay.text = "Entry for \(SumoodDay ?? "")"
                sunday.text = "My Mood Score is: \(SumoodScale ?? "")"}
        let MmoodDay = UserDefaults.standard.string(forKey:"Mmood")
        let MmoodScale = UserDefaults.standard.string(forKey:"Mnumber")
        if (MmoodDay == "Monday"){
                mondayDay.text = "Entry for \(MmoodDay ?? "")"
                monday.text = "My Mood Score is: \(MmoodScale ?? "")"}
        let TmoodDay = UserDefaults.standard.string(forKey:"Tmood")
        let TmoodScale = UserDefaults.standard.string(forKey:"Tnumber")
        if (TmoodDay == "Tuesday"){
                tuesdayDay.text = "Entry for \(TmoodDay ?? "")"
                tuesday.text = "My Mood Score is: \(TmoodScale ?? "")"}
        let WmoodDay = UserDefaults.standard.string(forKey:"Wmood")
        let WmoodScale = UserDefaults.standard.string(forKey:"Wnumber")
        if (WmoodDay == "Wednesday"){
                wednesdayDay.text = "Entry for \(WmoodDay ?? "")"
                wednesday.text = "My Mood Score is: \(WmoodScale ?? "")"}
        let ThmoodDay = UserDefaults.standard.string(forKey:"Thmood")
        let ThmoodScale = UserDefaults.standard.string(forKey:"Thnumber")
        if (ThmoodDay == "Thursday"){
                thursdayDay.text = "Entry for \(ThmoodDay ?? "")"
                thursday.text = "My Mood Score is: \(ThmoodScale ?? "")"}
        let FmoodDay = UserDefaults.standard.string(forKey:"Fmood")
        let FmoodScale = UserDefaults.standard.string(forKey:"Fnumber")
        if (FmoodDay == "Friday"){
                fridayDay.text = "Entry for \(FmoodDay ?? "")"
                friday.text = "My Mood Score is: \(FmoodScale ?? "")"}
        let SmoodDay = UserDefaults.standard.string(forKey:"Smood")
        let SmoodScale = UserDefaults.standard.string(forKey:"Snumber")
        if (SmoodDay == "Saturday"){
                saturdayDay.text = "Entry for \(SmoodDay ?? "")"
                saturday.text = "My Mood Score is: \(SmoodScale ?? "")"}
        
        
        
        
             if (SumoodScale != nil){
                suInt=Int(SumoodScale!)
                num=num+suInt!
                den=den+1
             }
            if (MmoodScale != nil){
                MInt=Int(MmoodScale!)
                num=num+MInt!
                den=den+1
            }
        if (TmoodScale != nil){
            TInt=Int(TmoodScale!)
            num=num+TInt!
            den=den+1
         }
        if (WmoodScale != nil){
            WInt=Int(WmoodScale!)
            num=num+WInt!
            den=den+1
        }
        if (ThmoodScale != nil){
                   ThInt=Int(ThmoodScale!)
                   num=num+ThInt!
                   den=den+1
               }
           if (FmoodScale != nil){
               FInt=Int(FmoodScale!)
               num=num+FInt!
               den=den+1
            }
           if (SmoodScale != nil){
               SInt=Int(SmoodScale!)
               num=num+SInt!
               den=den+1
           }
        
        
            avg=num/den
        average.text=String(avg)
        
        
        
    }
    
    
     
        
        
        
        
        
        
        
        
        
        /*
                if curday == "Sunday" {
                let moodDay = UserDefaults.standard.string(forKey:"mood")
                let moodScale = UserDefaults.standard.string(forKey:"number")
                    sundayDay.text = "Entry for \(moodDay ?? "")"
                    sunday.text = "My Mood Score is: \(moodScale ?? "")"
                
            }
        
              if curday == "Monday" {
                 let moodDay = UserDefaults.standard.string(forKey:"mood")
                 let moodScale = UserDefaults.standard.string(forKey:"number")
                     mondayDay.text = "Entry for \(moodDay ?? "")"
                     monday.text = "My Mood Score is: \(moodScale ?? "")"
                 
             }
        if curday == "Tuesday" {
                    let moodDay = UserDefaults.standard.string(forKey:"mood")
                    let moodScale = UserDefaults.standard.string(forKey:"number")
                        tuesdayDay.text = "Entry for \(moodDay ?? "")"
                        tuesday.text = "My Mood Score is: \(moodScale ?? "")"
                    
                }
        
        if curday == "Wednesday" {
                    let moodDay = UserDefaults.standard.string(forKey:"mood")
                    let moodScale = UserDefaults.standard.string(forKey:"number")
                        wednesdayDay.text = "Entry for \(moodDay ?? "")"
                        wednesday.text = "My Mood Score is: \(moodScale ?? "")"
                    
                }
        if curday == "Thursday" {
                    let moodDay = UserDefaults.standard.string(forKey:"mood")
                    let moodScale = UserDefaults.standard.string(forKey:"number")
                        thursdayDay.text = "Entry for \(moodDay ?? "")"
                        thursday.text = "My Mood Score is: \(moodScale ?? "")"
                    
                }
    if curday == "Friday" {
                let moodDay = UserDefaults.standard.string(forKey:"mood")
                let moodScale = UserDefaults.standard.string(forKey:"number")
                    fridayDay.text = "Entry for \(moodDay ?? "")"
                    friday.text = "My Mood Score is: \(moodScale ?? "")"
                
            }
        if curday == "Saturday" {
                    let moodDay = UserDefaults.standard.string(forKey:"mood")
                    let moodScale = UserDefaults.standard.string(forKey:"number")
                        saturdayDay.text = "Entry for \(moodDay ?? "")"
                        saturday.text = "My Mood Score is: \(moodScale ?? "")"
                    
                }
 
 */
 
 
 
 
 
 
 
 
 
//    let moodNum = UserDefaults.standard.string(forKey:"number")
//    sundayDay.text = "Mood Scale" \(moodNum)"
//

        
    
        
//        if dayofWeek.text == "Monday" {
//            monday.text = "\(moodScale)"
//              }
//        if dayofWeek.text == "Tuesday" {
//            tuesday.text = "\(moodScale)"
//              }
//        if dayofWeek.text == "Wednesday" {
//            wednesday.text = "\(moodScale)"
//              }
//        if dayofWeek.text == "Thursday" {
//            thurday.text = "\(moodScale)"
//              }
//        if dayofWeek.text == "Friday" {
//            friday.text = "\(moodScale)"
//              }
//        if dayofWeek.text == "Saturday" {
//            Saturday.text = "\(moodScale)"
//                     }
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
