//
//  ContentView.swift
//  TimeAllotedToAnimation
//
//  Created by chandni chaudhari on 06/11/22.
//

import SwiftUI

struct ContentView: View {
    var currentDateTime = Date()
    
    var body: some View {
        VStack {
            
            Text("On duty one hour spent!")
                .foregroundColor(.purple)
            Image("Man")
            Text("spent 7 am - 8 am")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//struct ContentView: View {
//    @State var timeRemaining = 10
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//
//    var body: some View {
//        Text("\(timeRemaining)")
//            .onReceive(timer) { _ in
//                if timeRemaining > 0 {
//                    timeRemaining -= 1
//                }
//            }
//    }


class MyButton: UIButton {
    var action: (() -> Void)?
    
    func whenButtonIsClicked(action: @escaping () -> Void) {
        self.action = action
        self.addTarget(self, action: #selector(MyButton.clicked), for: .touchUpInside)
        Text("stop")
    }
    @objc func clicked() {
        action?()
    }
}
