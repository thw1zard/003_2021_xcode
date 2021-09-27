
//
//  PostTableViewCell.swift
//  Lesson3
//
//  Created by Danil Gerasimov on 24.09.2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postInfoLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTextLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(avatarImage: String, name: String, postInfo: String, postImage: String, postText: String){
        print(self.avatarImage)
        self.avatarImage.image = UIImage(named: avatarImage)
        nameLabel.text = name
        postInfoLabel.text = postInfo
        self.postImage.image = UIImage(named: postImage)
        postTextLabel.text = postText
        if postText == "" {
            postTextLabel.isHidden = true
        }
    }
}
