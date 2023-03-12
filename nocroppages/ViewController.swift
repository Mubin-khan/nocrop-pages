//
//  ViewController.swift
//  nocroppages
//
//  Created by Mubin Khan on 3/8/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func settingsAction(_ sender: Any) {
        let vc = SettingsViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    
    @IBAction func draftAction(_ sender: Any) {
        let dfView = DraftView(frame: self.view.bounds)
        self.view.addSubview(dfView)
    }
}

