//
//  choose the languageViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 29/06/2022.
//

import UIKit

class choose_the_languageViewController: UIViewController {

    @IBOutlet weak var englishbtt: UIButton!
    @IBOutlet weak var arabicbtt: UIButton!
    @IBOutlet weak var choosethelanguagebtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        englishbtt.layer.cornerRadius = 10
        englishbtt.layer.borderWidth = 2
        englishbtt.layer.borderColor = #colorLiteral(red: 1, green: 0.8274509804, blue: 0.4156862745, alpha: 1)
        englishbtt.clipsToBounds = true
        arabicbtt.layer.cornerRadius = 10
        arabicbtt.layer.borderWidth = 2
        arabicbtt.layer.borderColor = #colorLiteral(red: 1, green: 0.8274509804, blue: 0.4156862745, alpha: 1)
        arabicbtt.clipsToBounds = true
        choosethelanguagebtt.layer.cornerRadius = 20
        choosethelanguagebtt.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    @IBAction func choosebtt(_ sender: Any) {
        let choosebtt = storyboard?.instantiateViewController(identifier: "signupViewController")as!signupViewController
        navigationController?.pushViewController(choosebtt, animated: true)
    }
    
    @IBAction func changeLanguage(_ sender: UIButton) {
   
        if sender == englishbtt {
            englishbtt.backgroundColor = #colorLiteral(red: 0.1326537728, green: 0.7282162905, blue: 0.6738328338, alpha: 1)
            arabicbtt.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        } else {
            englishbtt.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            arabicbtt.backgroundColor = #colorLiteral(red: 0.1326537728, green: 0.7282162905, blue: 0.6738328338, alpha: 1)
        }
    }
}
