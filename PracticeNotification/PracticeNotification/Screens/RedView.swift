//
//  RedView.swift
//  PracticeNotification
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit
import NotificationCenter

class RedView: UIView {
    @IBOutlet weak var redButton: UIButton!

    @IBAction func DidTapOrangeButton(_ sender: Any) {
        print("red button pushed")
        NotificationCenter.default.post(name: Notification.Name("changeAllButonColor"), object: nil)
    }
}
