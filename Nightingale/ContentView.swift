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
                    Image("nightingale_bg")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea(.all)
                    
                    Image("nightingale_logo")
                        .resizable()
                        .imageScale(.medium)
                        .frame(width: 200, height: 200)
                    
                    HStack(alignment: .center, spacing: 6.0) {
                        NavigationLink(destination: MusicLibraryView()) {
                            Image(systemName: "music.note.house.fill")
                                .imageScale(.large)
                                .frame(width: 90, height: 90)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                                
                                
                        }
                        NavigationLink(destination: MusicLibraryView()) {
                            Image(systemName: "music.note.list")
                                .imageScale(.large)
                                .frame(width: 90, height: 90)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        }
                        NavigationLink(destination: MusicProductionView()) {
                            Image(systemName: "music.mic")
                                .imageScale(.large)
                                .frame(width: 90, height: 90)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        }
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "person.crop.circle")
                                .imageScale(.large)
                                .frame(width: 90, height: 90)
                                .background(Color.white)
                                .foregroundColor(Color.black)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        }
                    }
                    
//                    .frame(width: UIScreen.main.bounds.width, height: 120)
//                .background(Color.black)
//                .cornerRadius(15)
            }
            }
                    
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
