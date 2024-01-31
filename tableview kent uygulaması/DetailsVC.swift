//
//  DetailsVC.swift
//  tableview kent uygulaması
//
//  Created by Mustafa kemal Özen on 2.05.2023.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmakName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmakName
        imageView.image = selectedLandmarkImage

    }
    

    
}
