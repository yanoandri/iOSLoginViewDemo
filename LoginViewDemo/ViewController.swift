//
//  ViewController.swift
//  LoginViewDemo
//
//  Created by Developer 1 on 06/03/18.
//  Copyright © 2018 DyCode. All rights reserved.
//

import UIKit

class ViewController: GenericViewController {
    @IBOutlet weak var text_username: UITextField!
    @IBOutlet weak var text_password: UITextField!
    @IBOutlet weak var button_login: UIButton!
    @IBOutlet weak var button_forgetPassword: UIButton!
    
    
    @IBAction func tapGestureTapped(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    @IBAction func lupaPasswordAction(_ sender: Any) {
        self.view.endEditing(true)
        showForgotViewController(email: text_username.text)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        self.view.endEditing(true)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.showHomeViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NotificationCenter.default.addObserver(self, selector: #selector(GenericViewController.keyboardHandler(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(GenericViewController.keyboardHandler(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

