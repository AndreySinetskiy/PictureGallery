//
//  DetailPictureViewController.swift
//  PictureGallery
//
//  Created by 1 on 12.09.2021.
//

import UIKit

class DetailPictureViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var picture: Picture!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: picture.image )
        label.text = picture.title
        
    }

}
