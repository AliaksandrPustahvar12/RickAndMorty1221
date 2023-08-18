//
//  CharactersModel.swift
//  RickAndMorty1221
//
//  Created by Aliaksandr Pustahvar on 17.08.23.
//

import Foundation

struct Character: Decodable{
    let results: [Result]
    let info: Info
}
struct Result: Decodable {
    let name: String
    let status: String
    let species: String
    let gender: String
    let type: String
    let image: String
    let location: Location
    let url: String
    let episode: [String]
}
struct Info: Decodable{
    let count: Int
    let pages: Int
//    let next: String?
//    let prev: String?
}
struct Location: Decodable{
    let name: String
}
