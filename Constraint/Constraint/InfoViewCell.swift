//
//  InfoViewCell.swift
//  Constraint
//
//  Created by Otavio Brito on 23/10/20.
//

import UIKit

class InfoViewCell: UITableViewCell {

    
    @IBOutlet weak var infoImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var rateLabel: UILabel!
    
    @IBOutlet weak var downloadButton: UIButton!
    
    @IBOutlet weak var descriptionTextfield: UITextField!
    
    func setup(info: Information) {
        infoImage.image = UIImage(named: info.image)
        titleLabel.text = info.title
        rateLabel.text = info.rate
        descriptionTextfield.text = info.description
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
