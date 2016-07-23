

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var parent: UIView!
    let messageTextViewMaxHeight: CGFloat = 100

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.messageTextView.delegate = self
    }
    
    @IBAction func Reset(sender: AnyObject) {
        messageTextView.text = ""
        messageTextView.frame.size.height = messageTextView.contentSize.height
        messageTextView.scrollEnabled = false
        self.parent.layoutIfNeeded()
    }
    
    func textViewDidChange(textView: UITextView) {
        if textView.frame.size.height >= self.messageTextViewMaxHeight {
            
            textView.scrollEnabled = true
            
        } else {
            textView.scrollEnabled = false
            textView.frame.size.height = textView.contentSize.height
        }
    }

}

