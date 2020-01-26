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
    let username, carbon_footprint, imageName, points: String
}

struct FriendsView: View {
    let users: [User] = [
        .init(id: 0, username: "Neel", carbon_footprint: "Is in the lead!", imageName: "neel_icon", points: "93"),
        .init(id: 1, username: "Anu", carbon_footprint: "Is in 2nd place!", imageName: "anu_icon", points: "67"),
        .init(id: 2, username: "Ajay", carbon_footprint: "Is in 3rd place!", imageName: "ajay_icon", points: "43"),
        .init(id: 3, username: "Aatman", carbon_footprint: "You can beat them!", imageName: "aatman_icon", points: "21")
    ]
    
    var body: some View {
        NavigationView {
            List {
                HStack {//}(alignment: .center, spacing: 185) {
                    Text("Users").font(.largeTitle)
                    Spacer()
                    Text("Points").font(.largeTitle)
                }.padding(.leading, 5)
                
                ForEach(users, id: \.self) { user in
                    // user row
                    UserRow(user: user)
                }
            }.navigationBarTitle("Friends List")
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
        }
    }
}

struct UserRow: View {
    let user: User
    
    var body: some View {
        HStack {
            Image(user.imageName)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .frame(width: 70, height: 70)
            HStack (){
                VStack (alignment: .leading) {
                    Text(user.username)
                        .font(.system(.title, design: .rounded))
                    Text(user.carbon_footprint)
                        .font(.system(.subheadline, design: .rounded))
                }.padding(.leading, 5)
                Spacer()
                Text(user.points)
                    .font(.system(.largeTitle, design: .rounded))
            }
            
        }.padding(.init(top: 5, leading: 0, bottom: 5, trailing: 0))
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
