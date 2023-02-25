//
//  FourthVC.swift
//  DZ2_3M
//
//  Created by Nurlan Seitov on 23/2/23.
//

import UIKit

class FourthVC: UIViewController {

    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var newPasswTF: UITextField!
    @IBOutlet weak var confPasswTF: UITextField!
    
    private func checkTextField(textField: UITextField) {
        guard let text = textField.text else { return }
        if text.isEmpty {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Заполните пожалуйста"
        } else {
            textField.layer.borderWidth = 0
        }
    }
    
    private func updateTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.red.cgColor
        textField.text = ""
        textField.placeholder = "Не совпадают"
    }
    
    @IBAction func submitButt4(_ sender: Any) {
        checkTextField(textField: newPasswTF)
        checkTextField(textField: confPasswTF)
        if confPasswTF.text != newPasswTF.text  {
            updateTextField(confPasswTF)
            updateTextField(newPasswTF)
        } else {
            let FivVC = storyboard?.instantiateViewController(withIdentifier: "FifthVC")
                    navigationController?.pushViewController(FivVC!, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view5.layer.cornerRadius = 20
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
