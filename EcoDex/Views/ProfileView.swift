//
//  ProfileView.swift
//  EcoDex
//
//  Created by Serafin dela Paz on 4/18/23.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var mode
    @State private var numberOfPlants = 57
    @State private var name = "Name"
    @State private var username = "username"
    let plant: Plant
    
    var body: some View {
            ZStack {
                Color("ThemeColor")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Spacer()
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color("TertiaryTheme"))
                            .offset(x: -165, y: -380)
                    }
                    HStack {
                        Circle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(Color("TertiaryTheme"))
                            .offset(x: 30, y: -300)
                            .shadow(color: Color(.gray).opacity(0.4), radius: 7)
                        Spacer()
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 200, height: 40)
                                    .cornerRadius(17)
                                    .offset(x: -60, y: -5)
                                    .foregroundColor(.white)
                                    .shadow(color: Color(.gray).opacity(0.4), radius: 5)
                                Text("\(name)")
                                    .font(.headline)
                                    .offset(x: -120, y: -5)
                            }
                            ZStack {
                                Rectangle()
                                    .frame(width: 200, height: 40)
                                    .cornerRadius(17)
                                    .offset(x: -60, y: 5)
                                    .foregroundColor(.white)
                                    .shadow(color: Color(.gray).opacity(0.4), radius: 5)
                                Text("@\(username)")
                                    .font(.headline)
                                    .offset(x: -100, y: 5)
                            }
                        }
                        .offset(x: 30, y: -300)
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 350, height: 80)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            .shadow(color: Color(.gray).opacity(0.4), radius: 5)
                        Text("Hi, I'm (Name)! I'm currently collecting endemic plants in the LA area :)")
                            .frame(width: 330, height: 70)
                    }
                        .offset(x: 0, y: -290)
                    Rectangle()
                        .frame(width: 400, height: 10)
                        .cornerRadius(15)
                        .offset(x: 0, y: -275)
                        .foregroundColor(Color("TertiaryTheme"))
                    VStack {
                        Text("EcoDex Entries")
                            .font(.title2).bold()
                            .foregroundColor(Color("TertiaryTheme"))
                            .offset(x: 0, y: 0)
                        ZStack {
                            Image("DS")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 70, height: 70)
                                .shadow(color: Color(.gray).opacity(0.4), radius: 5)
                            Text("\(numberOfPlants)")
                                .foregroundColor(.white)
                                .font(.subheadline).bold()
                                .offset(x: 0, y: 8)
                        }
                    }
                    .offset(x: 0, y: -260)
                    Text("Recent Entries")
                        .font(.title2).bold()
                        .foregroundColor(Color("TertiaryTheme"))
                        .offset(x: 0, y: -257)
                    VStack {
                        NothingToSeeHereView()
                    }
                    .offset(x: 0, y: -257)
                    Spacer()
                }
                .offset(x: 0, y: UIScreen.main.bounds.height / 10 + 170)
            }
        }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(plant: mockPlant[0])
    }
}
