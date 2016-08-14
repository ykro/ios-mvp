//
//  AppRouter.swift
//  ToDoListSample
//
//  Created by ykro on 8/12/16.
//  Copyright © 2016 Bit & Ik'. All rights reserved.
//

import UIKit

class AppRouter {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start(){
        showLogin()        
    }
    
    func showLogin(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginView = storyboard.instantiateViewControllerWithIdentifier("login") as? LoginViewController {
            let loginModel = LoginModelImpl()
            let loginPresenter = LoginPresenterImpl(view: loginView, model: loginModel, appRouter: self)
            loginView.presenter = loginPresenter
            window.rootViewController = loginView
        }
    }
    
    func showContent(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let contentView = storyboard.instantiateViewControllerWithIdentifier("content") as? ContentViewController {
            /*
            let loginModel = LoginModelImpl()
            let loginPresenter = LoginPresenterImpl(view: loginView, model: loginModel, routerDelegate: self)
            loginView.presenter = loginPresenter
                */
            window.rootViewController = contentView
        }
    }
}

extension AppRouter : LoginRouter {
    func didLogin() {
        showContent();
    }
}