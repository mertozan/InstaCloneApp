//
//  FeedCell.swift
//  FirebaseInstaClone
//
//  Created by Mert ÖZAN on 27.11.2024.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {

    @IBOutlet var userEmailLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var documentIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func likeButtonClicked(_ sender: Any) {
        
        let fireStoreDatabase = Firestore.firestore()
        
        if let likeCount = Int(likeLabel.text!) {
            
            let likeStore = ["likes" : likeCount + 1] as [String : Any]
            
            fireStoreDatabase.collection("Posts").document(documentIdLabel.text!).setData(likeStore, merge: true)
            
        }
        
        
    }
    
}
