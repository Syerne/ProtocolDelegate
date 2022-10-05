//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by YE002 on 07/09/22.
//

import UIKit

protocol PassData {
    func passingData(name: String, email: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var delegate: PassData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitBtnPressed(_ sender: UIButton) {
        if nameTextField.text == "" {
            alert(title: "Alert", msg: "Enter Name" )
        } else if emailTextField.text == "" {
            alert(title: "Alert", msg: "Enter Email")
        } else {
        delegate.passingData(name: nameTextField.text!, email: emailTextField.text!)
        }
    }
    
    func alert(title: String, msg: String) {
        var textField = UITextField()
        let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            if self.nameTextField.text == "" {
                self.nameTextField.text = textField.text
            } else {
                 self.emailTextField.text = textField.text
            }
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Enter Details"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}
