//Create an enum with associated values for Currency.
//Currencies: Euro, US Dollar, Indian Rupee, Mexican Peso. 
//Three letter code: EUR, USD, INR, MXN 
//Symbol ("\u{20AC}", "\u{24}", "\u{20B9}", "\u{24}")
//Exchange Rate with respect to USD: 0.8904, 1, 66.7, 18.88

enum Currency
{
    case Euro
    case USDollar
    case Indian
    case Mexican
}

func code(input:Currency) -> String
{
    switch input
    {
        case .Euro:
            return "EUR"
        case .USDollar:
            return "USD"
        case .Indian:
            return "INR"
        case .Mexican:
            return "MXN"
    }
}


func symbol(input:Currency) -> String
{
    switch input
    {
        case .Euro:
            return "\u{20AC}"
        case .USDollar:
            return "\u{24}"
        case .Indian:
            return "\u{20B9}"
        case .Mexican:
            return "\u{24}"
    }
}

func exchangeRate(input:Currency) -> Double
{
    switch input
    {
        case .Euro:
            return 0.8974
        case .USDollar:
            return 1
        case .Indian:
            return 66.7
        case .Mexican:
            return 18.88
    }
}
