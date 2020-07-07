//
//  ViewController.swift
//  loginPage
//
//  Created by Abdusalom Hojiev on 7/7/20.
//  Copyright © 2020 Abdusalom Hojiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    enum loginError: Error {
        case IncopleteForm
        case IncorrectEmail
        case IncorrectPassword
    }


    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailTextFIeld: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        do{
            
            try login()
            
        } catch loginError.IncopleteForm {
            Alert.showBasic(title: "Ошибка!", message: "Введите свой логин и пароль", vc: self)
        } catch loginError.IncorrectEmail {
            Alert.showBasic(title: "Ошибка!", message: "Не правильная почта", vc: self)
        } catch loginError.IncorrectPassword {
            Alert.showBasic(title: "Ошибка!", message: "Пароль должент быть не менее 8 символов", vc: self)
        } catch {
            print(error.localizedDescription)
        }
 
    }
    
    
    func login() throws {
        
        let email = emailTextFIeld.text!
        let password = passwordTextfield.text!
        
        
        if email.isEmpty || password.isEmpty {
            
            throw loginError.IncopleteForm
   
        }
        
        if !email.isValidEmail {
            
            throw loginError.IncorrectEmail
        }
        
        if password.count < 8 {
            
            throw loginError.IncorrectPassword   
        }
  
    }


}

