//
//  codenumberViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 29/07/2022.
//

import UIKit

class codenumberViewController: UIViewController {

    @IBOutlet weak var codebtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        codebtt.layer.cornerRadius = 20
        codebtt.clipsToBounds = true

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func codebackbtt(_ sender: Any) {
        let backcode = storyboard?.instantiateViewController(identifier: "signupViewController")as!signupViewController
        navigationController?.pushViewController(backcode, animated: true)
    }
    

    @IBAction func changepass(_ sender: Any) {
        let changePass = storyboard?.instantiateViewController(identifier: "chandepasswordViewController")as!chandepasswordViewController
        navigationController?.pushViewController(changePass, animated: true)
    }
    
}
