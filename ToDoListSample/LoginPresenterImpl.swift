//
//  LoginPresenter.swift
//  ToDoListSample
//
//  Created by ykro on 8/12/16.
//  Copyright © 2016 Bit & Ik'. All rights reserved.
//

import Foundation

class LoginPresenterImpl: LoginPresenter {    
    var view: LoginView
    var model: LoginModel
    var appRouter: LoginRouter

    required init(view: LoginView, model: LoginModel, appRouter: LoginRouter) {
        self.view = view
        self.model = model
        self.appRouter = appRouter
    }
    
    func submit(email: String, password: String){
        view.disableInputs()
        
        let completionHandler = { (error: NSError?) in
            guard let error = error else {
                self.view.enableInputs()    
                self.appRouter.didLogin()
                return
            }
            self.view.enableInputs()
            self.view.failedLogin(error.localizedDescription)
        }
        model.login(email, password: password, completionHandler: completionHandler)
    }    
}