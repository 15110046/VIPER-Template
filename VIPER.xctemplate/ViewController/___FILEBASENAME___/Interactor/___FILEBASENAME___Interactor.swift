//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

public protocol ___VARIABLE_ModuleName___Interactor: class {
    // Any -> Interactor
    // TODO: Declare use case methods
    
}


class ___VARIABLE_ModuleName___InteractorImp: NSObject {

    // MARK: Properties
    private var data: Any?
    
    // MARK: Methods
    init(data: Any?) {
        self.data = data
    }
    deinit {
        print("Denit ___VARIABLE_ModuleName___InteractorImp")
    }
}

extension ___VARIABLE_ModuleName___InteractorImp: ___VARIABLE_ModuleName___Interactor {
    // Any -> Interactor
    // TODO: Declare use case methods
}
