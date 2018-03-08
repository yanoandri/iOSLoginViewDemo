//
//  ForgotViewController.swift
//  LoginViewDemo
//
//  Created by Developer 1 on 06/03/18.
//  Copyright © 2018 DyCode. All rights reserved.
//

import UIKit

class ForgotViewController: UIViewController {

    @IBOutlet weak var text_resetPassword: UITextField!
    var email: String?
    
    @IBAction func backButtonCancelAction(_ sender: Any) {
        if navigationController?.viewControllers.first == self{
            self.dismiss(animated: true, completion: nil)
        }else{
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text_resetPassword.text = email
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

