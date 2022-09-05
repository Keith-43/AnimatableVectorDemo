//
//  DataSource.swift
//  AnimatableVectorDemo
//
//  Created by Keith Bromley on 8/17/22.
//

import SwiftUI


class DataSource: ObservableObject {

    static let pointCount: Int = 16			// The generater Array (called "vector") will have 16 values.
    static let dataSource = DataSource()    // This singleton instantiates the DataSource class and runs the init() func

    @Published var vector: AnimatableVector = AnimatableVector.zero

    init() {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.vector = self.generateData()
        }
    }

    func generateData() -> AnimatableVector {
        var points = Array.init(repeating: Float.zero, count: DataSource.pointCount)
        for i in 0 ..< DataSource.pointCount {
            points[i] = Float.random(in: 0.0 ... 1.0)
        }
        return AnimatableVector(values: points)
    }
}
