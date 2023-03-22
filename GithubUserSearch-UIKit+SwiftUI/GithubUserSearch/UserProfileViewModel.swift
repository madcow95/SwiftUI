//
//  UserProfileViewModel.swift
//  GithubUserSearch
//
//  Created by ChoiKwangWoo on 2023/03/22.
//

import Foundation
import Combine

final class UserProfileViewModel: ObservableObject {
    
    let loginID: String
    let network: NetworkService
    
    @Published var selectedUser: UserProfile?
    
    var subscriptions = Set<AnyCancellable>()
    
    init(network: NetworkService, loginID: String) {
        self.network = network
        self.loginID = loginID
    }
    
    var name: String {
        return selectedUser?.name ?? "N/A"
    }
    var login: String {
        return selectedUser?.login ?? "N/A"
    }
    var followers: String {
        guard let value = selectedUser?.followers else { return "" }
        return "followers : \(value)"
    }
    var following: String {
        guard let value = selectedUser?.following else { return "" }
        return "following : \(value)"
    }
    
    // User Action => Input
    func search(keyword: String) {
        let resource: Resource<UserProfile> = Resource(
            base: "https://api.github.com/",
            path: "users/\(keyword)",
            params: [:],
            header: ["Content-Type": "application/json"]
        )
        
        network.load(resource)
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error) :
                    self.selectedUser = nil
                    print("error: \(error)")
                case .finished: break
                }
            }, receiveValue: { user in
                self.selectedUser = user
            })    
            .store(in: &subscriptions)
    }
}
