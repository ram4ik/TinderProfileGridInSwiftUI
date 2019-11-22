//
//  ContentView.swift
//  TinderProfileGridInSwiftUI
//
//  Created by Ramill Ibragimov on 22.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ImageGrid(img1: "1", img2: "2", img3: "3", img4: "4", img5: "5", img6: "6")
        }.navigationBarTitle("Photos", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImageGrid: View {
    @State var img1 = ""
    @State var img2 = ""
    @State var img3 = ""
    @State var img4 = ""
    @State var img5 = ""
    @State var img6 = ""
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Image(self.img1).resizable().scaledToFit().frame(height: 270)
                    VStack {
                        Image(self.img2).resizable().scaledToFit()
                        Image(self.img3).resizable().scaledToFit()
                    }.frame(width: geo.size.width / 3 - 13, height: 270)
                }
                HStack {
                    Image(self.img4).resizable().scaledToFit()
                    Image(self.img5).resizable().scaledToFit()
                    Image(self.img6).resizable().scaledToFit()
                }.frame(height: 135)
            }.padding(.horizontal, 12)
        }
    }
}
