protocol CanFly {
    func fly()
}


class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The birds makes a new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("Penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to life off into the air")
    }
    
    
    
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()

let myPeguin = Penguin()
myPeguin.layEgg()
myPeguin.swim()


let myPlane = Airplane()


let museum =  FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)
