//
//  ContentView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            NavigationView {
                ZStack {
                    AnimatedBackground().edgesIgnoringSafeArea(.all)
                        .blur(radius: 0)

                    Image("nightingale_logo")
                        .resizable()
                        .imageScale(.medium)
                        .frame(width: 200, height: 200)
                    
                    HStack(alignment: .center, spacing: 25.0) {
                        NavigationLink(destination: MusicLibraryView()) {
                            Image(systemName: "music.note.list")
//                                .resizable()
                                .font(.system(size:50))
                                .frame(width: 90, height: 90)
                                .background(Color.clear)
                                .foregroundColor(Color.white)
                                .cornerRadius(35)
                                .shadow(radius: 10)
                        }
                        NavigationLink(destination: MusicProductionView()) {
                            Image(systemName: "music.mic")
                                .font(.system(size:50))
                                .frame(width: 90, height: 90)
                                .background(Color.clear)
                                .foregroundColor(Color.white)
                                .cornerRadius(35)
                                .shadow(radius: 10)
                        }
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle")
                                .font(.system(size:50))
                                .frame(width: 90, height: 90)
                                .background(Color.clear)
                                .foregroundColor(Color.white)
                                .cornerRadius(35)
                                .shadow(radius: 10)
                        }
                    }
                    .frame(width: 400, height: 100)
                    .background(Color.black)
//                    .
                    
                    .offset(y: 360)
                }
            }
        }
        
    }
}

struct AnimatedBackground: View {
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color.green, Color.black, Color.purple, Color.teal]
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
            .animation(Animation.easeInOut(duration: 6).repeatForever())
            .onReceive(timer, perform: { _ in
                
                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y: 2)
                self.start = UnitPoint(x: -4, y: 20)
                self.start = UnitPoint(x: 4, y: 0)
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

