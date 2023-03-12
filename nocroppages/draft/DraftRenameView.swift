//
//  DraftRenameView.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/13/23.
//

import UIKit

class DraftRenameView: UIView {

    @IBOutlet var contentView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("DraftView", owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

    @IBAction func doAction(_ sender: Any) {
        
    }
}
