//
//  OrangeView.swift
//  PracticeNotification
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit
import NotificationCenter

class OrangeView: UIView {
    @IBOutlet weak var orangeButton: UIButton!

    @IBAction func DidTapOrangeButton(_ sender: Any) {
        print("orange button pushed")
        NotificationCenter.default.post(name: Notification.Name("changeUpButtonColor"), object: nil)
    }
}
