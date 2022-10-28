//
//  iDini_2App.swift
//  iDini 2
//
//  Created by eldorbek nusratov on 10/27/22.
//

import SwiftUI

@main
struct iDini_2App: App {
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
