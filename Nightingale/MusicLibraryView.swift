//
//  MusicLibraryView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct MusicLibraryView: View {
    var body: some View {
        
            
            
        ZStack{
            Image("nightingale_logo")
                .resizable()
                .scaledToFit()
            
            Text("My Songs")
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct MusicLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MusicLibraryView()
    }
}
