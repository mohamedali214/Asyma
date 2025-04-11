//
//  forgot passwordViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 29/07/2022.
//

import UIKit

class forgot_passwordViewController: UIViewController {

    @IBOutlet weak var recomepassbtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        recomepassbtt.layer.cornerRadius = 20
        recomepassbtt.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func backhome(_ sender: Any) {
        let back = storyboard?.instantiateViewController(identifier: "signupViewController")as!signupViewController
        navigationController?.pushViewController(back, animated: true)
    }
    
   
    @IBAction func forgetpassbtt(_ sender: Any) {
        let forgetpass = storyboard?.instantiateViewController(identifier: "codenumberViewController")as!codenumberViewController
        navigationController?.pushViewController(forgetpass, animated: true)
    }
    
    
}
