//
//  ContentView.swift
//  MagnificationGesture
//
//  Created by Priscila Moro on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var magnification:CGFloat = 1.0
    
    var body: some View {
        VStack {
            Text("Hello World!")
                .bold()
                .padding()
                .foregroundColor(.green)
                .frame(width: 200, height: 100)
                .background(Color.orange)
                .cornerRadius(20)
                .scaleEffect(magnification)
                .gesture(
                    MagnificationGesture()
                        .onChanged({ scale in
                            magnification = scale
                        })
                        .onEnded({ scale in
                            withAnimation {
                                magnification = 1.0
                            }
                        }))
            
            Divider().frame(height: 50)
            Text("Scale: \(magnification)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
