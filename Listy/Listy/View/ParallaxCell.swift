//
//  ParallaxCell.swift
//  Listy
//
//  Created by Zach Cervi on 10/6/18.
//  Copyright © 2018 Zach Cervi. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

   
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var parallaxImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String){
        parallaxImageView.image = image
        descriptionLabel.text = desc
    }
    
    func setupParallax(){
        
    }
}
