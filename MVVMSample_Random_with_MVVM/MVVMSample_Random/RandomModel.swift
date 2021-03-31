//
//  RandomModel.swift
//  MVVMSample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

// Modell Klasse: Verwaltet eine Liste von Zufallszahlen
class RandomModel  {
    private var randomElements = [Double]()
    
    func getRandomElements() -> [Double] {
        return self.randomElements
    }
    
    func refreshRandomData() {
        self.randomElements.removeAll()
        let i = Int.random(in: 0..<20)
         for _ in 0...i {
            self.randomElements.append(Double.random(in: 0..<100))
        }
    }
}
