//
//  GameCodeViewController.swift
//  Homework10Task3
//
//  Created by Виталий on 27.01.22.
//

import UIKit

class GameCodeViewController: UIViewController {
    
    private var labelMove: UILabel!
    
    // MARK: - ViewControllerLifeCycle
    // MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        
        labelMove = UILabel()
        customView.addSubview(labelMove)
        
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(onPanAction))
        view.addGestureRecognizer(pan)

        // Do any additional setup after loading the view.
    }
    
    // MARK: - ActionsRecognizer
    // MARK: -

    @objc func onPanAction(gesture: UIPanGestureRecognizer) {
        labelMove.frame.origin = gesture.location(in: view)
        labelMove.frame.size = CGSize(width: 100, height: 100)
        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
        labelMove.clipsToBounds = true
        labelMove.backgroundColor = .systemRed
    }
}
