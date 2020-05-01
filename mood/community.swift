//
//  community.swift
//  mood
//
//  Created by Hanna Wollin on 4/30/20.
//  Copyright © 2020 Hanna Wollin. All rights reserved.
//


import UIKit

class community: UIViewController {
    
    @IBOutlet var messageText:UITextField!
    @IBOutlet var messageBubble:UILabel!
    @IBOutlet var responseBubble:UILabel!
    @IBOutlet var warningLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture=UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
  /*  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
          view.endEditing(true)
          super.touchesBegan(touches, with: event)
      }*/
    @objc func dismissKeyboard(){
        messageText.resignFirstResponder()
    }
    @objc func keyboardWillShow(Notification:NSNotification){
        print(self.view.frame.origin.y)
        if let keyboardSize=(Notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]as? NSValue)?.cgRectValue{
            if self.view.frame.origin.y==0{
                self.view.frame.origin.y -= keyboardSize.height-100
            }
        }
        print(self.view.frame.origin.y)
    }
    @objc func keyboardWillHide(Notification:NSNotification){
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y = 0
        }
    }
    
    
    
    
    @IBAction func sendMessage(){
        if (messageText.text != ""){
            messageBubble?.layer.cornerRadius = 15
            messageBubble?.layer.masksToBounds = true
            messageBubble.backgroundColor = .systemTeal
            messageBubble.text=messageText.text
            
            
         warningLabel.text="In case of emergency call 911 or the Suicide Prevention Hotline 1-800-273-8255."
            //I want a delay before the response pops up but I can't figure out how
            
            responseBubble?.layer.cornerRadius = 15
            responseBubble?.layer.masksToBounds = true
            responseBubble.backgroundColor = .lightGray
            responseBubble.text="I'm sorry to hear that. Would you like to share more about what happened?"
           

          
        }
    }
}
/*

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

 }*/
