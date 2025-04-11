//
//  save with eksemlyViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 29/06/2022.
//

import UIKit

class save_with_eksemlyViewController: UIViewController {

    @IBOutlet weak var savewitheksemlybtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        savewitheksemlybtt.layer.cornerRadius = 20
        savewitheksemlybtt.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func savewitheksemlybtt(_ sender: Any) {
        let vcsave = storyboard?.instantiateViewController(identifier: "choose_the_languageViewController") as!choose_the_languageViewController
        navigationController?.pushViewController(vcsave, animated: true)
    }
    
   

}
