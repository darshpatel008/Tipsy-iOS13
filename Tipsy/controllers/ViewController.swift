
import UIKit

class ViewController: UIViewController {

    var calculateBrain = CalculateBrain()
  
        
    
    var result = ""
    var buttonPressed = ""
    var userValue = ""
    
    @IBOutlet weak var billTextField: UITextField!
    
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
  
    @IBAction func stepperValueChange(_ sender: UIStepper)
    {
       
        
        let convertedvalue = calculateBrain.stepper(value:  sender.value)
        
     

        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        userValue = convertedvalue
        
        billTextField.endEditing(true)
    }
    
    @IBAction func tipChangeButton(_ sender: UIButton) 
    {
        buttonPressed = sender.currentTitle!
        
        billTextField.endEditing(true)
        
        let isbutton1 =  calculateBrain.button1(whichbutton: sender.currentTitle!)
        
        let isbutton2 =  calculateBrain.button2(whichbutton: sender.currentTitle!)
        
        let isbutton3 =  calculateBrain.button3(whichbutton: sender.currentTitle!)
       
        //here we pass bool value
        zeroPctButton.isSelected = isbutton1
        tenPctButton.isSelected = isbutton2
        twentyPctButton.isSelected = isbutton3
       
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) 
    {
        let userInput = Float(billTextField.text!)!
        
        let ourResultIs = calculateBrain.calculation(userInput: userInput)
        
        result = ourResultIs
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) 
    {
        if (segue.identifier == "goToResult")
        {
            let destinationVc = segue.destination as! ResultViewController
            
            destinationVc.resultIS = result
            destinationVc.splitbetween = userValue
            destinationVc.tippercentage = buttonPressed
        }
    }
    
    
  
    

}

