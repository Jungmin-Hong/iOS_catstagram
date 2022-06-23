//
//  FeedDataManager.swift
//  Catstagram
//
//  Created by 홍정민 on 2022/05/16.
//

import Alamofire

class FeedDataManager {
    func feedDataManager(_ viewController: HomeViewController, _ parameters: FeedAPIInput) {
        AF.request("https://api.thecatapi.com/v1/images/search", method: .get, parameters: parameters).validate().responseDecodable(of: [FeedModel].self) { response in
            switch response.result {
            case .success(let result):
                viewController.succesAPI(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
