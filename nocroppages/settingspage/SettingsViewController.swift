//
//  SettingsViewController.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    var tableViewHeaderHeight : CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let nib = UINib(nibName: "commonSettingsTableViewCell", bundle: nil)
        let nib1 = UINib(nibName: "ExpSettingsTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "commonSettingsTableViewCell")
        myTableView.register(nib1, forCellReuseIdentifier: "ExpSettingsTableViewCell")
        
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.contentInset = UIEdgeInsets(top: -tableViewHeaderHeight, left: 0, bottom: 0, right: 0)
        
//        myTableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
//        myTableView.contentInset = UIEdgeInsets(top: topBar.frame.height + topBar.frame.origin.y - (navigationController?.navigationBar.frame.height)! - UIApplication.shared.statusBarFrame.height , left: 0, bottom: 0, right: 0)
    }
}

extension SettingsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingDatas.shared.datas.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0 : return 2
            case 3 : return 3
            default : return 4
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ExpSettingsTableViewCell", for: indexPath) as? ExpSettingsTableViewCell {
                
                cell.titleLabel.text = SettingDatas.shared.datas[indexPath.section].datas[indexPath.row].title
                cell.titleImageView.image = UIImage(named: SettingDatas.shared.datas[indexPath.section].datas[indexPath.row].imageName)
                
                switch indexPath.row  {
                case 0, 2 :
                    if cell.segmentButton.numberOfSegments < 3 {
                        cell.segmentButton.insertSegment(withTitle: "High", at: 2, animated: false)
                    }else {
                        cell.segmentButton.setTitle("High", forSegmentAt: 2)
                    }
                    cell.segmentButton.setTitle("Low", forSegmentAt: 0)
                    cell.segmentButton.setTitle("Medium", forSegmentAt: 1)
                case 1 : cell.segmentButton.setTitle("JPG", forSegmentAt: 0)
                    cell.segmentButton.setTitle("PNG", forSegmentAt: 1)
                case 3 : cell.segmentButton.setTitle("MP4", forSegmentAt: 0)
                    cell.segmentButton.setTitle("MOV", forSegmentAt: 1)
                default : break
                }
                
                if indexPath.row == 0 {
                    cell.containerView.layer.cornerRadius = 8
                    cell.containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
                    cell.containerView.clipsToBounds = true
                        
                }else if indexPath.row == 3 {
                    cell.containerView.layer.cornerRadius = 8
                    cell.containerView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
                    cell.containerView.clipsToBounds = true
                        
                }else {
                    cell.containerView.layer.cornerRadius = 0
                }
                
                cell.selectionStyle = .none
                return cell
            }
            return UITableViewCell()
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "commonSettingsTableViewCell", for: indexPath) as? commonSettingsTableViewCell {
            cell.titleLabel.text = SettingDatas.shared.datas[indexPath.section].datas[indexPath.row].title
            cell.titleImageView.image = UIImage(named: SettingDatas.shared.datas[indexPath.section].datas[indexPath.row].imageName)
            
            
            if indexPath.row == 0 {
                // Set the corner radius of the view's layer
                let cornerRadius: CGFloat = 8
                
              
                // Create a custom UIBezierPath with rounded top-left and top-right corners
                let maskPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: Int(view.bounds.width) - 32, height: 44), byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))

                // Create a CAShapeLayer with the mask path
                let maskLayer = CAShapeLayer()
                maskLayer.frame = cell.containerView.bounds
                maskLayer.path = maskPath.cgPath

                // Set the mask layer of the view's layer
                cell.containerView.layer.mask = maskLayer
            }else if (indexPath.section == 0 && indexPath.row == 1) || (indexPath.section == 1 && indexPath.row == 3) || (indexPath.section == 2 && indexPath.row == 2) || (indexPath.section == 3 && indexPath.row == 3) {
                
                let cornerRadius: CGFloat = 8
                

                // Create a custom UIBezierPath with rounded top-left and top-right corners
                let maskPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: Int(view.bounds.width) - 32, height: 44), byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))

                // Create a CAShapeLayer with the mask path
                let maskLayer = CAShapeLayer()
                maskLayer.frame = cell.containerView.bounds
                maskLayer.path = maskPath.cgPath

                // Set the mask layer of the view's layer
                cell.containerView.layer.mask = maskLayer
            }
            
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        44
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        // Return the height of the header view
        return tableViewHeaderHeight
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        // Create a custom view for the header (optional)
        let headerView = HeaderView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 32))
        headerView.headerTitleLabel.text = SettingDatas.shared.datas[section].sectiontitle.uppercased()
        
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let fotterView = UIView()
        fotterView.backgroundColor = UIColor.clear // Set the background color of the header view
        
        return fotterView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
