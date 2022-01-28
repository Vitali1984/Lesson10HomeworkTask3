//
//  GameViewController.swift
//  Homework10Task3
//
//  Created by Виталий on 27.01.22.
//

import UIKit

class GameViewController: UIViewController {
    private var labelMove: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        labelMove = UILabel()
        view.addSubview(labelMove)
}
    
    @IBAction func onPanAction(_ sender: UIPanGestureRecognizer) {
        print(sender.location(in: view))
        labelMove.frame.origin = sender.location(in: view)
        labelMove.frame.size = CGSize(width: 100, height: 100)
        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
        labelMove.clipsToBounds = true
        labelMove.backgroundColor = .systemRed
       
        
    }
    
    //    @IBAction func onPanGesture(gesture: UIPanGestureRecognizer) {
//        labelMove = UILabel()
//        labelMove.frame.origin = gesture.location(in: view)
//        labelMove.frame.size = CGSize(width: 100, height: 100)
//        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
//        labelMove.clipsToBounds = true
//        labelMove.backgroundColor = .systemRed
//        view.addSubview(labelMove)
//        print(gesture.location(in: view))
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
