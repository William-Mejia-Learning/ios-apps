
//let myOptional: String?

//myOptional = nil

//myOptional = "William"

//if let safeOptional = myOptional {
//    let text:String = safeOptional
//    print(safeOptional)
//}

//let text: String = myOptional ?? "I am the default value"
//
//print(text)

struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()
//myOptional = nil

myOptional?.method()



