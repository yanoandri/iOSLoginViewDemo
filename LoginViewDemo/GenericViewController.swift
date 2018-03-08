//
//  GenericViewController.swift
//  LoginViewDemo
//
//  Created by Developer 1 on 06/03/18.
//  Copyright © 2018 DyCode. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var scrollView_bottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func keyboardHandler(_ sender: Notification){
        if let userInfo = sender.userInfo{
            if let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue{
                let height = UIScreen.main.bounds.height - keyboardFrame.cgRectValue.minY
                
                var duration = 0.25
                if let animationDuration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Double{
                    duration = animationDuration
                }
                
                if let scrollView_bottomConstraint = scrollView_bottomConstraint{
                    scrollView_bottomConstraint.constant = height
                    UIView.animate(withDuration: duration, animations: {
                        self.view.layoutIfNeeded()
                    })
                }
            }
        }
    }
}
