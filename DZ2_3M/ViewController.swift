//  ViewController.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 19/2/23.
//

import UIKit

class ViewController: UIViewController {

    var b: Bool = true
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        let ThreeVC = storyboard?.instantiateViewController(withIdentifier: "ThirdVC")
                navigationController?.pushViewController(ThreeVC!, animated: true)
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        let TwoVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
                navigationController?.pushViewController(TwoVC!, animated: true)
    }
    
    @IBOutlet weak var rememberLabel: UILabel!
    
    @IBOutlet weak var chekBoxButtonview: UIButton!
    
    @IBAction func chekBoxButton(_ sender: Any) {
        
        if b {
        chekBoxButtonview.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
//            chekBoxButtonview.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            chekBoxButtonview.backgroundColor = UIColor.yellow
            chekBoxButtonview.tintColor = UIColor.blue
            rememberLabel.font = UIFont.boldSystemFont(ofSize: 18)
            b = false
        } else {
            chekBoxButtonview.setImage(UIImage(systemName: "squareshape"), for: .normal)
            chekBoxButtonview.backgroundColor = UIColor.white
            chekBoxButtonview.tintColor = UIColor.black
            rememberLabel.font = UIFont.systemFont(ofSize: 18)
            b = true
        }
        
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
            let successVC = storyboard?.instantiateViewController(withIdentifier: "FifthVC")
                    navigationController?.pushViewController(successVC!, animated: true)

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view2.layer.cornerRadius = 20
//        view2.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        // Do any additional setup after loading the view.
//        navigationController?.popToRootViewController(animated: true)
    }


}

