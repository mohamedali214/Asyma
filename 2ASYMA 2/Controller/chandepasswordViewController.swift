//
//  chandepasswordViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 31/07/2022.
//

import UIKit

class chandepasswordViewController: UIViewController {

    @IBOutlet weak var changepassbtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changepassbtt.layer.cornerRadius = 20
        changepassbtt.clipsToBounds = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func changeback(_ sender: Any) {
        let changbackbt = storyboard?.instantiateViewController(identifier: "loginViewController")as!loginViewController
        navigationController?.pushViewController(changbackbt, animated: true)
        
    }
    
    @IBAction func sigenview(_ sender: Any) {
        let sign = storyboard?.instantiateViewController(identifier: "loginViewController")as!loginViewController
        navigationController?.pushViewController(sign, animated: true)
    }
    
   

}
