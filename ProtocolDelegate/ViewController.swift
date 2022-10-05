//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by YE002 on 07/09/22.
//

import UIKit

class ViewController: UIViewController, PassData {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToFormBtnPressed(_ sender: UIButton) {
        let secondVc: SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVc.delegate = self
        navigationController?.pushViewController(secondVc, animated: true)
    }
    
    func passingData(name: String, email: String) {
        nameLabel.text = name
        emailLabel.text = email
    }
    
}

