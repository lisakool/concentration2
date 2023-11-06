//
//  ViewController.swift
//  concentration2
//
//  Created by Maksymova Yelyzaveta on 23.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var topViews: [UIView]!
    
    @IBOutlet var bottomViews: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let index = buttons.firstIndex(of: sender) else {return}
        let topView = topViews[index]
        let bottomView = bottomViews[index]
        if topView.isHidden{
            bottomView.flip(to: topView, with: .transitionFlipFromLeft)
        } else{
            topView.flip(to: bottomView, with: .transitionFlipFromRight)
        }
    }
}

extension UIView
{
    func flip(to view: UIView, with option: AnimationOptions) {
        UIView.transition(from: self, to: view, duration: 0.5, options: [option, .showHideTransitionViews], completion: nil)
    }
}

