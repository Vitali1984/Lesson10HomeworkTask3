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
        labelMove.backgroundColor = .systemRed
        customView.addSubview(labelMove)
        
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(onTapAction))
        view.addGestureRecognizer(tap)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(onPanAction))
        view.addGestureRecognizer(pan)

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Layout
    // MARK: -
    
//    override func viewWillLayoutSubviews() {
//    }

    // MARK: - ActionsRecognizer
    // MARK: -
    @objc func onTapAction(gesture: UITapGestureRecognizer) {
        labelMove.frame.origin = gesture.location(in: view)
        labelMove.frame.size = CGSize(width: 100, height: 100)
        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
        labelMove.clipsToBounds = true
        
    }
    @objc func onPanAction(gesture: UIPanGestureRecognizer) {
        labelMove.frame.origin = gesture.location(in: view)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
