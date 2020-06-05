//
//  ViewController.swift
//  YouTube
//
//  Created by SARA Technologies  on 26/05/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

