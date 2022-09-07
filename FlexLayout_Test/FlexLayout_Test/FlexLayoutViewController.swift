//
//  FlexLayoutViewController.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/07.
//

import UIKit

final class FlexLayoutViewController: UIViewController {
    
    private let flexLayoutView = FlexLayoutView()
    
    override func loadView() {
        self.view = flexLayoutView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

}
