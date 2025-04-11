//
//  usedcopon.swift
//  2ASYMA 2
//
//  Created by SamOur on 14/07/2023.
//

import UIKit

class usedcopon: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var usedcopon: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        usedcopon.delegate = self
        usedcopon.dataSource = self
        self.title = "كوبونات مستعملة"
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "usedCoponcellCollectionViewCell", for: indexPath)as!usedCoponcellCollectionViewCell
        return cell
    }
    

}
