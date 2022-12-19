
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assesSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    

}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
    
    
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}


let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)

emilio.assesSituation()
emilio.medicalEmergency()
