//
//  favViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 18/05/2023.
//

import UIKit

class favViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
   // var favarr = [favdescrip]()
    @IBOutlet weak var favcoll: UICollectionView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            favcoll.delegate = self
            favcoll.dataSource = self
        
        self.title = " المفضلة"
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "favCollectionViewCell", for: indexPath)as!favCollectionViewCell
       // let data = favarr [indexPath.row]
     //   cell.setdata(descrip: data.descrip)
        return cell
        
    }
    
   // struct favdescrip {
     //   var descrip : String
  //  }

}
