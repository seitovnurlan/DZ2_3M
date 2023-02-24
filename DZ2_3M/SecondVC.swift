//
//  SecondVC.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 23/2/23.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var mobNumTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var passwTF: UITextField!
    
    @IBOutlet weak var confPasswTF: UITextField!
    
    
    @IBAction func signUpButton(_ sender: Any) {
        if fullNameTextField.text?.isEmpty ?? true {
            fullNameTextField.layer.borderWidth = 2
            fullNameTextField.layer.borderColor = UIColor.red.cgColor
            fullNameTextField.placeholder = "Заполните пожалуйста"
        }
        if mobNumTF.text?.isEmpty ?? true {
            mobNumTF.layer.borderWidth = 2
            mobNumTF.layer.borderColor = UIColor.red.cgColor
            mobNumTF.placeholder = "Заполните пожалуйста"
        }
        if emailTF.text?.isEmpty ?? true {
            emailTF.layer.borderWidth = 2
            emailTF.layer.borderColor = UIColor.red.cgColor
            emailTF.placeholder = "Заполните пожалуйста"
        }
        if userNameTF.text?.isEmpty ?? true {
            userNameTF.layer.borderWidth = 2
            userNameTF.layer.borderColor = UIColor.red.cgColor
            userNameTF.placeholder = "Заполните пожалуйста"
        }
        if passwTF.text?.isEmpty ?? true {
            passwTF.layer.borderWidth = 2
            passwTF.layer.borderColor = UIColor.red.cgColor
            passwTF.placeholder = "Заполните пожалуйста"
        }
        if confPasswTF.text?.isEmpty ?? true {
            confPasswTF.layer.borderWidth = 2
            confPasswTF.layer.borderColor = UIColor.red.cgColor
            confPasswTF.placeholder = "Заполните пожалуйста"
        }
        else
        {
            performSegue(withIdentifier: "twoGoFive", sender: nil)
        }
        
        
    }
    
    @IBAction func signInButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view3.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
