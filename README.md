# VIPER-Template
Clean Architecture iOS


To use the template please add the code below to your project.
                                                |
       _________________________________________|
      |
      V

import UIKit

extension NSObject {
    public class var className:String {
        get {
            return NSStringFromClass(self).components(separatedBy: ".").last!
        }
    }
    
}

protocol StoryboardInstatiable {}

func instantiate<T: StoryboardInstatiable>(_: T.Type) -> T where T: NSObject {
    let storyboard = UIStoryboard(name: T.className, bundle: nil)
    return storyboard.instantiateInitialViewController() as! T
}

func instantiate<T: StoryboardInstatiable>(_: T.Type, storyboard: String) -> T where T: NSObject {
    let storyboard = UIStoryboard(name: storyboard, bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: T.className) as! T
}

extension UIViewController: StoryboardInstatiable {}



protocol NibInstantiable {}

func instantiateFromNib<T: NibInstantiable, U: Any>(_: T.Type, owner: U) -> T where T: NSObject {
    return UINib(nibName: T.className, bundle: nil).instantiate(withOwner: owner, options: nil)[0] as! T
}

func instantiateFromNib<T: Any>(identifier: String, owner: T) -> UIView {
    return UINib(nibName: identifier, bundle: nil).instantiate(withOwner: owner, options: nil)[0] as! UIView
}
extension UIView: NibInstantiable {}

func delay(sec:Double, handler:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + sec, execute:handler)
}


extension UICollectionView {
    func dequeueReusableCellWithType<T: UICollectionViewCell>(type: T.Type, forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }
    func registerNibForCellWithType<T: UICollectionViewCell>(type:T.Type){
        let className = type.className
        let nib = UINib(nibName: type.className, bundle: nil)
        register(nib, forCellWithReuseIdentifier: className)
    }
}
extension UITableView {
    func dequeueReusableCellWithType<T: UITableViewCell>(type: T.Type, forIndexPath indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
    func registerNibForCellWithType<T: UITableViewCell>(type:T.Type){
        let className = type.className
        let nib = UINib(nibName: type.className, bundle: nil)
        register(nib, forCellReuseIdentifier: className)
    }
}

extension UIViewController {
    func chuyenManHinh(nameStoryboard:String,idStoryboard:String) {
        let storyboard = UIStoryboard(name: nameStoryboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: idStoryboard)
        present(vc, animated: true, completion: nil)
    }
}
