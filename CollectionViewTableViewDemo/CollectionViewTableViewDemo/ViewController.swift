//
//  ViewController.swift
//  CollectionViewTableViewDemo
//
//  Created by Mehedi Hasan on 13/8/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sunsetTableView: UITableView!
    
    var models = [Model]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "Sunset 1", image: "img1"))
        models.append(Model(text: "Sunset 2", image: "img2"))
        models.append(Model(text: "Sunset 3", image: "img3"))
        models.append(Model(text: "Sunset 4", image: "img4"))
        models.append(Model(text: "Sunset 5", image: "img5"))
        models.append(Model(text: "Sunset 6", image: "img6"))
        models.append(Model(text: "Sunset 7", image: "img7"))
        models.append(Model(text: "Sunset 8", image: "img8"))
        models.append(Model(text: "Sunset 9", image: "img9"))
        models.append(Model(text: "Sunset 10", image: "img1"))
        models.append(Model(text: "Sunset 11", image: "img2"))
        models.append(Model(text: "Sunset 12", image: "img3"))
        models.append(Model(text: "Sunset 13", image: "img4"))
        models.append(Model(text: "Sunset 14", image: "img5"))
        models.append(Model(text: "Sunset 15", image: "img6"))
        models.append(Model(text: "Sunset 16", image: "img7"))
        models.append(Model(text: "Sunset 17", image: "img8"))
        models.append(Model(text: "Sunset 18", image: "img9"))
        
        sunsetTableView.register(SunsetTVCell.nib(), forCellReuseIdentifier: SunsetTVCell.identifier)
        sunsetTableView.dataSource = self
        sunsetTableView.delegate = self
    }


}

struct Model {
    let text: String
    let image: String
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sunsetTableView.dequeueReusableCell(withIdentifier: SunsetTVCell.identifier, for: indexPath) as! SunsetTVCell
        cell.configureImage(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
