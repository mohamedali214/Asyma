//
//  signupViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 04/07/2022.
//

import UIKit

class signupViewController: UIViewController {

    @IBOutlet weak var sigenupbtt: UIButton!
    @IBOutlet weak var facebookbtt: UIButton!
    @IBOutlet weak var googlebtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        sigenupbtt.layer.cornerRadius = 20
        sigenupbtt.clipsToBounds = true
        facebookbtt.layer.cornerRadius = 10
        facebookbtt.layer.borderWidth = 2
        facebookbtt.layer.borderColor = #colorLiteral(red: 0.8196078431, green: 0.8156862745, blue: 0.8392156863, alpha: 1)
        facebookbtt.clipsToBounds = true
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

    @IBAction func sigenupbtt(_ sender: Any) {
        let getacount = storyboard?.instantiateViewController(identifier: "HomeViewController")as!HomeViewController
        navigationController?.pushViewController(getacount, animated: true)
    }
    
    @IBAction func loginbtt(_ sender: Any) {
        let login = storyboard?.instantiateViewController(identifier: "loginViewController")as!loginViewController
        navigationController?.pushViewController(login, animated: true)
    }
    
}
