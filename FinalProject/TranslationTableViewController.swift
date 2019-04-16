//
//  TranslationTableViewController.swift
//  FinalProject
//
//  Created by Seungheon Chang on 2017. 6. 7..
//  Copyright © 2017년 Min-yeong An. All rights reserved.
//

import UIKit

class TranslationTableViewController: UITableViewController {
    
    private let translationtitle = [ "안녕하세요 / 아침",
                                     "안녕하세요 / 점심",
                                     "안녕하세요 / 저녁",
                                     "감사합니다",
                                     "실례합니다",
                                     "좀 지나가겠습니다",
                                     "여기는 어디인가요?",
                                     "얼마인가요?",
                                     "근처에 역은 어디에 있나요?",
                                     "~에 가고싶어요",
                                     "~는 있습니까?",
                                     "~를 주세요"]
    
    private let translationsubtitle = ["おはよう - 오하이오",
                                       "こんにちは - 곤니찌와",
                                       "こんばんは - 곤방와",
                                       "ありがとうございます - 아리가또 고자이마스",
                                       "しつれいします - 시츠레시마스",
                                       "ちょっと過ぎていきます - 촛토 스기테 이키마스",
                                       "ここはどこですか - 고코와 도코데스까?",
                                       "いくらですか - 이쿠라데스까?",
                                       "近くに駅はどこですか - 치카쿠니 에키와 도코데스까?",
                                       "~に 行きたい - ~니 이키타이",
                                       "〜は ありますか - ~와 아리마스카?",
                                       "〜を ください - ~오 쿠다사이"
                                       ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return translationtitle.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "translationlist", for: indexPath)
        
        cell.textLabel?.text = translationtitle[indexPath.row]
        cell.detailTextLabel?.text = translationsubtitle[indexPath.row]
        
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
