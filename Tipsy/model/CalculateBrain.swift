struct CalculateBrain
{
    var buttonvalue = 0
    var steppercurrentvalue = 0.0
    
    mutating func button1(whichbutton: String) -> Bool
    {
        if(whichbutton == "0%")
        {
            buttonvalue = 0
            return true
        }
        else
        {
            return false
        }
    }
    mutating func button2(whichbutton: String) -> Bool
    {
        if(whichbutton == "10%")
        {
            buttonvalue = 10
            return true
        }
        else
        {
            return false
        }
    }
    mutating func button3(whichbutton: String) -> Bool
    {
        if(whichbutton == "20%")
        {
            buttonvalue = 20
            return true
        }
        else
        {
            return false
        }
    }
    
    mutating func stepper(value :Double) -> String
    {
        if value >= steppercurrentvalue
        {
            steppercurrentvalue = value
            return  String(format: "%.0f", value)
        }
        else
        {
            return ""
        }
    }
    
    func calculation(userInput: Float) ->String
    {
        let convertedsteppervalue = Float(steppercurrentvalue)
        let convertedButtonValue = Float(buttonvalue)
        
        let tipamount = userInput * convertedButtonValue/100
        let totalBill = userInput + tipamount
        
        let amountPerPerson = totalBill / convertedsteppervalue
        
        let result = String(format:"%.2f" , amountPerPerson)
    
        return result
    }
}
