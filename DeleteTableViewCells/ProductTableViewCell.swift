//
//  ProductTableViewCell.swift
//  DeleteTableViewCells
//
//  Created by MAC on 5/1/19.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewCell: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
