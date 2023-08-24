//
//  MusicProductionView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI
import AVFoundation

struct MusicProductionView: View {
    var body: some View {
        ZStack {
            Image("nightingale_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            
        }
    }
}

struct MusicProductionView_Previews: PreviewProvider {
    static var previews: some View {
        MusicProductionView()
    }
}
