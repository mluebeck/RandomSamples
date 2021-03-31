//
//  RandomViewModel.swift
//  MVVMSample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

import SwiftUI

// View Model : stellt der View die Liste von Zufallszahlen zur Verfügung
class RandomViewModel: ObservableObject {
    @Published var randomNumbers: RandomModel = RandomModel()
    
    func updateRandomNumbers() {
        self.randomNumbers.refreshRandomData()
        objectWillChange.send()
    }
    
    func getNumbers() -> [Double] {
        return randomNumbers.getRandomElements()
    }
}
