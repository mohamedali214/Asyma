//
//  notificationViewController.swift
//  2ASYMA 2
//
//  Created by SamOur on 05/09/2022.
//

import UIKit

class notificationViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionview1: UICollectionView!
    
    var arrnoti = [notification]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview1.delegate = self
        collectionview1.dataSource = self
        self.title = "الاشعارات"
        
        arrnoti.append(notification(descripion: "هذا النص هو مثال لنص يمكن ان يستبدل بنص اخر في نفس المساحة "))
        
        arrnoti.append(notification(descripion: "هذا النص هو مثال لنص يمكن ان يستبدل بنص اخر في نفس المساحة "))

      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrnoti.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview1.dequeueReusableCell(withReuseIdentifier: "noticell", for: indexPath)as!ntofocationCollectionViewCell
        let data = arrnoti[indexPath.row]
       
        cell.setdata(description: data.descripion)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize(width: view.frame.size.width, height: 120)
        return size
    }

}
struct notification {
   var descripion : String
}
