//
//  DraftView.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import UIKit

class DraftView: UIView {

    @IBOutlet weak var tableViewHeightCon: NSLayoutConstraint!
    @IBOutlet weak var draftTableView: UITableView!
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
       
        setTableView()
    }
    
    func setTableView(){
        let nib1 = UINib(nibName: "NewImageTableViewCell", bundle: nil)
        let nib2 = UINib(nibName: "DraftImageTableViewCell", bundle: nil)
        
        draftTableView.register(nib1, forCellReuseIdentifier: "NewImageTableViewCell")
        draftTableView.register(nib2, forCellReuseIdentifier: "DraftImageTableViewCell")
        
        draftTableView.delegate = self
        draftTableView.dataSource = self
        
        tableViewHeightCon.constant = (50 + 10) * 2 + 50
    }
    
    
    @IBAction func dismissAction(_ sender: Any) {
        self.removeFromSuperview()
    }
    
}

extension DraftView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "NewImageTableViewCell", for: indexPath) as? NewImageTableViewCell {
                
                cell.selectionStyle = .none
                return cell
            }
        }else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "DraftImageTableViewCell", for: indexPath) as? DraftImageTableViewCell {
                
                cell.selectionStyle = .none
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    
    
}
