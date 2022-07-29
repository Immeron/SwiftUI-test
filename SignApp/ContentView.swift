//
//  ContentView.swift
//  SignApp
//
//  Created by Ilya Vinogradov on 17.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var joinSheet = false
    var body: some View {
        NavigationView {
                VStack(alignment: .center) {
                    Text("Vimeo")
                        .foregroundColor(.white)
                        .font(.system(size: 32))
                        .bold()
                        .padding()
                    Text("Upload in the highest quality")
                        .foregroundColor(.white)
                        .font(.system(size: 32))

                    Spacer()

                    Group {
                        Button(action: {joinSheet.toggle()}) {
                            Text("Join")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 16).bold())

                        }
                        .sheet(isPresented: $joinSheet, content: {
                            RegisterView(isPresented: $joinSheet)
                        })
                        .background(.blue)
                        Button(action: {}) {
                            Text("Log in")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 16).bold())
                                .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.white, lineWidth: 2)
                            )
                        }
                        .background(.black)

                    }
                    .cornerRadius(20)
                    .padding([.leading, .trailing, .top])

                    Group {
                        Text("By joining Vimeo, you agreed to our ")
                            .foregroundColor(.gray)

                        + Text("Terms of service ")
                            .foregroundColor(.white)
                        + Text("and ")
                            .foregroundColor(.gray)
                        + Text("Privacy policy")
                            .foregroundColor(.white)
                    }
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                    .padding([.leading, .trailing])

                    

                }
                .background(
                    Image("BG")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: .fill))
                .padding(.top)

                .toolbar {
                    Button(action: {}) {
                        Text("SKIP")
                            .foregroundColor(.white)
                    }
                }
        }
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
