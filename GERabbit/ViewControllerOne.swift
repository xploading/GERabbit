//
//  ViewControllerOne.swift
//  GERabbit
//
//  Created by QTJT on 2017/5/31.
//  Copyright © 2017年 Rabbit. All rights reserved.
//

import UIKit


class ViewControllerOne: GEViewController {
    var testView : ZZView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func zzAddSubViews() {
        self.view.addSubview(testView!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        let vc = ViewControllerTwo()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
