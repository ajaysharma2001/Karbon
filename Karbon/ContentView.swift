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
        ZStack {
            Color(red: 0/255, green: 128/255, blue: 128/255)
            .edgesIgnoringSafeArea(.all)
            TabView {
                HomeView()
                    .tabItem {
                    Text("Home")
                }.tag(1)
                FriendsView().tabItem {
                    Image(systemName: "person")
                    Text("Friends")
                }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
