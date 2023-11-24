//
//  ContentView.swift
//  StepperAndDatePicker
//
//  Created by Akash Belekar on 20/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepTime = 8.0
    @State private var coffeAmount = 1
    
    
    var body: some View {
        NavigationView {
            Form{
                VStack(alignment: .leading,spacing: 0){
                    Text("When do you want to weak up?")
                    
                    DatePicker("", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
                }
                
                VStack(alignment: .leading,spacing: 0){
                    Text("Desired amount of sleep")
                    
                    Stepper("\(sleepTime.formatted()) hours", value: $sleepTime, in: 8...12,step: 0.25)
                }
                VStack(alignment: .leading,spacing: 0){
                    Text("Daily coffee intake")
                    
                    Stepper(coffeAmount == 1 ? "1 cup" : "\(coffeAmount) cups"  , value: $coffeAmount, in: 1...20)
                }
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate") {
                    calculteBedTime()
                }
            }
        }
    }
    func calculteBedTime() {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
