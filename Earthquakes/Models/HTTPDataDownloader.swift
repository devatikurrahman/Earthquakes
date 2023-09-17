//
//  HTTPDataDownloader.swift
//  EarthquakesTests
//
//  Created by Atikur Rahman on 9/17/23.
//

import Foundation

protocol HTTPDataDownloader {
    func httpData(from: URL) async throws -> Data
}

extension URLSession: HTTPDataDownloader {
    func httpData(from url: URL) async throws -> Data {
        guard let (data, response) = try await self.data(from: url, delegate: nil) as? (Data, HTTPDataDownloader), validStatus.contains(response.statusCode) else {
            throw QuakeError.networkError
        }
    }
}
