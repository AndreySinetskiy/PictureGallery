//
//  TableViewController.swift
//  PictureGallery
//
//  Created by 1 on 12.09.2021.
//

import UIKit

class TableViewController: UITableViewController {

   
    private var picture = Picture.getPicture()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        picture.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let picture = picture[indexPath.row]
        
        content.text = picture.author
        content.secondaryText = picture.nameOfPicture
        content.image = UIImage(named: picture.image)
       
        
        cell.contentConfiguration = content
        return cell
    }
   
    
    
    
    // MARK: - Navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow {
//            let detailVC = segue.destination as! DetailPictureViewController
//            detailVC.picture = picture[indexPath.row]
//        }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailPictureViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let picture = picture[indexPath.row]
        detailVC.picture = picture
        
    }
}
   

   


