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
    @IBOutlet weak var messageBubble:UILabel!
    @IBOutlet weak var responseBubble:UILabel!
    @IBOutlet weak var warningLabel:UILabel!
    @IBOutlet weak var typing:UILabel!
    @IBOutlet weak var sendB:UIButton!
    
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
  //  func buttonTapped(){
  //    messageText.resignFirstResponder()
  //  }

    
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
        messageText.resignFirstResponder()
        if (messageText.text != ""){
            let words=messageText.text
            UIView.animate(withDuration: 0.5, delay: 0.50, options: UIView.AnimationOptions.curveEaseOut, animations: {
                       self.messageBubble.alpha = 0.0},
                           completion: {(finished: Bool) -> Void in
                        self.messageBubble?.layer.cornerRadius = 15
                        self.messageBubble?.layer.masksToBounds = true
                        self.messageBubble.backgroundColor = .systemTeal
                        self.messageBubble.text=words
                UIView.animate(withDuration: 0.15, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
                        self.messageBubble.alpha = 1.0},
                               completion: nil)})
        
        UIView.animate(withDuration: 0, delay: 0.50, options: UIView.AnimationOptions.curveEaseOut, animations: {
            self.warningLabel.alpha = 0.0},
                       completion: {(finished: Bool) -> Void in
                        self.warningLabel.text="In case of emergency call 911 or the Suicide Prevention Hotline 1-800-273-8255."
                        UIView.animate(withDuration: 0.25, delay: 1.50, options: UIView.AnimationOptions.curveEaseIn, animations: {
                        self.warningLabel.alpha = 1.0},
                           completion: nil)})

          /*  UIView.animate(withDuration: 0.5, delay: 2.50, options: UIView.AnimationOptions.curveEaseOut, animations: {
                           self.typing.alpha = 0.0},
                                      completion: {(finished: Bool) -> Void in
                                       self.typing?.layer.cornerRadius = 15
                                       self.typing?.layer.masksToBounds = true
                                       self.typing.backgroundColor = .lightGray
                                       self.typing.text="..."
                                       UIView.animate(withDuration: 0.5, delay: 1.50, options: UIView.AnimationOptions.curveEaseIn, animations: {
                                       self.typing.alpha = 1.0},
                                          completion: nil)

            })*/ //fade in dots

        
       /* UIView.animate(withDuration: 0.5, delay: 4.50, options: UIView.AnimationOptions.curveEaseOut, animations: {
        self.typing.alpha = 0.0},
                   completion: nil)*/ //trying to fade dots back out
    
        UIView.animate(withDuration: 0.5, delay: 4.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
                self.responseBubble.alpha = 0.0},
                           completion: {(finished: Bool) -> Void in
                            self.responseBubble?.layer.cornerRadius = 15
                            self.responseBubble?.layer.masksToBounds = true
                            self.responseBubble.backgroundColor = .lightGray
                            self.responseBubble.text="I'm sorry to hear that. Would you like to share more about what happened?"
                            UIView.animate(withDuration: 0.15, delay: 1.50, options: UIView.AnimationOptions.curveEaseIn, animations: {
                            self.responseBubble.alpha = 1.0},
                               completion: nil)})
    }//end of sendMessage func
        messageText.text=""
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

 

