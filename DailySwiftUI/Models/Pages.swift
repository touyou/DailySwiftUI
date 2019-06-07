//
//  Pages.swift
//  DailySwiftUI
//
//  Created by 藤井陽介 on 2019/06/07.
//  Copyright © 2019 touyou. All rights reserved.
//

import SwiftUI
import Combine
import UIKit

let pages: [Page] = [
    .init(id: 1, name: "Day1 - SignUp", destinationType: .day1)
]

protocol PageModel {
    associatedtype DestinationView: View
    var destination: Self.DestinationView { get }
}

struct Page: PageModel, Identifiable {
    var id: Int
    var name: String
    fileprivate var destinationType: Destination

    var destination: some View {
        switch destinationType {
        case .day1:
            return SignUp()
        }
    }
}

fileprivate enum Destination: CaseIterable {
    case day1
}
