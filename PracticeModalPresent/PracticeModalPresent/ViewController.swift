//
//  ViewController.swift
//  PracticeModalPresent
//
//  Created by 이현호 on 2021/04/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clickPresentButton(_ sender: Any) {
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") else { return }
        vcName.modalPresentationStyle = .fullScreen
        self.present(vcName, animated: true, completion: nil)
    }
    
    @IBAction func clickPresentByCodeButton(_ sender: Any) {
        let myViewController = MyViewController()
        self.present(myViewController, animated: true, completion: nil)
    }
    
    @IBAction func navigationPushButton(_ sender: Any) {
        guard let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "OrangeViewController") else { return }
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
}

