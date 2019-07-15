# VIPER-Template
## To use the template please add the code below to your project.
```html
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

```



