//
//  SearchUserResponse.swift
//  GithubUserSearch
//
//  Created by ChoiKwangWoo on 2023/03/22.
//

import Foundation

struct SearchUserResponse: Decodable {
    var items: [SearchResult]
}
