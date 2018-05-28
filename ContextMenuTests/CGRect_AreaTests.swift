//
//  ContextMenuTests.swift
//  ContextMenuTests
//
//  Created by Ryan Nystrom on 5/28/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import XCTest
@testable import ContextMenu

class CGRect_AreaTests: XCTestCase {

    let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
    
    func test_whenCornersHavePadding() {
        XCTAssertEqual(rect.area(corner: SourceViewCorner(point: CGPoint(x: 10, y: 10), position: .topLeft)), 100)
        XCTAssertEqual(rect.area(corner: SourceViewCorner(point: CGPoint(x: 90, y: 10), position: .topRight)), 100)
        XCTAssertEqual(rect.area(corner: SourceViewCorner(point: CGPoint(x: 90, y: 90), position: .bottomRight)), 100)
        XCTAssertEqual(rect.area(corner: SourceViewCorner(point: CGPoint(x: 10, y: 90), position: .bottomLeft)), 100)
    }
    
}
