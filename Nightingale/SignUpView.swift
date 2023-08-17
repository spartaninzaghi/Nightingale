//
//  SignUpView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            Image("nightingale_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            VStack {
                Image("nightingale_logo")
                    .resizable()
                    .frame(width: 170, height: 170)
                    .padding()
                
                TextField("Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                    .frame(width: 300, height:60)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                
                
                TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                    .frame(width: 300, height:60)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 10)
                
                TextField("Confirm Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                    .frame(width: 300, height:60)
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 10)
//                    .multilineTextAlignment(.center)
                
                Text("Or")
                    .padding()
                
                

            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
