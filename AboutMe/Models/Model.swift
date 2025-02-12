//
//  Model.swift
//  AboutMe
//
//  Created by Ast on 12.02.2025.
//


struct Person {
    var firstName: String
    var lastName: String
    var jobTitle: String
    var companyName: String
    var bioText: String
}

let admin: Person = .init(
    firstName: "Alexander",
    lastName: "Ast",
    jobTitle: "programmer",
    companyName: "Auvix",
    bioText: "I work for a AV-IT company. We provide technical support, product video solutions and also develop software for goverment in Russia. We don’t export anything. Our company employs about 300 people. Company’s head office is located in Moscow. But we have customers in all Russia regions. We are one of the largest AV-IT companies in Russia."
)
