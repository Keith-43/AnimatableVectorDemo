//
//  PlotView.swift
//  AnimatableVectorDemo
//
//  SwiftUI Advanced Animation: Morphing Shapes (Alex Dremov)
//  https://betterprogramming.pub/swiftui-advanced-animation-morphing-shapes-239a42200181
//  https://github.com/AlexRoar/MorphingShapes
//
//  SwiftUI Animatable Modifiers (NSScreenCast)
//  https://www.youtube.com/watch?v=1Z_h1I2awac
//  https://github.com/nsscreencast/449-swiftui-animatable-vector
//
//  Created by Keith Bromley on 8/17/22.
//

import SwiftUI


struct PlotView: View {
    @EnvironmentObject var dataSource: DataSource  // Observe the instance of DataSource passed from ContentView
    
    public var body: some View {
        if(animationOn) {
            PlotShape(vector: dataSource.vector)
                .stroke(Color.black, lineWidth: 2)
                .animation(Animation.linear(duration: 0.49), value: dataSource.vector)

        }else{
            PlotShape(vector: dataSource.vector)
                .stroke(Color.black, lineWidth: 2)
        }
    }
}


struct PlotShape: Shape {
    var vector: AnimatableVector        // Declare a variable called vector of type Animatable vector
    
    public var animatableData: AnimatableVector {
        get { vector }
        set { vector = newValue }
    }
    
    public func path(in rect: CGRect) -> Path {

        var x: Double = 0.0         // The drawing origin is in the upper left corner.
        var y: Double = 0.0         // The drawing origin is in the upper left corner.
        
        var path = Path()
        path.move(to: CGPoint( x: 0.0, y: rect.height - rect.height * Double(animatableData[0]) ) )

        for i in 1 ..< vector.count {
            x = rect.width * Double(i) / Double(vector.count - 1)
            y = rect.height - rect.height * Double( vector[i] )
            path.addLine(to: CGPoint(x: x, y: y))
        }
        return path
    }
}
