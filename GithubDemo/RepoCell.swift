//
//  RepoCell.swift
//  GithubDemo
//
//  Created by my mac on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var startCountLabel: UILabel!
    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var repoOwnerLabel: UILabel!
    @IBOutlet weak var forkCountLabel: UILabel!
    @IBOutlet weak var repoDescriptionLabel: UILabel!
    
    
    var repo : GithubRepo!{
    
        didSet{
            ownerImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
            startCountLabel.text = "\(repo.stars!)"
            repoNameLabel.text = repo.name!
            repoOwnerLabel.text = "by \(repo.ownerHandle!)"
            forkCountLabel.text = "\(repo.forks!)"
            if let description = repo.repoDescription{
                 repoDescriptionLabel.text = description
            }else{
                repoDescriptionLabel.text = "blah blah"
                
            }
            
            
            
        
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
