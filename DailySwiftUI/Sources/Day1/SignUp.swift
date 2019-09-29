//
//  SignUp.swift
//  DailySwiftUI
//
//  Created by 藤井陽介 on 2019/06/07.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct SignUp : View {
    var body: some View {
        VStack {
            HStack {
                Text("ID")
            }
            HStack {
                Text("Pass")
            }
        }
    }
}

#if DEBUG
struct SignUp_Previews : PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
#endif
