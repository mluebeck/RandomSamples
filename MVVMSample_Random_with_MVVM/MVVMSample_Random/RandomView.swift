//
//  ContentView.swift
//  MVVMSample_Random
//
//  Created by Mario Rotz on 30.03.21.
//

import SwiftUI

struct RandomView: View {
    // viewModel ist ein überwachtes Objekt. Wenn sich im Objekt was ändert, zeichne die View neu!
    @ObservedObject var viewModel = RandomViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Button("New Numbers") {
                    self.viewModel.updateRandomNumbers()
                }
                List(self.viewModel.getNumbers(), id: \.self) {
                    Text("\($0)")
                }
        }
            .navigationBarTitle("Random Numbers")
                .onAppear {
                    self.viewModel.updateRandomNumbers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RandomView()
    }
}
