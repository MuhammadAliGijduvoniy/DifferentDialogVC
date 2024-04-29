//
//  HomeVC.swift
//  Controllers
//
//  Created by MuhammadAli on 26/02/24.
//

import UIKit

class HomeVC: UIViewController {
    
    var update : UIButton!
    var new : UIButton!
    var error: UIButton!
    var internetFailer: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.initView()
    }
    
    
    func initView() {
        
        update = UIButton(
            frame: CGRect(
                x: 20,
                y: windowHeight / 3,
                width: windowWidth - leftSpacing * 2,
                height: btn_Height))
        update.setTitle("Update", for: .normal)
        update.titleLabel?.font = .systemFont(ofSize: 28)
        update.layer.cornerRadius = btn_Height / 2
        update.setTitleColor(.white, for: .normal)
        update.backgroundColor = .systemBlue
        update.addTarget(self, action: #selector(onUpdate), for: .touchUpInside)
        self.view.addSubview(update)
        
        
        
        new = UIButton(
            frame: CGRect(
                x: leftSpacing,
                y: update.frame.maxY + 10,
                width: windowWidth - 40,
                height: btn_Height))
        new.setTitle("New", for: .normal)
        new.titleLabel?.font = .systemFont(ofSize: 28)
        new.layer.cornerRadius = btn_Height / 2
        new.setTitleColor(.white, for: .normal)
        new.backgroundColor = .systemBlue
        new.addTarget(self, action: #selector(onNew), for: .touchUpInside)
        self.view.addSubview(new)
        
        
        
        error = UIButton(
            frame: CGRect(
                x: leftSpacing,
                y: new.frame.maxY + 10,
                width: windowWidth - leftSpacing * 2,
                height: btn_Height))
        error.setTitle("error", for: .normal)
        error.titleLabel?.font = .systemFont(ofSize: 28)
        error.layer.cornerRadius = btn_Height / 2
        error.setTitleColor(.white, for: .normal)
        error.backgroundColor = .systemBlue
        error.addTarget(self, action: #selector(onError), for: .touchUpInside)
        self.view.addSubview(error)
        
        
        internetFailer = UIButton(
            frame: CGRect(
                x: leftSpacing,
                y: error.frame.maxY + 10,
                width: windowWidth - leftSpacing * 2,
                height: btn_Height))
        internetFailer.setTitle("internetFailer", for: .normal)
        internetFailer.titleLabel?.font = .systemFont(ofSize: 28)
        internetFailer.layer.cornerRadius = btn_Height / 2
        internetFailer.setTitleColor(.white, for: .normal)
        internetFailer.backgroundColor = .systemBlue
        internetFailer.addTarget(self, action: #selector(oninternetFailer), for: .touchUpInside)
        self.view.addSubview(internetFailer)
    }
    
    
    
    @objc func onUpdate() {
        let vc = DialogVC()
        vc.mode = .updateApp
        self.present(vc, animated: true)
    }
   
    @objc func onNew() {
        let vc = DialogVC()
        vc.mode = .new
        self.present(vc, animated: true)
    }
    
    @objc func onError() {
        let vc = DialogVC()
        vc.mode = .serverError
        self.present(vc, animated: true)
    }
    
    @objc func oninternetFailer() {
        let vc = DialogVC()
        vc.mode = .internetFailed
        self.present(vc, animated: true)
    }

}
