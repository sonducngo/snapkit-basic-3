//
//  ViewController.swift
//  SnapKitBasicTutorial3
//
//  Created by Son Ngo on 2/16/17.
//  Copyright © 2017 Son. All rights reserved.
//

import UIKit
import SnapKit // 1 - import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 2 - Make red subview and add to the view hierarchy
        let redView             = UIView()
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        
        // 3 - Add autolayout constraints via SnapKit
        redView.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)                      // 4 - make 100x100 square
            
            make.centerX.equalToSuperview()                     // 5 - Set the X position centered to the superview
            make.centerY.equalToSuperview().multipliedBy(0.5)   // 6 - Set the Y position 25% above the center of the superview
        }
        
        // 7 - Make the blue subview and add it to the view hierarchy
        let blueView             = UIView()
        blueView.backgroundColor = UIColor.blue
        self.view.addSubview(blueView)
        
        // 8 - add autolayout constraints via SnapKit
        blueView.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)                      // 4 - make 100x100 square
            
            make.centerX.equalToSuperview()                     // 5 - make the X position centered to the superview
            make.centerY.equalToSuperview().multipliedBy(1.5)   // 6 - make the y position 25% below the center of the superview
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

