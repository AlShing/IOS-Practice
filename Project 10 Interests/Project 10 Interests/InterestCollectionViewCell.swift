//
//  InterestCollectionViewCell.swift
//  Project 10 Interests
//
//  Created by Alibek on 4/27/17.
//  Copyright © 2017 Alibek. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    fileprivate func updateUI() {
        interestTitleLabel?.text! = interest.title
        featuredImageView?.image! = interest.featuredImage
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 15.0
        self.clipsToBounds = true
    }
}
