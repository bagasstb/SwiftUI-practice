//
//  ListView.swift
//  swiftui-practice
//
//  Created by bagasstb on 28/11/20.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    
    let username, message, imageName: String
}

struct ListView: View {
    
    let users: [User] = [
        .init(id: 0, username: "Spiderman", message: "Manusia Laba-laba", imageName: "Spiderman"),
        .init(id: 1, username: "Captain America", message: "Manusia Super", imageName: "CaptainAmerica"),
        .init(id: 3, username: "Black Panther", message: "Macan Hitam", imageName: "BlackPanther")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HeroRow(user: user)
                }
            }.navigationBarTitle(Text("Marvel Hero"))
        }
    }
}

struct HeroRow: View {
    let user: User
    
    var body: some View {
        HStack(alignment: .center, spacing: 10, content: {
            Image(user.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80, alignment: .leading)
                .clipShape(Circle())
                .shadow(radius: 8)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(user.username)
                    .font(.headline)
                Text(user.message)
                    .font(.subheadline)
            }).padding()
        })
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
