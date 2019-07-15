//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation


public protocol ___VARIABLE_ModuleName___Presenter: class {
    // View -> Presenter
    // TODO: Declare presentation methods
    
    func viewIsReady()
    func viewDealloc()
    func viewReappear()
}


class ___VARIABLE_ModuleName___PresenterImp: NSObject {
    // MARK: Core Properties
    private weak var router: ___VARIABLE_ModuleName___Router?
    private var interactor: ___VARIABLE_ModuleName___Interactor?

    // MARK: Properties
    
    // MARK: Methods
    init(interactor: ___VARIABLE_ModuleName___Interactor?, router: ___VARIABLE_ModuleName___Router?) {
        self.interactor = interactor
        self.router     = router
    }
    deinit {
        print("Denit ___VARIABLE_ModuleName___PresenterImp")
    }
    
}

extension ___VARIABLE_ModuleName___PresenterImp: ___VARIABLE_ModuleName___Presenter {
    // View -> Presenter
    // TODO: Declare presentation methods
    
    func viewIsReady() {
        
    }
    
    func viewDealloc() {
        
    }
    
    func viewReappear(){
        
    }
}
