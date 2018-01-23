//
//  ViewController.swift
//  dyn-shared-state
//
//  Created by David Wagner on 23/01/2018.
//  Copyright © 2018 David Wagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let foo = Foo(name: "called-directly")
        Foo.setStaticInteger(12)
        print(foo)
        
        let bar = Bar()
        print(bar)
        print(Bar())

        print(foo)
    }

}

