//
//  raise my complaintViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 04/09/2022.
//

import UIKit

class raise_my_complaintViewController: UIViewController {

    @IBOutlet weak var sentissus: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ارفع شكوي"
        sentissus.layer.cornerRadius = 20
        sentissus.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    

    @IBAction func sentisuss(_ sender: Any) {
        let sent = storyboard?.instantiateViewController(identifier: "complaintissueViewController")as!complaintissueViewController
        navigationController?.pushViewController(sent, animated: true)
    }
    
}
