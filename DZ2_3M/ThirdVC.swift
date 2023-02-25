//
//  ThirdVC.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 23/2/23.
//

import UIKit

class ThirdVC: UIViewController {

    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var inputSmsTF: UITextField!
    
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
