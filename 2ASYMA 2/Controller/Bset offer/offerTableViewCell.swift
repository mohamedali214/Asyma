//
//  offerTableViewCell.swift
//  2ASYMA 2
//
//  Created by SamOur on 27/08/2022.
//

import UIKit

class offerTableViewCell: UITableViewCell {

    @IBOutlet weak var imageoffercell: UIImageView!
    @IBOutlet weak var infolable: UILabel!
    @IBOutlet weak var datelable: UILabel!
    @IBOutlet weak var viewcell: UIView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpcell( info : String , date : String)  {
        infolable.text = info
        datelable.text = date
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
