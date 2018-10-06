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
      setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String){
        parallaxImageView.image = image
        descriptionLabel.text = desc
    }
    
    func setupParallax(){
        //set up min and max
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        //UIInterpolatingMotionEffect for X axis
    let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        //UIInterpolatingMotionEffect for Y axis
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        //Instantiate Motion Effect and give it the X and Y axis
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        //add motion effect to UIView
        parallaxImageView.addMotionEffect(motionEffectGroup)
    }
}
