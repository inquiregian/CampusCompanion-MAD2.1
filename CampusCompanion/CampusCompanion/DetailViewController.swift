import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    var studentName: String = ""
    var notificationsEnabled: Bool = false
    var selectedRole: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Campus Events"

        let notificationStatus =
            notificationsEnabled ? "On" : "Off"

        messageLabel.text =
        """
        Welcome, \(studentName)!
        Role: \(selectedRole)
        Notifications: \(notificationStatus)
        """
    }
}
