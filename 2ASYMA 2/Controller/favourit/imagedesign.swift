//
//  imagedesign.swift
//  2ASYMA 2
//
//  Created by SamOur on 21/05/2023.
//

import UIKit

class imagedesign: UIImageView {

    override func awakeFromNib() {
        layer.cornerRadius = 23.3
        clipsToBounds = true
        layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        layer.shadowRadius = 1.7
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
    }

}
