//
//  FeedUploadModel.swift
//  Catstagram
//
//  Created by 홍정민 on 2022/05/16.
//

struct FeedUploadModel: Decodable {
    var isSuccess: Bool
    var code: Int
    var message: String
    var result: FeedUploadResult
}

struct FeedUploadResult: Decodable {
    var postIdx: Int?
}
