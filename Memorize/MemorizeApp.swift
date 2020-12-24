//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Boyi Ma on 2020-11-04.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
