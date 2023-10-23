//
//  SunsetTableViewCell.swift
//  CollectionViewTableViewDemo
//
//  Created by Mehedi Hasan on 13/8/23.
//

import UIKit

class SunsetTVCell: UITableViewCell {

    static let identifier = "SunsetTVCell"
    @IBOutlet weak var sunsetCollectionView: UICollectionView!
    
    var models = [Model]()
    
    static func nib() -> UINib {
        return UINib(nibName: "SunsetTVCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        sunsetCollectionView.register(SunsetCVCell.nib(), forCellWithReuseIdentifier: SunsetCVCell.identifier)
        sunsetCollectionView.dataSource = self
        sunsetCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureImage(with models: [Model]){
        self.models = models
        sunsetCollectionView.reloadData()
    }
    
    
    
    
}

extension SunsetTVCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tapped = models[indexPath.row].text
        print("Tapped \(tapped)")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = sunsetCollectionView.dequeueReusableCell(withReuseIdentifier: SunsetCVCell.identifier, for: indexPath) as! SunsetCVCell
        cell.configureCVCell(with: models[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = 250
        let height = 250
        
        if indexPath.item % 2 != 0 {
            return CGSize(width: width, height: 200)
        }
        
        return CGSize(width: width, height: height)
    }
    

}
