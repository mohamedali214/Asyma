//
//  loginViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 23/07/2022.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var facebtt: UIButton!
    @IBOutlet weak var googlebtt: UIButton!
    @IBOutlet weak var registbtt: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registbtt.layer.cornerRadius = 20
        registbtt.clipsToBounds = true
        facebtt.layer.cornerRadius = 10
        facebtt.layer.borderWidth = 2
        facebtt.layer.borderColor = #colorLiteral(red: 0.8196078431, green: 0.8156862745, blue: 0.8392156863, alpha: 1)
        facebtt.clipsToBounds = true
        googlebtt.layer.cornerRadius = 10
        googlebtt.layer.borderWidth = 2
        googlebtt.layer.borderColor = #colorLiteral(red: 0.8196078431, green: 0.8156862745, blue: 0.8392156863, alpha: 1)
        googlebtt.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func signupbtt(_ sender: Any) {
        let sign = storyboard?.instantiateViewController(identifier: "signupViewController")as!signupViewController
        navigationController?.pushViewController(sign, animated: true)
    }
    
    @IBAction func forgetpass(_ sender: Any) {
        let forget = storyboard?.instantiateViewController(identifier: "forgot_passwordViewController")as!forgot_passwordViewController
        navigationController?.pushViewController(forget, animated: true)
    }
    
    @IBAction func homeview(_ sender: Any) {
        let home = storyboard?.instantiateViewController(identifier: "HomeViewController")as!HomeViewController
        navigationController?.pushViewController(home, animated: true)
    }
    
}
