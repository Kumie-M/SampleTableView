//
//  NSObject+.swift.swift
//  SampleTableView
//
//  Created by Kumie Miyata on 2021/12/10.
//

import Foundation

extension NSObject {
    static var className: String {
        String(describing: self)
    }
}
