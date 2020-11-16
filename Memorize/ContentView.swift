//
//  ContentView.swift
//  Memorize
//
//  Created by Boyi Ma on 2020-11-04.
//

import SwiftUI

//declare a struct: a container for variables and functions, behaviours...
struct ContentView: View {
    //bahaves/functions like a view (not "object" of view because it's functional programming
    //this view fills the entire screen (body is a mandatory var)
    var body: some View {
        //body is okay as long as it behaves as any view (more flexible than saying Text/String...
        //every time it returns what's in the curly braces
        HStack {
            ForEach(0..<4) { index in
                //this is a range that doesn't include upper bound
                //if want to include, use 0...4
                CardView(isFaceUp: true)
            }
        
        }
            .padding() //this adds padding inside the textbox
            .foregroundColor(.orange) //every thing in this view will be orange
            .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool //the default value if not passes as parameter
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)//almost alway need to label parameters in functions
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
