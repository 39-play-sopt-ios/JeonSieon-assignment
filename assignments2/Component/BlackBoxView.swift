//
//  BlackBoxView.swift
//  assignments2
//
//  Created by 전시언 on 10/23/26.
//

import SwiftUI

struct BlackBoxView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(height: 60)
                    .foregroundStyle(.black1)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack{
                        Text("성수역")
                            .font(.body3)
                            .padding(.leading, 14)
                            .foregroundStyle(.white)
                        
                        Image("Vector")
                            .padding(.leading, 182)
                        
                        Spacer()
                        
                        Image("Bag")
                            .padding(.trailing, 14)
                    }
                    
                    Rectangle()
                        .stroke(.gray6, lineWidth: 1)
                        .frame(width: 239, height: 1, alignment: .leading)
                        .padding(.leading, 14)
                        
                }
            }
        }
    }
}

#Preview {
    BlackBoxView()
}


