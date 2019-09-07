//
//  CoverCollectionViewCell.swift
//  interfaz-test
//
//  Created by Emmanuel on 9/7/19.
//  Copyright © 2019 Emmanuel. All rights reserved.
//

import UIKit

class CoverCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var coverUIImageView: UIImageView!
    
    @IBOutlet var artistLabel: UILabel!
    
    @IBOutlet var songLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
