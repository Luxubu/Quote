//
//  ContentView.swift
//  FirstUi
//
//  Created by Luan Nguyen on 10/23/19.
//  Copyright © 2019 Luan Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State var showDetails = false
    
    //let min = 1
    
    //let maxPick5 = 69
    
    @State var initArryPick5 = Array(1...69)
    
    @State var initArryPick1 = Array(1...29)
    
    @State var arrayPick5 = ArraySlice<Int>(1...5)
    @State var powerBall = ArraySlice<Int>(1...1)
    
    @State var indexT = 0
    
    @State var quotes: [Quote] = []
    
    @State var quote =  Quote(author: "unknown", text: "Today is a great day!")

    
    var body: some View {
    
        //HStack {
        VStack {
            Spacer()
            
            VStack {
              Text("Q's of the day").font(.title)
            }
            
            Spacer()
          
            VStack{
                //Spacer()
                
//                TextField($quote.text, Text("Qtext"))
                
                Text("\(quote.text)")
                    
                    .italic()
                    .bold()
                    //.padding(.all)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                    //.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .background(Color.white)
                    .foregroundColor(Color .black)
                    .lineLimit(10)
                    .frame(width: 300, height: 100)
                
                //Spacer()

                //Text((testData[indexT].author))
                
                Text("\(quote.author)")
                    .padding(.all)
                .font(.system(size: 12))
                    //.multilineTextAlignment(.trailing)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color .purple)
                    .lineLimit(10)
            }
            
            Spacer()
       
            VStack {
                HStack {
                  ForEach(self.arrayPick5.sorted(), id: \.self) {
                    Text("\($0, specifier: "%02d")")
                    .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    .cornerRadius(60)
                    }
                    
                    ForEach(self.powerBall.sorted(), id: \.self) {
                    Text("\($0, specifier: "%02d")")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .cornerRadius(60)
                    }
                }
                
                
            }
            
            
            Spacer()
            
            VStack {
                
                 Button(action: {
                 
                             self.arrayPick5 = self.aChange(arrayInput: self.initArryPick5, prefixValue: 5)
                             self.powerBall = self.aChange(arrayInput: self.initArryPick1, prefixValue: 1)
                             self.quote = self.quotes.randomElement()!
                             
                         }) {
                          
                             Text("Next Powerball")
                             .padding()
                             //.background(Color.purple)
                                 .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.gray]), startPoint: .leading, endPoint: .trailing))
                             .foregroundColor(.white)
                             .font(.system(size: 15))
                                 //.cornerRadius(20)
                         }
                
            }
            
      
        }
              
   }
    
//}
    
    func aChange (arrayInput: Array<Int>, prefixValue: Int) -> ArraySlice<Int> {
              var a = arrayInput
                  a.shuffle()
                return a.prefix(prefixValue)
              }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(quotes: testData)
    }
}




