//
//  ThirdVC.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 23/2/23.
//

import UIKit

class ThirdVC: UIViewController {

    @IBOutlet weak var buttonX1: UIButton!
    
    @IBOutlet weak var buttonX2: UIButton!
    
    @IBOutlet weak var buttonX3: UIButton!
    
    @IBOutlet weak var buttonX4: UIButton!
    
    @IBOutlet weak var buttonX5: UIButton!
    
    @IBOutlet weak var buttonX6: UIButton!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var inputSmsTF: UITextField!
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var mobilTF: UITextField!
    
    @IBAction func mobilEnablTF(_ sender: Any) {
        if mobilTF.hasText {
            getOTPButtonEnabl.isEnabled = true
            getOTPButtonEnabl.layer.borderWidth = 2
            getOTPButtonEnabl.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    @IBAction func inputSmsTFEnabl(_ sender: Any) {
        if inputSmsTF.hasText {
            submitButtonEnabl.isEnabled = true
            submitButtonEnabl.layer.borderWidth = 2
            submitButtonEnabl.layer.borderColor = UIColor.red.cgColor
            getOTPButtonEnabl.layer.borderWidth = 2
            getOTPButtonEnabl.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    
    @IBOutlet weak var getOTPButtonEnabl: UIButton!
    
    @IBOutlet weak var submitButtonEnabl: UIButton!
    
    @IBAction func getOTPButton(_ sender: Any) {
        if mobilTF.text?.isEmpty ?? true {
            mobilTF.layer.borderWidth = 2
            mobilTF.layer.borderColor = UIColor.red.cgColor
            mobilTF.placeholder = "Заполните пожалуйста"
        } else
        {
            inputSmsTF.isEnabled = true
            inputSmsTF.backgroundColor = .white
            inputSmsTF.textColor = .black
            mobilTF.layer.borderWidth = 1
            mobilTF.layer.borderColor = UIColor.blue.cgColor
            inputSmsTF.layer.borderWidth = 2
            inputSmsTF.layer.borderColor = UIColor.blue.cgColor
        }
    }
    
    @IBAction func submitButton(_ sender: Any) {
        if inputSmsTF.text?.isEmpty ?? true {
            inputSmsTF.layer.borderWidth = 2
            inputSmsTF.layer.borderColor = UIColor.red.cgColor
            inputSmsTF.placeholder = "Заполните пожалуйста"
        } else
        {
            let FourVC = storyboard?.instantiateViewController(withIdentifier: "FourthVC")
                    navigationController?.pushViewController(FourVC!, animated: true)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view4.layer.cornerRadius = 20
        inputSmsTF.isEnabled = false
        getOTPButtonEnabl.isEnabled = false
        submitButtonEnabl.isEnabled = false
        
        mobilTF.layer.borderWidth = 2
        mobilTF.layer.cornerRadius = 10
        mobilTF.layer.borderColor = UIColor.gray.cgColor
        
        labelText.layer.borderWidth = 1
        labelText.layer.cornerRadius = 10
        labelText.layer.borderColor = UIColor.gray.cgColor
        
        buttonX1.layer.cornerRadius = 10
        buttonX1.layer.borderWidth = 1
        buttonX1.layer.borderColor = UIColor.gray.cgColor
        
        buttonX2.layer.cornerRadius = 10
        buttonX2.layer.borderWidth = 1
        buttonX2.layer.borderColor = UIColor.gray.cgColor
        
        buttonX3.layer.cornerRadius = 10
        buttonX3.layer.borderWidth = 1
        buttonX3.layer.borderColor = UIColor.gray.cgColor

        buttonX4.layer.cornerRadius = 10
        buttonX4.layer.borderWidth = 1
        buttonX4.layer.borderColor = UIColor.gray.cgColor
        
        buttonX5.layer.cornerRadius = 10
        buttonX5.layer.borderWidth = 1
        buttonX5.layer.borderColor = UIColor.gray.cgColor
        
        buttonX6.layer.cornerRadius = 10
        buttonX6.layer.borderWidth = 1
        buttonX6.layer.borderColor = UIColor.gray.cgColor
    }

}
