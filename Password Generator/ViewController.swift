//
//  ViewController.swift
//  Password Generator
//
//  Created by Takvir Imran on 11/20/24.
//

import UIKit

class ViewController: UIViewController {
    var character : [String] = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" ]
    
    @IBOutlet weak var pwdField: UITextField!
    
    var password : String = ""
    var isPressed : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func generateButton(_ sender: Any) {
        if(isPressed==true){
            password.removeAll()
        }
        for item in 1...10 {
            password+=character.randomElement()!
            pwdField.text = password
        }
        isPressed=true
        self.view.showToast(message: "This is a toast message!")
    }
    
}

