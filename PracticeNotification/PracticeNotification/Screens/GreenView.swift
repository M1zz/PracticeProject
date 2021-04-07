//
//  GreenView.swift
//  PracticeNotification
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit
import NotificationCenter

class GreenView: UIView {
    @IBOutlet weak var greenButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func didTapGreenButton(_ sender: Any) {
        print("green button pushed")
        NotificationCenter.default.post(name: Notification.Name("changeBackground"), object: nil)
    }
}
