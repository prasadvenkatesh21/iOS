//Add a method asPhoneNumber to the String class. The method takes a string of
//the format "work: 619-594-6191" and returns a PhoneNumber instance with the given types
//and number. If the string is not of the format "type: number" then the method
//asPhoneNumber returns nil

extension String
{
    func asPhoneNumber() -> PhoneNumber?
    {
        if let range = self.range(of: ":")
        {
            let typeString = self[self.startIndex..<range.lowerBound]
            let numString = self[range.upperBound..<self.endIndex]
            switch typeString
            {
            case "work":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.work)
                return  formatPhoneNum
            case "mobile":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.mobile)
                return  formatPhoneNum
            case "home":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.home)
                return  formatPhoneNum
            case "main":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.main)
                return  formatPhoneNum
            case "homefax":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.homefax)
                return  formatPhoneNum
            case "workfax":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.workfax)
                return  formatPhoneNum
            case "pager":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.pager)
                return  formatPhoneNum
            case "other":
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.other)
                return  formatPhoneNum
            default:
                let  formatPhoneNum:PhoneNumber = PhoneNumber(number: numString, type: phType.home)
                return  formatPhoneNum
            }
        }
        else
        {
            return nil
        }
    }
}

let phonenum2 = "work: 123-456-7890"
let formattedNum = phonenum2.asPhoneNumber()
