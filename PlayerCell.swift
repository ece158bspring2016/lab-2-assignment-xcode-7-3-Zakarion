//
//  PlayerCell.swift
//  Assignment_1
//
//  Created by Joshua Ma on 4/17/16.
//  Copyright © 2016 Joshua Ma. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player!{
        didSet{
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = imageForRating(player.rating!)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func imageForRating(rating:Int) -> UIImage?{
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
}
