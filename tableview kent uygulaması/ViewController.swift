//
//  ViewController.swift
//  tableview kent uygulaması
//
//  Created by Mustafa kemal Özen on 2.05.2023.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImages = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landMarkNames.append("Kapadokya")
        landMarkNames.append("Colesium")
        landMarkNames.append("Özgürlük Heykeli")
        landMarkNames.append("Taj Mahal")
        landMarkNames.append("Eyfel Kulesi")
                
        landMarkImages.append(UIImage(named: "kapadokya")!)
        landMarkImages.append(UIImage(named: "coliseum")!)
        landMarkImages.append(UIImage(named: "özgürlükheykeli")!)
        landMarkImages.append(UIImage(named: "tajmahal")!)
        landMarkImages.append(UIImage(named: "eyfel")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landMarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landMarkNames[indexPath.row]
        chosenLandmarkImages = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmakName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImages
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landMarkNames.remove(at: indexPath.row)
            self.landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
            
    }


}

