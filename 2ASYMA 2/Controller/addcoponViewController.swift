//
//  addcoponViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 01/09/2022.
//

import UIKit

class addcoponViewController: UIViewController {

    @IBOutlet weak var sentbtt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "اضافة كوبون"
        sentbtt.layer.cornerRadius = 20
        sentbtt.clipsToBounds = true
    }
    

   
}
