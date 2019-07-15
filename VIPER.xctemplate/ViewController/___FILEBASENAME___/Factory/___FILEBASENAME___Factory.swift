//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

public class ___VARIABLE_ModuleName___Factory: NSObject {
    public static func create(data: Any?) -> UIViewController {
        let viewController:___VARIABLE_ModuleName___ViewController = instantiate(___VARIABLE_ModuleName___ViewController.self)
        
        let router     = viewController
        let interactor = ___VARIABLE_ModuleName___InteractorImp(data: data)
        let presenter  = ___VARIABLE_ModuleName___PresenterImp(interactor: interactor, router: router)
        
        viewController.inject(presenter: presenter)
        
        return viewController
    }
}
