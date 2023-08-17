//
//  RegisterView.swift
//  Nightingale
//
//  Created by Mate Narh on 8/15/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("nightingale_bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)

                VStack {
                    Image("nightingale_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding()
                    
                    // 1 Sign Up
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign up")
                            .frame(width: 200, height: 50, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .cornerRadius(30)
                        }
                    HStack {
                        ZStack {
                            Divider()
                                .frame(width: 90, height: 1)
                                .background(Color.white)
                        }
                        Text("Already a member?")
                            .padding()
                        ZStack { Divider()
                                .frame(width: 90, height: 1)
                                .background(Color.white)
                        }
                    }
        
                    // 2 Sign in - Apple
                    NavigationLink(destination: WelcomeView()) {
                        HStack {
                            Image(systemName: "apple.logo")
                                .imageScale(.large)
                            Text("Sign in with Apple")
                        }
                        //Modify the entire `HStack` with a frame
                        .frame(width: 200, height: 50)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    }
                    
                    // 3 Sign in - Google
                    NavigationLink(destination: WelcomeView()) {
                        HStack {
                            Image("google_logo")
                                .resizable()
                                .frame(width: 19, height: 19)
                            Text("Sign in with Google")
                        }
                        //Modify the entire `HStack` with a frame
                        .frame(width: 200, height: 50)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    }
                }
                .padding()
                
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
