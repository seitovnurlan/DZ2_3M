//  ViewController.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 19/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "goThree", sender: nil)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        performSegue(withIdentifier: "goTwo", sender: nil)
    }
    
    @IBAction func signInButton(_ sender: Any) {
        
        if emailTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 2
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Заполните пожалуйста"
        }
        if PasswordTextField.text?.isEmpty ?? true {
            PasswordTextField.layer.borderWidth = 2
            PasswordTextField.layer.borderColor = UIColor.red.cgColor
            PasswordTextField.placeholder = "Заполните пожалуйста"
        } else
        {
            performSegue(withIdentifier: "goFive", sender: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view2.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }


}

