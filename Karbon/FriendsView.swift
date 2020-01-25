//
//  FriendsView.swift
//  Karbon
//
//  Created by Ajay Sharma on 2020-01-25.
//  Copyright © 2020 MrGoose. All rights reserved.
//

import SwiftUI

struct User: Hashable {
    var id: Int
    let username, carbon_footprint: String
}

struct FriendsView: View {
    let users: [User] = [
        .init(id: 0, username: "Neel", carbon_footprint: "Is at 90 points!"),
        .init(id: 1, username: "Anu", carbon_footprint: "Is at 56 points!"),
        .init(id: 2, username: "Ajay", carbon_footprint: "Is at 32 points!"),
        .init(id: 3, username: "Aatman", carbon_footprint: "Is at 12 points!")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Text("Users").font(.largeTitle)
                ForEach(users, id: \.self) { user in
                    // user row
                    HStack {
                        Image("user_icon")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .clipped()
                        VStack (alignment: .leading) {
                            Text(user.username).font(.headline)
                            Text(user.carbon_footprint).font(.subheadline)
                        }

                    }
                    
                    
                }
                //Text($0.username)
            }.navigationBarTitle(Text("Friends List"))
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
