import UIKit

protocol Phone {
    var name: String { get }
    var canCall: Bool { get }
    var canDive: Bool { get }
}

protocol Touchable {
    var sizeScreen: Int { get }
}

protocol Moveable {
    var weight: Double { get }
}

extension Phone {
    var canDive: Bool { return self is Touchable }
    var canCall: Bool { return self is Moveable || self is Touchable}
}

struct IPhone: Phone, Touchable, Moveable {
    var name: String
    
    var sizeScreen: Int
    
    var weight: Double
}

struct NextTelRadio: Phone, Moveable {
    var name: String
    
    var weight: Double
}


let myIphone = IPhone.init(name: "AldairIphone", sizeScreen: 6, weight: 120.0)
myIphone.name
myIphone.canDive
myIphone.canCall

let myNextTel = NextTelRadio.init(name: "RadioPhone", weight: 2.0)
myNextTel.name
myNextTel.canCall
myNextTel.canDive
