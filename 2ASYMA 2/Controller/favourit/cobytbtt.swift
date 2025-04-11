//
//  cobytbtt.swift
//  2ASYMA 2
//
//  Created by SamOur on 22/05/2023.
//

import UIKit

class cobytbtt: UIButton {

    override func awakeFromNib() {
       layer.cornerRadius = 10
       clipsToBounds = true
       layer.borderWidth = 2
       layer.borderColor = #colorLiteral(red: 1, green: 0.8274509804, blue: 0.4156862745, alpha: 1)
    }

}
