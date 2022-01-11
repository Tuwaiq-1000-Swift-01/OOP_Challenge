import UIKit

enum calculatorErorr : Error {
    case notAccept
    case InvalidOP
}

func calculator( nam1 : Int ,  nam2 : Int , op : Character )throws {
    switch op {
    case "+" :
        print(nam1 + nam2)
    case "-" :
        print(nam1 - nam2)
    case "*" :
        print(nam1 * nam2)
    case "/" :
        if nam2 == 0 {
            throw calculatorErorr.notAccept
        }
        print(nam1 / nam2)
    default:
        throw calculatorErorr.InvalidOP
        }
    }

do {
    try calculator(nam1: 1, nam2: 0, op: "/")
}catch {
    print(error)
}



