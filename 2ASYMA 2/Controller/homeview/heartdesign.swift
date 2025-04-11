//
//  heartdesign.swift
//  2ASYMA 2
//
//  Created by SamOur on 26/07/2023.
//

import UIKit

class heartdesign: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 15
        clipsToBounds = true
        layer.borderWidth = 1.2
        layer.borderColor = #colorLiteral(red: 1, green: 0.8274509804, blue: 0.4156862745, alpha: 1)
    }
}
