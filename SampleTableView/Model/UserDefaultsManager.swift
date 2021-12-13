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

struct UserDefaultsManager {
    static let ud = UserDefaults.standard
    /// チュートリアルダイアログ表示済判定
    static func setDidShowTutorialDialog() {
        ud.set(true, forKey: UserDefaultsKeys.isShowTutorialDialog)
    }
    
    /// チュートリアルダイアログ表示判定
    /// - Returns: ダイアログが表示済だとtrue
    static
    func isShowTutorialDialog() -> Bool {
        ud.bool(forKey: UserDefaultsKeys.isShowTutorialDialog)
    }
}
