//
//  HomeView.swift
//  Karbon
//
//  Created by Ajay Sharma on 2020-01-25.
//  Copyright © 2020 MrGoose. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: 20, antialiased: false)
                    .foregroundColor(Color.red)
                    .padding(.vertical, 10)
                Circle()
                    .strokeBorder(lineWidth: 20, antialiased: false)
                    .foregroundColor(Color.green)
                    .padding(35)
                    
                VStack {
                    Text("CO2 Footprint")
                        .foregroundColor(Color.red)
                    Text("Points")
                        .foregroundColor(Color.green)
                }
            
            }

            List {
                Section(header: Text("Break Down")) {
                    HStack {
                        Text("Driving")
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .padding(.vertical)
                    }
                    HStack {
                        Text("Food")
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .padding(.vertical)
                            .padding(.leading, 14)
                    }
                }
            }.environment(\.defaultMinListRowHeight, 100)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
