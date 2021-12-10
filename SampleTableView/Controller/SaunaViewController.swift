//
//  SaunaViewController.swift
//  SampleTableView
//
//  Created by Kumie Miyata on 2021/12/10.
//

import UIKit

final class SaunaViewController: UIViewController {
    
    private let areaTitles = ["東北", "関東", "近畿", "四国", "九州"]
    private let saunaNames = [
        "東北": ["サウナ＆カプセル キュア国分町", "MARUMORI SAUNA", "汗蒸幕の湯", "スイデンテラス", "古戦場"],
        "関東": ["サウナ＆カプセルホテル 北欧", "サウナ＆ホテル かるまる", "湯乃泉", "草加健康センター", "スカイスパYOKOHAMA"],
        "近畿": ["神戸サウナ＆スパ", "白山湯高辻店", "カプセルホテル 太平洋", "ニュージャパン 梅田店", "サウナの梅湯"],
        "四国": ["SAUNA グリンピア", "塚原から風呂", "シモノロ・パーマネント", "伊予の湯治場 喜助の湯", "東道後のそらともり"],
        "九州": ["湯らっくす", "らかんの湯", "ウェルビー福岡", "筑紫野 天拝の郷", "イズバ/IZBA"]
    ]
    
    @IBOutlet private weak var tableView: UITableView! {
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
            
            let nib = UINib(nibName: SaunaTableViewCell.className, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: SaunaTableViewCell.className)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SaunaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SaunaTableViewCell.className) as? SaunaTableViewCell else {
            return SaunaTableViewCell() }
        return cell
    }
}

extension SaunaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
