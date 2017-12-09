//
// Client.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Client: Codable {

    public var client: String?


    
    public init(client: String?) {
        self.client = client
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(client, forKey: "client")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        client = try container.decodeIfPresent(String.self, forKey: "client")
    }
}
