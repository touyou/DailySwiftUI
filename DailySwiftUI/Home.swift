//
//  Home.swift
//  DailySwiftUI
//
//  Created by 藤井陽介 on 2019/06/07.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(pages) { page in
                    NavigationButton(destination: page.destination) {
                        Text(page.name).font(.subheadline).padding()
                    }
                }
                }.navigationBarTitle(Text("Daily UI by SwiftUI"), displayMode: .large)
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
