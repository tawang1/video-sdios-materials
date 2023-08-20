//
//  TodayTomorrow.swift
//  TaskList
//
//  Created by Tiffany Wang on 8/15/23.
//  Copyright © 2023 Jessy Catterwaul. All rights reserved.
//

import SwiftUI


struct TodayTomorrow: View {
  var todayCount: Int
  var tmwCount: Int
  var somedayCount: Int
    @Binding var todayItemsPresented: Bool
    @Binding var tomorrowItemsPresented: Bool
    @Binding var somedayItemsPresented: Bool
  
  var body: some View {
    HStack (spacing: 5) {
        Spacer()
        Button {
            todayItemsPresented.toggle()
        } label: {
            SubCircle(text: "TO \n DAY", count: todayCount )
        }
        .foregroundColor(.black)
        Button {
            tomorrowItemsPresented.toggle()
        } label: {
            SubCircle(text: "TMR \n W", count: tmwCount)
        }
        .foregroundColor(.black)
        Button {
            somedayItemsPresented.toggle()
        } label: {
            SubCircle(text: "SOME \n DAY", count: somedayCount)
        }
        .foregroundColor(.black)
        
        Spacer()
        
      }
      .padding(.vertical)
      .background(Color("rw-light"))
  }
}

struct SubCircle: View {
  var text: String
  var count: Int
  var body: some View {
    HStack (spacing: 1) {
      Spacer()
      Text(text)
        .font(.headline)
        .frame(width: 55, alignment: .leading)
      ZStack {
        Circle()
          .frame(width: 45, alignment: .trailing)
        Text(String(count))
          .font(.largeTitle)
          .foregroundColor(Color("rw-light"))
      }
      Spacer()
    }
    
  }
}

struct TodayTomorrow_Previews: PreviewProvider {
    static var previews: some View {
        TodayTomorrow(todayCount: 5, tmwCount: 5, somedayCount: 5, todayItemsPresented: .constant(true), tomorrowItemsPresented: .constant(false), somedayItemsPresented: .constant(false))
    }
}


