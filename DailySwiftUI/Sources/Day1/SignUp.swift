//
//  SignUp.swift
//  DailySwiftUI
//
//  Created by 藤井陽介 on 2019/06/07.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI

struct SignUp : View {
    @State private var modeNumber = 0
    @State private var idString = ""
    @State private var passString = ""

    var modes = ["Sign In", "Sign Up"]

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8.0)
                    .fill(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 4)
                VStack {
                    Spacer()
                    TextField("Email", text: $idString) {
                        print(self.idString)
                    }
                    .padding(.horizontal, 32.0)
                    SecureField("Password", text: $passString) {
                        print(self.passString)
                    }
                    .padding(.horizontal, 32.0)
                    Spacer()
                    Picker(selection: $modeNumber, label: Text("")) {
                        ForEach(0 ..< modes.count) {
                            Text(self.modes[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(EdgeInsets(top: 0.0, leading: 32.0, bottom: 0.0, trailing: 32.0))
                    Spacer()
                }
            }
            .padding(.horizontal, 32.0)
            .frame(height: 120, alignment: .center)
            Spacer()
            Button(action: {}) {
                Text("Next")
                    .font(.body)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
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
