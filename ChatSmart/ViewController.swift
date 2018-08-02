//
//  ViewController.swift
//  ChatSmart
//
//  Created by Ngô Tiến Lộc on 7/27/18.
//  Copyright © 2018 Ngô Tiến Lộc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Auth.auth().signInAnonymously { (auth, error) in
            guard let auth = auth else {
                
                return
            }
            print(auth.user.uid)
    
        }
    }

    @IBAction func touchUpRegister(_ sender: Any) {
        Auth.auth().createUser(withEmail: tfEmail.text!, password: tfPass.text!) { (auth, error) in
            if error != nil{
                print(error?.localizedDescription)
                return
            }else {
                self.sendMail()
            }
        }
    }
    func sendMail() {
        Auth.auth().signIn(withEmail: tfEmail.text!, password: tfPass.text!) { (result, error) in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                if error != nil {
                    print("Xác thực: \(error)" )
                }else {
                    print("Vui lòng xác thực email")
                }
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

