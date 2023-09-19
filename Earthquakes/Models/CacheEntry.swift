//
//  CacheEntry.swift
//  Earthquakes
//
//  Created by Atikur Rahman on 9/19/23.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) {
        self.entry = entry
    }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
