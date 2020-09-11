//
//  ViewController.swift
//  LazoReports
//
//  Created by Cobixs on 09/09/2020.
//  Copyright (c) 2020 Cobixs. All rights reserved.
//

import UIKit
import LazoReports

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let selectReportViewController = SelectReportViewController()
        selectReportViewController.modalPresentationStyle = .fullScreen
        present(selectReportViewController, animated: false, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
