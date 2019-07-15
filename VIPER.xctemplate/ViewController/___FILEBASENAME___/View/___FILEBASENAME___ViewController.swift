//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

protocol ___VARIABLE_ModuleName___ViewControllerReloadUI: class {
    
}

class ___VARIABLE_ModuleName___ViewController: UIViewController {
    // MARK: Core Properties
    private var presenter: ___VARIABLE_ModuleName___Presenter?
    
    // MARK: Properties

    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initNavigation()
        presenter?.viewIsReady()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter = nil
    }
    
    deinit {
        print("Denit ___VARIABLE_ModuleName___ViewController")
        presenter?.viewDealloc()
    }
    
    
    // MARK: Methods private
    private func initNavigation() {
        self.title = "___VARIABLE_ModuleName___"
    }
    
    // MARK: Methods public
    func inject(presenter: ___VARIABLE_ModuleName___Presenter?) {
        self.presenter = presenter
    }
    
    // MARK: Action
    
    
}

extension ___VARIABLE_ModuleName___ViewController: ___VARIABLE_ModuleName___ViewControllerReloadUI {
    // View -> View
    // TODO: Declare view methods
    
}

