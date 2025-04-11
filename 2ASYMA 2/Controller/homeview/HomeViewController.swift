//
//  HomeViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 04/08/2022.
//

import UIKit


class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    let arrbtt = [ "مواد التجميل "," ازياء "," مستلزمات المنزل ","عطور "]
    
    
    
    @IBOutlet weak var collectionbtt: UICollectionView!
    @IBOutlet var searchbar: UISearchBar!
    @IBOutlet weak var homeCollection: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionbtt.dataSource = self
        collectionbtt.delegate = self
        homeCollection.delegate = self
        homeCollection.dataSource = self
        
        self.navigationItem.titleView = searchbar
        searchbar.placeholder = "ابحث هنا"
    }
    
    @IBAction func sidemenubtt(_ sender: Any) {
        let menubtt = storyboard?.instantiateViewController(identifier: "sidemenuViewController")as!sidemenuViewController
        navigationController?.pushViewController(menubtt, animated: true)
        
    }
    
    @IBAction func raiseInissuebtt(_ sender: Any) {
        let raise = storyboard?.instantiateViewController(identifier: "raise_my_complaintViewController")as!raise_my_complaintViewController
        navigationController?.pushViewController(raise, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == homeCollection){
            return 3
            
        }else{
            
            return arrbtt.count
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == homeCollection){
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)as!cell2
    
            return cell2
            
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath)as!horizontalCollectionViewCell
            cell.bttcollect.setTitle("\(arrbtt[indexPath.row])", for: .normal)
            
            return cell
            
        }
    }
    
    
    
}



