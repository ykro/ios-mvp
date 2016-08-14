//
//  LoginPresenterProtocol.swift
//  ToDoListSample
//
//  Created by ykro on 8/12/16.
//  Copyright © 2016 Bit & Ik'. All rights reserved.
//

import Foundation

protocol LoginPresenter {
    var view: LoginView { get set }
    var model: LoginModel { get set }
    var routerDelegate: LoginRouterDelegate { get set}

    func submit(email: String, password: String)
}