//
//  helpsideViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 04/09/2022.
//

import UIKit

class helpsideViewController: UIViewController {

    @IBOutlet weak var helpsidebtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        helpsidebtt.layer.cornerRadius = 20
        helpsidebtt.clipsToBounds = true
        self.title = "قسم المساعدة"
    }
    

    

}
