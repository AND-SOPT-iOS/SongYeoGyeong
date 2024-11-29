//
//  SwiftUIAignView.swift
//  SeminarOf35
//
//  Created by 송여경 on 11/30/24.
//

import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subTitle: String
    let description: String
}

struct ProfileView: View {
    let profile: Profile
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(
                    alignment: .leading,
                    spacing: 16
                ) {
                    HStack(spacing: 12) {
                        Image(profile.imageName)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(profile.title)
                                .font(.headline)
                            Text(profile.subTitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    Text(profile.description)
                        .font(.body)
                        .padding(.horizontal)
                }
            }
            .navigationBarItems(
                leading: Button(action: {
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                }
            )
            .navigationBarTitle(
                "Profile",
                displayMode: .inline
            )
        }
    }
}

#Preview {
    ProfileView(profile: Profile(
        imageName: "pretzel",
        title: "Pretzel",
        subTitle: "Busy Spaniel",
        description: "Pretzel sat amongst the clump of smooth beach stones. It was a bright, clear day, with friendly waves stretching out all the way to Inishmore, yet the dull, gray sand around him managed to drag down his thoughts to the dire reality he found himself within. He could hear faint human noises all the way from Salthill, and even more vividly smell the beachside treats being unwrapped and passed around amidst the playtime. Yet for all the smells of the beach and ocean that swirled around him, salty and savory, Pretzel's mind was lost staring blankly into dewy moss covering the rock just in front of him.\n\nThe road here had been a long one, and its end as dissatisfying as the beginning. The journey had taken its toll: his hair was clumped and scratchy, his frame a scraggly mess worn from tussles and tears."
    ))
}
