//
//  FeedCell.swift
//  FirebaseInstaClone
//
//  Created by Mert ÖZAN on 27.11.2024.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet var userEmailLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonClicked(_ sender: Any) {
    }
    
}
