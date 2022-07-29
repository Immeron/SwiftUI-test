//
//  RegisterView.swift
//  SignApp
//
//  Created by Ilya Vinogradov on 21.07.2022.
//

import SwiftUI

struct RegisterView: View {
    @Binding  var isPresented: Bool
    
    @State var nameTextField: String = ""
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""
    @State var toggleOn: Bool = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Join Vimeo")
                        .font(.system(size: 24))
                        .bold()
                    Group {
                        TextField("Name", text: $nameTextField)
                        Divider()
                        TextField("Email Address", text: $emailTextField)
                        Divider()
                        TextField("Password", text: $passwordTextField)
                        Divider()
                    }
                    .padding(.bottom, 12)
                    Button(action: {}) {
                        Text("Join")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 16).bold())
                    }
                    .background(.blue)
                    .cornerRadius(20)
                    .padding(.bottom, 15)
                    .padding(.top, 15)
                    
                    Text("OR")
                        .font(.system(size: 12))
                        .padding(.bottom, 15)
                    
                    
                    Group {
                        Button(action: {}) {
                            HStack(alignment: .center) {
                                
                                Image("appleIcon")
                                    .frame(width: 24, height: 24)
                                    .scaledToFill()
                                Text("Continue with Apple")
                                    .padding([.top, .bottom])
                                    .foregroundColor(.black)
                                    .font(.system(size: 16).bold())
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 2)
                        )

                        }
                        Button(action: {}) {
                            HStack(alignment: .center) {
                                
                                Image("GoogleIcon")
                                    .frame(width: 24, height: 24)
                                    .scaledToFill()
                                Text("Continue with Google")
                                    .padding([.top, .bottom])
                                    .foregroundColor(.black)
                                    .font(.system(size: 16).bold())
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 2)
                        )

                        }
                        Button(action: {}) {
                            HStack(alignment: .center) {
                                
                                Image("FacebookIcon")
                                    .frame(width: 24, height: 24)
                                    .scaledToFill()
                                Text("Continue with Facebook")
                                    .padding([.top, .bottom])
                                    .foregroundColor(.black)
                                    .font(.system(size: 16).bold())
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 2)
                        )

                        }
                    }
                    .padding(.bottom, 15)
                    .background(.white)
                    .cornerRadius(20)
                    
                    HStack {
                        Text("Have an account?")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Button(action: {
                            
                        }, label: {
                            Text("Log in")
                                .font(.system(size: 14))
                        })
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            toggleOn.toggle()
                        }) {
                            if (toggleOn) {
                                Image("Check")
                            }
                            else {
                                Color.clear
                            }
                        }
                        .frame(width: 26, height: 26)
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue, lineWidth: 2))
                        Text("I agree to receive newsletters and product updates form Vimeo.")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                    }
                    
                    
                    Spacer()
                }
                .padding([.trailing, .leading])
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button(action: {isPresented.toggle()}) {
                            Image("Previous")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                }
                .navigationBarTitle("", displayMode: .inline)
            }
            
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(isPresented: .constant(false))
            .previewInterfaceOrientation(.portrait)
    }
}
