//
//  FlexLayoutViewModel.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/07.
//

import RxCocoa
import RxSwift
import RxMoya
import Moya

protocol ViewModelInputLogic {
  
}

protocol ViewModelOutputLogic {
  
}

protocol ViewModelLogic: AnyObject {
    var input: ViewModelInputLogic { get }
    var output: ViewModelOutputLogic { get }
}

final class FlexLayoutViewModel: ViewModelLogic, ViewModelOutputLogic, ViewModelInputLogic {
    
    var input: ViewModelInputLogic { self }
    var output: ViewModelOutputLogic { self }
    
}
