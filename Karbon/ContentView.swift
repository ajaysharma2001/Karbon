//
//  ContentView.swift
//  Karbon
//
//  Created by Ajay Sharma on 2020-01-25.
//  Copyright © 2020 MrGoose. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            TabView(selection: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
                /*@START_MENU_TOKEN@*/Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)/*@END_MENU_TOKEN@*/
                Text("Tab Content 3").tabItem { Text("Tab Label 3") }.tag(3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
