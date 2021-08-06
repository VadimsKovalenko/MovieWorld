import UIKit

@IBDesignable
extension UIView {
    
    @IBInspectable
    public var cornerRadius: CGFloat {
        set (radius) {
            layer.cornerRadius = radius
            layer.masksToBounds = radius > 0
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable
    public var borderWidth: CGFloat {
        set (borderWidth) {
            layer.borderWidth = borderWidth
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor? {
        set (color) {
            layer.borderColor = color?.cgColor
        }
        get {
            if let color = layer.borderColor
            {
                return UIColor(cgColor: color)
            } else {
                return nil
            }
        }
    }
}
