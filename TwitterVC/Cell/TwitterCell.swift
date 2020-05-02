//
//  TwitterCell.swift
//  TwitterVC
//
//  Created by Habib Durodola on 2020-04-12.
//  Copyright © 2020 DOH. All rights reserved.
//

import UIKit

class TwitterCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var handleLabel: UILabel!
    @IBOutlet weak var followBtn: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setFollowBtn()
        setImageView()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setImageView()  {
       
        profileImageView.layer.cornerRadius = self.frame.height / 10.0
        profileImageView.layer.masksToBounds = true
        profileImageView.contentMode = .scaleAspectFit

    }

    func setFollowBtn()  {
        followBtn.layer.cornerRadius = 5
        followBtn.layer.borderColor = UIColor.red.cgColor
        followBtn.layer.borderWidth = 1
        followBtn.setTitle("Follow", for: .normal)
        followBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
       // followBtn.setImage(<#T##image: UIImage?##UIImage?#>, for: .normal) add image 
        followBtn.setTitleColor(.red, for: .normal)
        followBtn.imageView?.contentMode = .scaleAspectFit
        followBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
    }


    
}
