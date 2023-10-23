//
//  SecondViewController.swift
//  CollectionViewTableViewDemo
//
//  Created by Mehedi Hasan on 14/8/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblSecondVC: UILabel!
    
    var imageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblSecondVC.text = imageName

    }
    

}
