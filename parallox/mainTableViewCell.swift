//
//  mainTableViewCell.swift
//  MasryTester
//
//  Created by Approcks Mac Mini on 1/9/17.
//  Copyright © 2017 Approcks. All rights reserved.
//

import UIKit

/**
 
 ## mainTableViewCell class ##
 
 This class is a layout cell to dispaly main tableview
 
 */

class mainTableViewCell: UITableViewCell {

    @IBOutlet weak var conTopIm: NSLayoutConstraint!
    @IBOutlet weak var conTopp: UIImageView!
    
    @IBOutlet weak var viewBk: UIView!
    var favoritesImageView:UIImageView!
    
    var imageTopConstraint:NSLayoutConstraint!
    
    var imageHeightConstraint:NSLayoutConstraint!
   
    var once:Bool!
    
    @IBOutlet weak var imageV: UIWebView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        favoritesImageView = UIImageView.init(image: UIImage.init(named: "logPass.png"))
        
        once = true
        
    }
    
    override func layoutSubviews() {
        
        if(once)
        {
              self.setupFavoritesImageView()
            once = false;
           
        }
       
        
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    private func setupFavoritesImageView() {
        
        print("Called")
        
         favoritesImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.contentView.addSubview(favoritesImageView)
       
        favoritesImageView.translatesAutoresizingMaskIntoConstraints = false
        imageTopConstraint = favoritesImageView.topAnchor.constraint(equalTo:self.contentView.topAnchor)
        addConstraint(imageTopConstraint)
        
        imageHeightConstraint = favoritesImageView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor)
        addConstraint(imageHeightConstraint)
        
        
        
        
       // let wid = NSLayoutConstraint.init(item: favoritesImageView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 50.0)
        
       //  favoritesImageView.addConstraint(wid)
        
    //    let centerX = NSLayoutConstraint.init(item: favoritesImageView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.contentView, attribute: NSLayoutAttribute.centerX, multiplier: 1.0, constant: 0)
        
       //  self.contentView.addConstraint(centerX)
        [favoritesImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
          favoritesImageView.widthAnchor.constraint(equalTo: self.contentView.widthAnchor)]
          //  .forEach{$0.isActive = true}
    }
    
    
    
}
