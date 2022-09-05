//
//  ContentView.swift
//  Shared
//
//  Created by Keith Bromley on 8/24/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataSource: DataSource

    var body: some View {
        VStack {
            PlotView()

            Spacer()

            Button(action: {
                animationOn = (animationOn) ? false : true
            }) {
                Text("Toggle Animation")
                    .frame(width: 150, height: 30)
                    .cornerRadius(10)
            }
            .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
