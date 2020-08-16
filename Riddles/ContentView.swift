//
//  ContentView.swift
//  Riddles
//
//  Created by Jassem Al-Buloushi on 8/16/20.
//  Copyright © 2020 Jassem Al-Buloushi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSettings = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geomerty in
                VStack {
                    Text("What has to be broken before you can use it?")
                        .frame(width: geomerty.size.width, height: geomerty.size.height / 2)
                    
                    Button("Show Answer") {
                        // some code
                    }
                    .frame(width: geomerty.size.width / 3, height: 40)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding()
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            //Action Code
                        }) {
                            Image(systemName: "chevron.left.circle")
                                .font(.system(size: 40))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Action code
                            
                        }) {
                            Image(systemName: "chevron.right.circle")
                                .font(.system(size: 40))
                        }
                    }
                    .padding([.horizontal, .vertical])
                }
            }
            .padding()
            .navigationBarTitle("Riddles", displayMode: .large)
            .navigationBarItems(trailing: Button(action:{
            self.showSettings = true
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 30))
            })
        }
    
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
