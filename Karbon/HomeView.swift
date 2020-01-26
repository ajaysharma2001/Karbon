//
//  HomeView.swift
//  Karbon
//
//  Created by Ajay Sharma on 2020-01-25.
//  Copyright © 2020 MrGoose. All rights reserved.
//

    /*
    Arc(startAngle: .degrees(270), endAngle: .degrees(80), clockwise: false)
        .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .frame(width: 300, height: 300)
    Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        .stroke(Color.red.opacity(0.1), lineWidth: 10)
        .frame(width: 300, height: 300)
        
    
    Arc(startAngle: .degrees(270), endAngle: .degrees(200), clockwise: false)
        .stroke(Color.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
        .frame(width: 270, height: 270)
    Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        .stroke(Color.green.opacity(0.1), lineWidth: 10)
    .frame(width: 270, height: 270)
        
*/

import SwiftUI

struct HomeView: View {
    @State var drawRed = false
    @State var drawGreen = false
    @State var drawDrive = false
    @State var drawFood = false
    @State var drawOther = false
    @State var slideIn = false

    
    var body: some View {
        ZStack {
            Color(red: 0/255, green: 128/255, blue: 128/255)
            VStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8, style: .circular).fill(Color(red: 178/255, green: 216/255, blue: 216/255))
                        .frame(width: 340, height: 50)
                        .shadow(radius: 8)
                        .padding(.top, 10)
                    Text("Hi Neel")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                        .offset(x: 0, y: 5)
                        
                }.animation(Animation.easeOut(duration: 1.5))
                .offset(x: 0, y: slideIn ? 0 : -200)
                    .onAppear() {
                        self.slideIn = true
                    }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                        .fill(Color(red: 178/255, green: 216/255, blue: 216/255).opacity(1))
                    .shadow(radius: 8)
                    .frame(width: 340, height: 340)
                    Circle()
                        .trim(from: 0, to: drawRed ? 1/2 : 0)
                        .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                        .animation(Animation.easeOut(duration: 2.5))
                        .frame(width: 280, height: 280)
                        .rotationEffect(.degrees(270))
                        .shadow(radius: 8)
                        .onAppear() {
                            self.drawRed = true
                        }
                    Circle()
                        .stroke(Color.red.opacity(0.2), style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                        .frame(width: 280, height: 280)

                    
                    Circle()
                        .trim(from: 0, to: drawGreen ? 2/3 : 0)
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                        .animation(Animation.easeOut(duration: 2.5))
                        .rotationEffect(.degrees(270))
                        .shadow(radius: 8)
                        .frame(width: 210, height: 210)
                        .onAppear() {
                            self.drawGreen = true
                        }
                    Circle()
                        .stroke(Color.green.opacity(0.2), style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                        .frame(width: 210, height: 210)
                    
                    VStack {
                        Text("3463/6666")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .offset(x: 0, y: -10)
                        Text("67/100")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.green)
                            .offset(x: 0, y: 10)
                    }
                
                }.padding(.vertical)
                .animation(Animation.easeOut(duration: 1.5))
                    .offset(x: slideIn ? 0 : -200, y: 0)
                .onAppear() {
                    self.slideIn = true
                }

                List {
                    Section(header: ZStack {
                        Color(red: 178/255, green: 216/255, blue: 216/255).frame(width: 500, height: 30)
                        Text("Break Down")
                            .foregroundColor(Color.black)
                    }) {
                            HStack {
                                Text("Driving")
                                    .foregroundColor(Color.black)
                            
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10, style: .circular)
                                        .fill(Color(red: 138/255, green: 36/255, blue: 131/255))
                                        .frame(width: drawDrive ? 150 : 0, height: 55)
                                        .padding(.vertical)
                                    .offset(x: 15, y: 0)
                                    .shadow(radius: 8)
                                        .animation(Animation.easeOut(duration: 2.5))
                                        
                                        .onAppear() {
                                            self.drawDrive = true
                                        }
                                }
                        }.listRowBackground(Color(red: 178/255, green: 216/255, blue: 216/255).opacity(1))
                        HStack {
                            Text("Food")
                                .foregroundColor(Color.black)
                            ZStack {
                                RoundedRectangle(cornerRadius: 10, style: .circular)
                                    .fill(Color(red: 255/255, green: 182/255, blue: 71/255))
                                    .frame(width: drawFood ? 230 : 0, height: 55)
                                    .padding(.vertical)
                                    .shadow(radius: 8)
                                    .animation(Animation.easeOut(duration: 2.5))
                                    .offset(x: 30, y: 0)
                                    .onAppear() {
                                        self.drawFood = true
                                    }
                            }
                        }.listRowBackground(Color(red: 178/255, green: 216/255, blue: 216/255).opacity(1))
                        HStack {
                            Text("Activity")
                                .foregroundColor(Color.black)
                            ZStack {
                                RoundedRectangle(cornerRadius: 10, style: .circular)
                                    .fill(Color(red: 41/255, green: 112/255, blue: 153/255))
                                    .frame(width: drawOther ? 180 : 0, height: 55)
                                    .padding(.vertical)
                                    .offset(x: 10, y: 0)
                                    .shadow(radius: 8)
                                    .animation(Animation.easeOut(duration: 2.5))
                                    .onAppear() {
                                        self.drawOther = true
                                    }
                            }
                            }.listRowBackground(Color(red: 178/255, green: 216/255, blue: 216/255).opacity(1))
                    }
                    
                    }
                    .animation(Animation.easeOut(duration: 1.5))
                .offset(x: 0, y: slideIn ? 0 : 200)
                    .onAppear() {
                        self.slideIn = true
                    }
            .shadow(radius: 8)
                .cornerRadius(10)
                .padding(.init(arrayLiteral: .leading, .trailing, .bottom), 17)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
