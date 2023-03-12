//
//  DraftImageTableViewCell.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/12/23.
//

import UIKit

class DraftImageTableViewCell: UITableViewCell {

    @IBOutlet weak var draftTitle: UILabel!
    @IBOutlet weak var draftImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        draftImageView.layer.cornerRadius = 6
        draftImageView.clipsToBounds = true
    }
    
    @IBAction func dotAction(_ sender: Any) {
    }
    
}
