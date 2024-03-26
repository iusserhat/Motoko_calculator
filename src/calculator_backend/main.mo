
actor SimpleCalculator {
    
    var accumulator: Int = 0

    
    public func add(value: Int) async -> Int {
        accumulator += value
        return accumulator
    }

    public func subtract(value: Int) async -> Int {
        accumulator -= value
        return accumulator
    }

 
    public func multiply(value: Int) async -> Int {
        accumulator *= value
        return accumulator
    }


    public func divide(value: Int) async -> Int? {
        guard value != 0 else { 
            return nil
        }
        accumulator /= value
        return accumulator
    }

    public func reset() async {
        accumulator = 0
    }
}
