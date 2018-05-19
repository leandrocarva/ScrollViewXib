//
//  ScrollViewController.swift
//  ScrollViewXib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        removeObservers()
    }
    
    func addObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyoardWillShow(notification:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyoardWillHide(notification:)), name: .UIKeyboardWillHide, object: nil)
        
    }
    
    func removeObservers() {
       NotificationCenter.default.removeObserver(self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func keyoardWillShow (notification: NSNotification) {
         print("Teclado apareceu!!!")
        let userInfo = notification.userInfo ?? [:]
        let keyboardFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        scrollView.contentInset.bottom = keyboardFrame.size.height
        scrollView.scrollIndicatorInsets.bottom = keyboardFrame.size.height
    }
    
    @objc func keyoardWillHide (notification: NSNotification) {
        print("Teclado desapareceu!!!")
        scrollView.contentInset.bottom = 0
        scrollView.scrollIndicatorInsets.bottom = 0
        
    }

}
