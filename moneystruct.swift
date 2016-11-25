//Create a Money struct. Creating a new money instance requires an amount and
//a type of currency, which is indicated by using the enum from problem one. Once created a
//money instance does not change in value. Each instance of Money needs access to the
//same instance of a Currency enum to access the same conversion rate. The Money struct
//needs three methods: +, - and description. Both - and + operate on two Money instances.
//They return a new Money instance. If the two instances are of different currencies the result
//is in the first (left operand) currency. The method description returns a string representation
//of the money instance. The string starts with the currency symbol, followed by the amount,
//followed by a space and ends with the three character symbol for the currency. For
//example $123.12 USD. Do not worry about formatting the amount.

struct Money
{
    var amount = 0.0
    var currencyType:Currency
}

//func for addition

func +(left:Money, right:Money) -> Money
{
    if left.currencyType == right.currencyType
    {
        let sum = left.amount + right.amount
        //print(total, left.typeCurrency)
        return Money(amount:sum, currencyType: left.currencyType)
    }
    else
    {
        func convertUSD(convInput:Money) -> Double
        {
            if convInput.currencyType == Currency.Euro
            {
                return convInput.amount / exchangeRate(input: Currency.Euro)
            }
            else if convInput.currencyType == Currency.USDollar
            {
                return convInput.amount
            }
            else if convInput.currencyType == Currency.Indian
            {
                return convInput.amount / exchangeRate(input: Currency.Indian)
            }
            else //input.typeCurrency == Currency.Mexican
            {
                return convInput.amount / exchangeRate(input: Currency.Mexican)
            }
        }
        
        
        
        func convertBack(convInput:Double) -> Double
        {
            if left.currencyType == Currency.Euro
            {
                return convInput * exchangeRate(input: Currency.Euro)
            }
            else if left.currencyType == Currency.USDollar
            {
                return convInput
            }
            else if left.currencyType == Currency.Indian
            {
                return convInput * exchangeRate(input: Currency.Indian)
            }
            else //input.typeCurrency == Currency.Mexican
            {
                return convInput * exchangeRate(input: Currency.Mexican)
            }
        }
        
        
        let leftUsd = convertUSD(convInput: left)
        let rightUsd = convertUSD(convInput: right)
        let sumUsd = leftUsd + rightUsd
        let sumLeftType = convertBack(convInput: sumUsd)
        
        return Money(amount:sumLeftType, currencyType: left.currencyType)
    }
}


func -(left:Money, right:Money) -> Money
{
    if left.currencyType == right.currencyType
    {
        let total = abs(left.amount - right.amount)
        //print(total, left.typeCurrency)
        return Money(amount:total, currencyType: left.currencyType)
    }
    else
    {
        func convertUSD(convInput:Money) -> Double
        {
            if convInput.currencyType == Currency.Euro
            {
                return convInput.amount / exchangeRate(input: Currency.Euro)
            }
            else if convInput.currencyType == Currency.USDollar
            {
                return convInput.amount
            }
            else if convInput.currencyType == Currency.Indian
            {
                return convInput.amount / exchangeRate(input: Currency.Indian)
            }
            else //input.typeCurrency == Currency.Mexican
            {
                return convInput.amount / exchangeRate(input: Currency.Mexican)
            }
        }
        
        
        func convertBack(convInput:Double) -> Double
        {
            if left.currencyType == Currency.Euro
            {
                return convInput * exchangeRate(input: Currency.Euro)
            }
            else if left.currencyType == Currency.USDollar
            {
                return convInput
            }
            else if left.currencyType == Currency.Indian
            {
                return convInput * exchangeRate(input: Currency.Indian)
            }
            else //input.typeCurrency == Currency.Mexican
            {
                return convInput * exchangeRate(input: Currency.Mexican)
            }
        }
        
        let leftUsd = convertUSD(convInput: left)
        let rightUsd = convertUSD(convInput: right)
        let diffUsd = abs(leftUsd - rightUsd)
        let diffLeftType = convertBack(convInput: diffUsd)
        
        return Money(amount:diffLeftType, currencyType: left.currencyType)
    }
}

func description(descInput:Money) -> String
{
    let tempMoney:Currency = descInput.currencyType
    let descAmount = String(descInput.amount)
    let descCode = String(code(input: tempMoney))
    let descSymbol = String(symbol(input: tempMoney))
    let descConv = String(exchangeRate(input: tempMoney))
    let descOutput = descCode! + " " + descSymbol! + " " + descAmount + " conversionrate " + descConv + "USD"
    return descOutput
}

//test

let money1 = Money(amount: 1000,currencyType: Currency.Indian)
let money2 = Money(amount: 1000,currencyType: Currency.Euro)
let sumMoney = money1 + money2
let diffMoney = money1 - money2
let desc1 = description(descInput:money1)
let desc2 = description(descInput:money2)
