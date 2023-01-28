//
//  ContentView.swift
//  DoULikeMe
//
//  Created by Vivian Phung on 1/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var theyLikeMe: LikeStatus = .undefined
    
    var body: some View {
        VStack {
            Spacer()
            Text(theyLikeMe.title)
                .font(Font.custom(font: .monumentExtended, size: 20, relativeTo: .title))
            
            Spacer()
            HStack {
                Spacer()
                Button("Yes") {
                    self.theyLikeMe = .yes
                }                   .font(Font.custom(VoidFonts.monumentExtended.rawValue, size: 16))
                    .opacity(theyLikeMe == .undefined ? 100 : 0)
                Spacer()
                Button("No") {
                    self.theyLikeMe = .no
                }                        .font(Font.custom(VoidFonts.monumentExtended.rawValue, size: 16))
                    .opacity(theyLikeMe == .undefined ? 100 : 0)
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum LikeStatus {
    case undefined, yes, no
    
    var title: String {
        switch self {
        case .undefined:
            return "Do u like me?"
        case .yes:
            return "nice! ty"
        case .no:
            return "i dont like u either"
        }
    }
}
