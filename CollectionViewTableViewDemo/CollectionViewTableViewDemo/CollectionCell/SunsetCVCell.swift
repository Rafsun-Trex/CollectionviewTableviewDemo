//
//  SunsetCollectionViewCell.swift
//  CollectionViewTableViewDemo
//
//  Created by Mehedi Hasan on 13/8/23.
//

import UIKit

class SunsetCVCell: UICollectionViewCell {

    static let identifier = "SunsetCVCell"
    
    @IBOutlet weak var lblSunsetCV: UILabel!
    @IBOutlet weak var sunsetImageView: UIImageView!
    
    static func nib() -> UINib {
        return UINib(nibName: "SunsetCVCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configureCVCell(with model: Model){
        self.lblSunsetCV.text = model.text
        self.sunsetImageView.image = UIImage(named: model.image)
        self.sunsetImageView.contentMode = .scaleAspectFill
    }

}

