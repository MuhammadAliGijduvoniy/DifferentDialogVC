//
//  DialogVC.swift
//  Controllers
//
//  Created by MuhammadAli on 26/02/24.
//

import UIKit

class DialogVC: UIViewController {
    
    var mode : StatusDialogType = .updateApp
    
    var onType: ((StatusButtons)-> Void)?
    
    var tapBtn : UIButton!
    
    var backView : UIView!
    
    var dialogTitle: UILabel!
    
    var dialogSubTitle: UILabel!
    
    var img : UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .clear
        self.initView()
        
    }
    
    func initView() {
        
        tapBtn = UIButton(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 200))
        tapBtn.backgroundColor = .clear
        tapBtn.addTarget(self, action: #selector(onTapBtn), for: .touchUpInside)
        self.view.addSubview(tapBtn)
        
        backView = UIView(frame: CGRect(x: 0, y: tapBtn.frame.maxY, width: windowWidth, height: windowHeight - 200))
        backView.backgroundColor = .white
        backView.layer.cornerRadius = 20
        self.view.addSubview(backView)
        
        dialogTitle = UILabel(frame: CGRect(x: 0, y: leftSpacing, width: windowWidth, height: btn_Height))
        dialogTitle.text = "Dialog title"
        dialogTitle.textAlignment = .center
        dialogTitle.textColor = .black
        dialogTitle.font = .boldSystemFont(ofSize: 30)
        self.backView.addSubview(dialogTitle)
        
        self.dialogSubTitle = UILabel(frame: CGRect(x: leftSpacing, y: dialogTitle.frame.maxY + 10, width: windowWidth - leftSpacing * 2, height: btn_Height * 2))
        dialogSubTitle.text = "Text messages are used for personal, family, business, and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues."
        dialogSubTitle.textAlignment = .center
        dialogSubTitle.textColor = .lightGray
        dialogSubTitle.numberOfLines = 0
        self.backView.addSubview(dialogSubTitle)
        
        img = UIImageView(frame: CGRect(x: 100, y: dialogSubTitle.frame.maxY, width: windowWidth - 200, height: windowWidth - 200))
        img.image = mode.img
        img.tintColor = .black
        img.contentMode = .scaleAspectFill
        self.backView.addSubview(img)
        
        self.initBtn()
        
    }
    
    
    func initBtn() {
        
        let button = mode.buttons

        let y = (windowHeight - 200) - ((CGFloat(button.count) * btn_Height + leftSpacing + buttonMargen))
        
        for i in 0 ..< button.count {
            let frame = CGRect(
                x: 20,
                y: y + CGFloat(i) * (btn_Height + 10),
                width: windowWidth - 40,
                height: btn_Height)
            
            self.createBtn(
                frame: frame,
                title: button[i].title,
                backColor: button[i].backColor,
                tag: button[i].rawValue)
        }
        
    }
    
    func createBtn(frame: CGRect, title: String?, backColor: UIColor, tag: Int) {
        let button = UIButton(frame: frame)
        button.setTitle(title, for: .normal)
        button.backgroundColor = backColor
        button.layer.cornerRadius = 20
        button.tag = tag
        button.addTarget(self, action: #selector(onBtnPressed(_:)), for: .touchUpInside)
        self.backView.addSubview(button)
    }
    
    
    @objc func onTapBtn() {
        self.dismiss(animated: true)
    }
    
    @objc func onBtnPressed(_ sender: UIButton) {
        self.onButton(type: StatusButtons(rawValue: sender.tag) ?? .close)
    }
    
    private func onButton(type: StatusButtons) {
        switch type {
        case .updateNow:
//            self.onTapBtn(type)
            self.dismiss(animated: true)
        default :
            self.dismiss(animated: true)
        }
    }
    

}
