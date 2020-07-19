//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by HASEUNG JEON on 2020/07/19.
//  Copyright © 2020 HASEUNG JEON. All rights reserved.
//

import Foundation


extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
