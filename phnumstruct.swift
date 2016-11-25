//Create a PhoneNumber structure. A PhoneNumber instance has a number and
//a type. We will use only US phone numbers. A type can be mobile, home, work, main,
//home fax, work fax, pager or other. 
//Define an enumeration for phone types. 
//The PhoneNumber structure needs to have the following methods. 
//It should have an initializer that accepts only the phone number with default typebeing home. 
//It also needs an initializer that accepts both a phone number and a phonetype.
//isMobile()-> Bool --Returns true if the phone number is for a mobile phone.
//isLocal() -> Bool --Returns true if the phone number has the area code 619 or 858.
//description() -> String  --A property that returns a string description of the phone number in the format
//"type: number". For example 619 594 6191 is a work number so it would be "work:619-594-6191"

enum phType
{
    case mobile
    case home
    case work
    case main
    case homefax
    case workfax
    case pager
    case other
    init()
    {
        self = .home
    }
}



struct PhoneNumber
{
    var number:String
    var type:phType
}

extension PhoneNumber
{
    func isMobile() -> Bool
    {
        guard self.type == phType.mobile else
        {
            return false
        }
           return true
    }
    
    func isLocal() -> Bool
    {
        let areaCode = self.number.substring(to :self.number.index(self.number.startIndex,offsetBy:3))
        guard areaCode == "619" || areaCode == "858" else
        {
            return false
        }
            return true
    }
    
    func description() -> String
    {
        return " \(self.type)" + ": " + "\(self.number.phoneFormat()) "
    }
    
}

let phonenum:PhoneNumber = PhoneNumber(number: "8584567890", type: phType.init())
phonenum.isMobile()
phonenum.isLocal()
phonenum.description()
