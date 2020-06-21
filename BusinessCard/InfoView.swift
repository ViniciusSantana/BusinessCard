//
//  InfoView.swift
//  BusinessCard
//
//  Created by Vinicius Santana on 21/06/20.
//  Copyright © 2020 Vinicius Santana. All rights reserved.
//

import SwiftUI

struct InfoView: View {
      let text : String
      let imageName : String
      
      var body: some View {
          RoundedRectangle(cornerRadius: 30)
              .fill(Color.white)
              .frame(height: 50)
              .overlay(
                  HStack{
                      Image(systemName: imageName)
                          .foregroundColor(.green)
                      Text(text)
                          .foregroundColor(.black)
                          .bold()
                  }
                  
          )
              .padding(.all)
      }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
