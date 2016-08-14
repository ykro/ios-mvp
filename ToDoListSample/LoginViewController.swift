//
//  ViewController.swift
//  ToDoListSample
//
//  Created by ykro on 8/12/16.
//  Copyright © 2016 Bit & Ik'. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginView {
    var presenter: LoginPresenter? 
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func didTapSubmit(sender: AnyObject) {
        presenter?.submit(txtEmail.text!, password: txtPassword.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func enableInputs(){}
    func disableInputs(){}
    func failedLogin(error: String){}
}

