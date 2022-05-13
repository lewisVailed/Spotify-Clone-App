//
//  BackgroundAnimation.swift
//  Spotify-Clone-App
//
//  Created by Ayberk Bilgiç on 13.05.2022.
//

import Foundation
import SwiftUI
// don't work for now
struct ContentView: View {
    var body: some View {
        AnimatedBackground()
    }
}

struct AnimatedBackground: View {
    
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color.red, Color.blue]
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
            .animation(Animation.easeInOut(duration: 6).repeatForever()
            ).onReceive(timer, perform: { _ in
                
                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y: 2)
                self.start = UnitPoint(x: -4, y: 20)
                self.start = UnitPoint(x: 4, y: 0)
            })
    }
}
