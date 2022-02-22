//
//  DadJoke.swift
//  DadJokes
//
//  Created by Patrick Boren on 2022-02-22.
//

import Foundation


//The DadJoke structure conforms to the decodable protocol. This means that we want swift to be able to take a JSON object and decode into an instance of this structure
struct DadJoke: Decodable{
    let id: String
    let joke: String
    let status: Int
}
