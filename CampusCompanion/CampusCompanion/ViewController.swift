import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var UITextField: UITextField!
    @IBOutlet weak var UISwitch: UISwitch!
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!

    @IBAction func exploreButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowDetailSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ShowDetailSegue" {

            let destination =
                segue.destination as! DetailViewController

            destination.studentName =
                UITextField.text ?? ""

            destination.notificationsEnabled =
                UISwitch.isOn

            destination.selectedRole =
                roleSegmentedControl.selectedSegmentIndex == 0
                ? "Student"
                : "Faculty"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
