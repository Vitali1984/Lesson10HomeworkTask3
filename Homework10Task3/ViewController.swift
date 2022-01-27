//
//  ViewController.swift
//  Homework10Task3
//
//  Created by Виталий on 27.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onStartWCButton(_ sender: Any) {
        let vc = UIStoryboard(name: "GameViewController", bundle: Bundle.main).instantiateInitialViewController() as! GameViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func StartWSButton(_ sender: Any) {
        let vc = UIStoryboard(name: "GameCodeViewController", bundle: Bundle.main).instantiateInitialViewController() as! GameCodeViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

