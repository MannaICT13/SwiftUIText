//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Md Khaled Hasan Manna on 13/10/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI
import UIKit


//Adding a Date Using Date and DateFormatter
struct DateStruct : View{
    
    
    static let dateFormatter : DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }()
    
    
    var date = Date()
    
    var body : some View{
        
        Text ("Now Date is : \(date,formatter: Self.dateFormatter)")
    }
    
    
  
}

//Concatanation of Text
struct ConCatenationOfText : View {
    
    var zipCode : Int = 1900
    
    var body : some View {
        
        Text("Santosh ") + Text("Tangail \(zipCode)")
        
    }
}




//Styling a Text
struct ContentView: View {
    
    var body: some View {
        
     
        VStack(alignment:.center){
            
            Text("Mawlana Bhashani Science and Technology University")
            .lineLimit(nil)
            .foregroundColor(Color.blue)
            .background(Color.white)
            .font(.system(size: 26))
            
            ConCatenationOfText()
                .font(.headline)
            
            DateStruct()
                .font(.headline)
            
            Text("Hello \nWorld \nHi").multilineTextAlignment(.leading)
        }
       
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
