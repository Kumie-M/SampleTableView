//
//  UserDefaultsManager.swift
//  SampleTableView
//
//  Created by Kumie Miyata on 2021/12/10.
//

import Foundation

struct UserDefaultsKeys {
    static let isShowTutorialDialog = "isShowTutorialDialog"
}

final class UserDefaultsManager {
    private init() {
    }
    let ud = UserDefaults.standard
    static let shared = UserDefaultsManager()
    /// チュートリアルダイアログ表示済判定
    func setDidShowTutorialDialog() {
        ud.set(true, forKey: UserDefaultsKeys.isShowTutorialDialog)
    }
    
    /// チュートリアルダイアログ表示判定
    /// - Returns: ダイアログが表示済だとtrue
    func isShowTutorialDialog() -> Bool {
        ud.bool(forKey: UserDefaultsKeys.isShowTutorialDialog)
    }
}
