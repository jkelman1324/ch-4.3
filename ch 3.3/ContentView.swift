//
//  ContentView.swift
//  ch 3.3
//
//  Created by Jake Kelman on 9/24/21.
//

import SwiftUI

struct ContentView: View {
    @State var tabtag:Int = 1
    var body: some View {
        TabView (selection: $tabtag) {
            Text("This tab's tag is " + String(tabtag))
            .tabItem {
                Image(systemName: "tortoise")
                Text("Tab 1")
            }.tag(1)
           
            Button(action: {
                tabtag = 3
            }, label: {
                Text("Take me to tab 3")
            })
            .tabItem {
                Image(systemName: "arrow.right")
                Text("Tab 2")
            }.tag(2)
             
            List(0..<100, id: \.self) { num in
                Text("This is Tab 3!")
            }.tabItem {
                VStack {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
