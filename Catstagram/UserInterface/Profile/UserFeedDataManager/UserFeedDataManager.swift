//
//  UserFeedDataManager.swift
//  Catstagram
//
//  Created by 홍정민 on 2022/05/16.
//

import Alamofire

class UserFeedDataManager {
    
    func getUserFeed(_ viewController: ProfileViewController,
                     _ userID: Int = 2) {
        // 통신
        AF.request("https://edu-api-ios-test.softsquared.com/users/2",
                   method: .get,
                   parameters: nil)
            .validate()
            .responseDecodable(of: UserFeedModel.self) { response in
            switch response.result {
            case .success(let result):
                viewController.successFeedAPI(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
