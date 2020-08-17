//
//  ContentView.swift
//  Riddles
//
//  Created by Jassem Al-Buloushi on 8/16/20.
//  Copyright © 2020 Jassem Al-Buloushi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let riddlesList = RiddlesList()
    
    @State private var riddleNumber = 0
    @State private var riddleAnswerText = "Show Answer"
    
    @State private var showSettings = false
    @State private var showAnswer = false
    
    
    
    var body: some View {
        NavigationView {
            GeometryReader { geomerty in
                VStack {
                    Text(self.riddlesList.riddles[self.riddleNumber].name)
                        .frame(width: geomerty.size.width, height: geomerty.size.height / 2)
                    
                    Button(action: {
                        self.showAnswer.toggle()
                        
                        if self.showAnswer {
                            self.riddleAnswerText = self.riddlesList.riddles[self.riddleNumber].answer
                        } else {
                            self.riddleAnswerText = "Show Answer"
                        }
                        
                    }) {
                        
                        Text(self.riddleAnswerText)
                    }
                    .frame(width: geomerty.size.width / 3, height: 40)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding()
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            
                            self.riddleAnswerText = "Show Answer"
                            self.showAnswer = false
  
                            if self.riddleNumber <= (self.riddlesList.riddles.count - 1) && (self.riddleNumber > 0) {
                                self.riddleNumber -= 1
                            }
                            
                        }) {
                            Image(systemName: "chevron.left.circle")
                                .font(.system(size: 40))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                            self.riddleAnswerText = "Show Answer"
                            self.showAnswer = false
                            
                            if self.riddleNumber < (self.riddlesList.riddles.count - 1) {
                                self.riddleNumber += 1
                            }
                            
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
