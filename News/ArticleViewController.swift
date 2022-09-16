//
//  ArticleViewController.swift
//  News
//
//  Created by user215931 on 9/16/22.
//

import UIKit
class ArticleViewController: UIViewController{
    
    @IBOutlet var textView: UITextView?
    
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    private func configure(){
        guard let item = item else {
            return
        }
        textView?.text = item.body
        title = item.title
    }
}
