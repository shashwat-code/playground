//
//  ViewController.swift
//  lifeCycle of viewController
//
//  Created by Shashwat on 01/10/21.
//

import UIKit

class ViewController: UIViewController {

//    init(with string:String) {
//        super.init(nibName: nil, bundle: nil)
//        print("init function called")
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
    override func loadView() {
        super.loadView()
        print("loadView function called")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear function called")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear function is called")
    }
    
    deinit {
        print("deinit function callled")
    }

}

