//: Playground - noun: a place where people can play

// BEGIN playground-import
import UIKit
import PlaygroundSupport
// END playground-import

// BEGIN vc_start
class DemoViewController : UIViewController {
    
    var label : UILabel!
    var imageView = UIImageView()
    var tapCount = 0
// END vc_start

    // BEGIN func_start
    // Draws and returns an image
    func drawImage(size : CGSize, color: UIColor) -> UIImage? {
    // END func_start
        
        // BEGIN create_context
        // Create a canvas for drawing
        UIGraphicsBeginImageContext(size)
        
        // When this function exits, tear down the canvas
        defer {
            UIGraphicsEndImageContext()
        }
        // END create_context

        // BEGIN get_context
        // Get a context for drawing with
        let context = UIGraphicsGetCurrentContext()
        
        // 'context' can now be used like an object, whereas
        // it couldn't in Swift 2
        context?.setFillColor(color.cgColor)
        context?.fillEllipse(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        // END get_context
        
        // BEGIN end_func
        // Return the image now in the canvas
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    // END end_func

    // BEGIN view_did_load
    override func viewDidLoad() {
        
        label = UILabel()
        label.frame = CGRect(x: 50, y: 50, width: 200, height: 50)
        label.textColor = UIColor.white
        label.text = ""
        
        self.view.addSubview(label)
        // END view_did_load

        // BEGIN image_view
        imageView.frame = CGRect(x: 50, y: 150, width: 250, height: 250)
        imageView.image = drawImage(size: imageView.frame.size, color: UIColor.red)
        
        self.view.addSubview(imageView)
        // END image_view

        // BEGIN button
        let button = UIButton()
        
        button.setTitle("Tap This Button!", for: [])
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        
        // Note the #selector syntax, camel-case enumeration, simplified parameter names
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        self.view.addSubview(button)
        
    }
    // END button

    // BEGIN button_tapped
    func buttonTapped() {
        tapCount += 1
        label.text = "Tapped \(tapCount) times"
        let hue = CGFloat(arc4random()) / CGFloat(RAND_MAX)
        let newColor = UIColor(hue: hue, saturation: 0.7, brightness: 1.0, alpha: 1.0)
        imageView.image = drawImage(size: imageView.frame.size, color: newColor)
    }
}
// END button_tapped

// BEGIN create_view_controller
let viewController = DemoViewController()
// END create_view_controller


// BEGIN playground_setup
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = viewController
// END playground_setup