//
//  NotificationsView.swift
//  Instagram
//
//  Created by Keshav Kishore on 29/06/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(0...30, id: \.self) { num in
                    if num % 2 == 0 {
                        NotificationFollowView()
                    } else {
                        NotificationLikeView()
                    }
                   
                }
            } .navigationTitle("Notifications")
        }
    }
}



struct NotificationFollowView: View {
    var body: some View {
        HStack {
            //User Image
            Image("user\(Int.random(in: 1...5))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            // text,date
            VStack(alignment: .leading) {
                Text("Johnapplesead started following you")
                Text("\(Int.random(in: 3...59)) Minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            // follow button
            
            Button {
                // Do Nothing
            } label: {
                Text("Follow")
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(.link))
                    .cornerRadius(8)
            }
        }
    }
    
}


struct NotificationLikeView: View {
    var body: some View {
        HStack {
            //User Image
            let userImageName = "user\(Int.random(in: 1...5))"
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            // text,date
            VStack(alignment: .leading) {
                Text("TimCook liked your post.")
                Text("\(Int.random(in: 3...59)) Minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
           //Post View
            let imageName = "image\(Int.random(in: 1...5))"
            let image = Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44, alignment: .center)
            NavigationLink {
                PostView(userImageName: userImageName, imageName: imageName)
            } label: {
                Spacer()
                image
            }
            .frame(width: 44, height: 44, alignment: .center)
            .background(Color.red)

        }
    }
}


struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
