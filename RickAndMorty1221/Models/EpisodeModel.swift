//
//  EpisodeModel.swift
//  RickAndMorty1221
//
//  Created by Aliaksandr Pustahvar on 18.08.23.
//

import Foundation

struct Episode: Decodable, Hashable {
    let results: [EpisodeResult]
}

struct EpisodeResult: Decodable, Hashable {
    let name: String
    let episode: String
    let airDate: String
    let url: String
}
