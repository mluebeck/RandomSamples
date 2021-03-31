//
//  ContentView.swift
//  MVVMSample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

import SwiftUI

struct RandomView: View {
    
    @State private var randomElements = [Double]()        
    
    func refreshRandomData() {
        self.randomElements.removeAll()
        let i = Int.random(in: 0..<20)
         for _ in 0...i {
            self.randomElements.append(Double.random(in: 0..<100))
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Button("New Numbers") {
                    self.refreshRandomData()
                }
                List(self.randomElements, id: \.self) {
                    Text("\($0)")
                }
        }
        .navigationBarTitle("Random Numbers")
            .onAppear {
                self.refreshRandomData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
