//
//  ExtUIViewController.swift
//  LoginViewDemo
//
//  Created by Developer 1 on 06/03/18.
//  Copyright © 2018 DyCode. All rights reserved.
//

import UIKit

extension UIViewController{
    func  showForgotViewController(email: String?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "storyboard_ForgotPassword") as! ForgotViewController
        viewController.email = email
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func  presentForgotViewController(email: String?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "storyboard_ForgotPassword") as! ForgotViewController
        viewController.email = email
        let navigationController2 = UINavigationController(rootViewController: viewController)
        self.present(navigationController2, animated: true, completion: nil)
    }
}
