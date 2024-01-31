//
//  DetailsView.swift
//  tableview kent uygulaması
//
//  Created by Mustafa kemal Özen on 2.05.2023.
//

import UIKit

class DetailsView: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var ımageView: UIImageView!
    
    var selectedLanmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLanmarkName
        ımageView.text = selectedLandmarkImage

    }
        

 

}
