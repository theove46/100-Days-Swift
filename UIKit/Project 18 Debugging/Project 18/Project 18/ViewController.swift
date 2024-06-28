//
//  ViewController.swift
//  Project 18
//
//  Created by BS1098 on 28/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("I'm inside the viewDidLoad() method!")
        
        print("Some message", terminator: "\n")
        
        print(1, 2, 3, 4, 5)
        
        print(1, 2, 3, 4, 5, separator: "-")
        
        assert(1 == 1, "Maths failure!")
//        assert(1 == 2, "Maths failure!")
        
//        assert(myReallySlowMethod() == true, "The slow method returned false, which is a bad thing!")
        
        for i in 1 ... 100 {
            print("Got number \(i)")
        }

    }


}

