//
//  ViewController.swift
//  ScrollViewXib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let button = UIButton(type: .system)
        button.setTitle("Abri nova tela", for: .normal)
        button.frame = CGRect(x: (view.frame.size.width - 120)/2, y: 100, width: 120, height: 30)
        button.addTarget(self, action: #selector(showSecondScreen), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func showSecondScreen() {
      let secondVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
       // present(secondVC, animated: true, completion: nil)
        navigationController?.show(secondVC, sender: nil)
    }


}

