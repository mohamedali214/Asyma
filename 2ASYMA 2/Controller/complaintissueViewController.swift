//
//  complaintissueViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 17/08/2022.
//

import UIKit

class complaintissueViewController: UIViewController {

    @IBOutlet weak var complainbtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        complainbtt.layer.cornerRadius = 20
        complainbtt.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    

    @IBAction func complainbtt(_ sender: Any) {
        let complain = storyboard?.instantiateViewController(identifier: "HomeViewController")as!HomeViewController
        navigationController?.pushViewController(complain, animated: true)
    }
    

}
