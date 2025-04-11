//
//  ntofocationCollectionViewCell.swift
//  2ASYMA 2
//
//  Created by SamOur on 05/09/2022.
//

import UIKit

class ntofocationCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagecell: UIImageView!
    @IBOutlet weak var descriptionlabel: UILabel!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    
    
    func setdata (description : String){
        descriptionlabel.text = description
    }
    
}
