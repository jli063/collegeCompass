//
//  ViewController.swift
//  collegeCompass
//
//  Created by Apple on 6/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBAction func learnButtonTapped(_ sender: SAButton) {
        showSafariVC(for: headlines[myIndex].URL)
    }
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true, completion: nil)
    }
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = headlines[myIndex].title
        descLabel.text = headlines[myIndex].text
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little prepsaration before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



