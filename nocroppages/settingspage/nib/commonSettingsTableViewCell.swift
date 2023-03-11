//
//  commonSettingsTableViewCell.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import UIKit

class commonSettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var goImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    let cornerRadius: CGFloat = 8
//
//        override func layoutSubviews() {
//            super.layoutSubviews()
//
//            // Add a rounded corner mask to the top-left and top-right corners
//            let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
//            let maskLayer = CAShapeLayer()
//            maskLayer.path = maskPath.cgPath
//            layer.mask = maskLayer
//    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
