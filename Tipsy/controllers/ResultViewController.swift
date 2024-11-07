

import UIKit

class ResultViewController: UIViewController {

    
    var resultIS = ""
    var tippercentage = ""
    var splitbetween = ""
   
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var settingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = resultIS + "₹"
        settingLabel.text = "Split between \(splitbetween) person with \(tippercentage) tip "
      
    }
   
    @IBAction func recalculateButton(_ sender: Any) 
    {
        dismiss(animated: true)
        
    }
    
}
