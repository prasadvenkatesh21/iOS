//A phone number in this country has 10 digits like 6195946191 or 619JYDN191. It
//is hard to read a phone number formatted like that. One common format is 619-594-6191.
//Add the method phoneFormat to the String class. The method phoneFormat converts
//strings like "6195946191", "619 594 6191", "619 5946191" and "619-594-6191" to
//"619-594-6191". That is all the methods below will return "619-594-6191"

extension String
{
    func phoneFormat() -> String
    {
        let toFormat = self.components(separatedBy: .whitespaces)
        var formattedString = toFormat.joined(separator: "")
        for character in formattedString.characters
        {
            if character == "-"
            {
                return formattedString
            }
        }
        formattedString.insert("-", at: formattedString.index(formattedString.startIndex,offsetBy:3))
        formattedString.insert("-", at: formattedString.index(formattedString.startIndex,offsetBy:7))
        return formattedString
    }
}

var abcd = "1234567890".phoneFormat()
