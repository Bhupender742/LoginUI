//
//  Home.swift
//  LoginUI
//
//  Created by Bhupender Rawat on 21/07/21.
//

import SwiftUI

struct Home: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            
            Text("Login Screen App")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Codeplayon")
                .font(.title2)
                .fontWeight(.semibold)
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                TextField("Email Address", text: $email)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top, 4)
                
                Divider()
                
            })
            .padding(.top, 24)
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                SecureField("Password", text: $password)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top, 4)
                
                Divider()
            })
            
            // Forgot Password...
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Forgot Password?")
                    .fontWeight(.bold)
            })
            .frame(alignment: .center)
            .padding(.top, 8)
            
            // Log In...
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("LogIn")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            })
            .frame(maxWidth: 80, maxHeight: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(8.0)
            .background(Color.blue)
            .padding(.top, 8)
            
            HStack(alignment: .center, spacing: 8, content: {
                Text("Doesn't have an account?")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign Up")
                        .fontWeight(.semibold)
                })
                
            })
            .padding(.top, 8)
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home()
            Home()
        }
    }
}
