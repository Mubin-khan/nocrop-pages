//
//  ExpSettingsTableViewCell.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import UIKit

class ExpSettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var segmentButton: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    @IBAction func buttonAction(_ sender: UISegmentedControl) {
        
    }
}
