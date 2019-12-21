//
//  CreateRequestPresenter.swift
//  MusicMas
//
//  Created by thomas anderson on 12/21/19.
//  Copyright (c) 2019 juan Andrés. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CreateRequestPresentationLogic
{
  func presentSomething(response: CreateRequest.Something.Response)
}

class CreateRequestPresenter: CreateRequestPresentationLogic
{
  weak var viewController: CreateRequestDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: CreateRequest.Something.Response)
  {
    let viewModel = CreateRequest.Something.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}