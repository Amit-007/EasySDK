//
//  MKPolylineExtensions.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasySDK. All rights reserved.
//

#if canImport(MapKit) && !os(watchOS)
import MapKit

// MARK: - Initializers
@available(tvOS 9.2, *)
public extension MKPolyline {

    /// EasySDK: Create a new MKPolyline from a provided Array of coordinates.
    ///
    /// - Parameter coordinates: Array of CLLocationCoordinate2D(s).
    convenience init(coordinates: [CLLocationCoordinate2D]) {
        var refCoordinates = coordinates
        self.init(coordinates: &refCoordinates, count: refCoordinates.count)
    }

}

// MARK: - Properties
@available(tvOS 9.2, *)
public extension MKPolyline {

    /// EasySDK: Return an Array of coordinates representing the provided polyline.
    var coordinates: [CLLocationCoordinate2D] {
        var coords = [CLLocationCoordinate2D](repeating: kCLLocationCoordinate2DInvalid, count: pointCount)
        getCoordinates(&coords, range: NSRange(location: 0, length: pointCount))
        return coords
    }

}

#endif
