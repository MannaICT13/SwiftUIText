//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Md Khaled Hasan Manna on 13/10/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI
import UIKit

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


struct ContentView: View {
    
    var body: some View {
        
     
        VStack{
            
            Text("Mawlana Bhashani Science and Technology University")
            .lineLimit(nil)
            .foregroundColor(Color.blue)
            .background(Color.white)
            .font(.largeTitle)
            
            DateStruct()
                .font(.headline)
            
        }.padding()
       
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
