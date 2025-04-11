//
//  sidemenuViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 07/08/2022.
//

import UIKit

class sidemenuViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    let menuContent = ["الرئيسية","اقوي العروض","المفضلة","الاشعارات","كوبونات مستعملة","قيم التطبيق","اقترح علينا كوبون","قسم المساعدة","تسجيل الخروج"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homecell")as!sideTableViewCell
        cell.textLabel?.text = menuContent[indexPath.row]
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(named:"Home")
        case 1:
            cell.imageView?.image = UIImage(named:"bestoffer")
        case 2:
            cell.imageView?.image = UIImage(named:"fav")
        case 3:
            cell.imageView?.image = UIImage(named:"notification")
        case 4:
            cell.imageView?.image = UIImage(named:"copon")
        case 5:
            cell.imageView?.image = UIImage(named:"fedback")
        case 6:
            cell.imageView?.image = UIImage(named:"sugestcopon")
        case 7:
            cell.imageView?.image = UIImage(named:"helpside")
        case 8:
            cell.imageView?.image = UIImage(named:"logout")
        default:
            break
    }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")as!HomeViewController
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let bestoffer = storyboard?.instantiateViewController(identifier: "bestofferViewController")as!bestofferViewController
            navigationController?.pushViewController(bestoffer, animated: true)
       case 2:
            let fav = storyboard?.instantiateViewController(identifier: "favViewController")as!favViewController
            navigationController?.pushViewController(fav, animated: true)
        case 3:
            let notification = storyboard?.instantiateViewController(identifier: "notificationViewController")as!notificationViewController
            navigationController?.pushViewController(notification, animated: true)
        case 4:
            let usedcopon = storyboard?.instantiateViewController(identifier: "usedcopon")as!usedcopon
            navigationController?.pushViewController(usedcopon, animated: true)
        case 5:
            break
        case 6:
            let addcopon = storyboard?.instantiateViewController(identifier: "addcoponViewController")as!addcoponViewController
            navigationController?.pushViewController(addcopon, animated: true)
        case 7:
            let helpside = storyboard?.instantiateViewController(identifier: "helpsideViewController")as!helpsideViewController
            navigationController?.pushViewController(helpside, animated: true)
        case 8:
            break
        default:
            break
    }
}
    
}
