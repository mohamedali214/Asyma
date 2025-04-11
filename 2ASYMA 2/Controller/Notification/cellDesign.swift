//
//  cellDesign.swift
//  2ASYMA 2
//
//  Created by SamOur on 07/05/2023.
//

import UIKit

class cellDesign: UIView {

    override func awakeFromNib() {
        
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowOpacity = 0.8
        layer.cornerRadius = 15
        clipsToBounds = true
    
    }

}
