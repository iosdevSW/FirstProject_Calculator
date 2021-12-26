//
//  ViewController.swift
//  Calculator
//
//  Created by 신상우 on 2020/07/05.
//  Copyright © 2020 SangWoo Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var str: String = ""
    var number1 : String = ""
    var op = ""
    var number3 : Double = 0
    var lblResult: UILabel = {
        let lable = UILabel()
        lable.text = "0"
        lable.font = UIFont.systemFont(ofSize: 50)
        lable.textColor = UIColor(displayP3Red: 30/255, green: 40/255, blue: 30/255, alpha: 1)
        lable.textAlignment = NSTextAlignment.right
        lable.layer.borderColor = UIColor.black.cgColor
        lable.layer.borderWidth = 1
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var view1: UIView! = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var view2: UIView! = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var viewOneLine: UIView! = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var viewTwoLine: UIView! = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
    }()
    
    var viewThreeLine: UIView! = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
    }()
    
    var viewFourLine: UIView! = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
    }()
    
    var viewFiveLine: UIView! = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
    }()
    
    var btnReset: CustomButton = {
        let button = CustomButton()
        button.setTitle("AC", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.setTitleColor(UIColor.white, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnPlusMinus: CustomButton = {
        let button = CustomButton()
        button.setTitle("+-", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnPersent: CustomButton = {
        let button = CustomButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnDivide: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("÷", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnMultiply: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("X", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnPlus: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("+", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.orange, for: .selected)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnMinus: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("-", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var btnResult: UIButton = {
        let button = UIButton(type:UIButton.ButtonType.system)
        button.setTitle("=", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.backgroundColor = UIColor.orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
        
    
        
    var btnOne: CustomButton = {
        let button = CustomButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 1
        return button
    }()
        
    var btnTwo: CustomButton = {
        let button = CustomButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 2
        return button
    }()
        
    var btnThree: CustomButton = {
        let button = CustomButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 3
        return button
    }()
    
    var btnFour: CustomButton = {
        let button = CustomButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 4
        return button
    }()
    
    var btnFive: CustomButton = {
        let button = CustomButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 5
        return button
    }()
    
    var btnSix: CustomButton = {
        let button = CustomButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 6
        return button
    }()
    
    var btnSeven: CustomButton = {
        let button = CustomButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 7
        return button
    }()
    
    var btnEight: CustomButton = {
        let button = CustomButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 8
        return button
    }()
    
    var btnNine: UIButton = {
        let button = CustomButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 9
        return button
    }()
    
    var btnZero: CustomButton = {
        let button = CustomButton()
        button.setTitle("0", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tag = 0
        return button
    }()
    
    var btnPoint: CustomButton = {
        let button = CustomButton()
        button.setTitle(".", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor.gray
        button.layer.cornerRadius = 35
        //button.frame.size = CGSize(width: 100, height: 100)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view1.addGestureRecognizer(leftSwipe)
        self.setView()
        self.setLayout()
        self.addTarget()
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setRadius()
    }
    
}
// MARK: OutoLayOut Setting and AddSubView
extension ViewController{
    
    func setView(){
        self.view.addSubview(lblResult)
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view2.addSubview(viewOneLine)
        self.view2.addSubview(viewTwoLine)
        self.view2.addSubview(viewThreeLine)
        self.view2.addSubview(viewFourLine)
        self.view2.addSubview(viewFiveLine)
        self.viewOneLine.addSubview(btnReset)
        self.viewOneLine.addSubview(btnPlusMinus)
        self.viewOneLine.addSubview(btnPersent)
        self.viewOneLine.addSubview(btnDivide)
        self.viewTwoLine.addSubview(btnMultiply)
        self.viewFourLine.addSubview(btnPlus)
        self.viewThreeLine.addSubview(btnMinus)
        self.viewFiveLine.addSubview(btnResult)
        self.viewFourLine.addSubview(btnOne)
        self.viewFourLine.addSubview(btnTwo)
        self.viewFourLine.addSubview(btnThree)
        self.viewThreeLine.addSubview(btnFour)
        self.viewThreeLine.addSubview(btnFive)
        self.viewThreeLine.addSubview(btnSix)
        self.viewTwoLine.addSubview(btnSeven)
        self.viewTwoLine.addSubview(btnEight)
        self.viewTwoLine.addSubview(btnNine)
        self.viewFiveLine.addSubview(btnZero)
        self.viewFiveLine.addSubview(btnPoint)
        
    }
    
    func setLayout(){
        //lblresult Layout
        let safearea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.lblResult.topAnchor.constraint(equalTo:safearea.topAnchor,constant: 20),
            self.lblResult.centerXAnchor.constraint(equalTo:safearea.centerXAnchor),
            self.lblResult.widthAnchor.constraint(equalToConstant: safearea.layoutFrame.width - 30),
            self.lblResult.heightAnchor.constraint(equalTo:self.view2.heightAnchor,constant: -300)
                                     ])
        //view1 Layout
        NSLayoutConstraint.activate([
        self.view1.topAnchor.constraint(equalTo:safearea.topAnchor,constant: 20),
        self.view1.centerXAnchor.constraint(equalTo:safearea.centerXAnchor),
        self.view1.widthAnchor.constraint(equalToConstant: safearea.layoutFrame.width - 30),
        self.view1.heightAnchor.constraint(equalToConstant: 160)
                                 ])
        //view2 Layout
        NSLayoutConstraint.activate([
            self.view2.topAnchor.constraint(equalTo:self.lblResult.bottomAnchor,constant: 20),
            self.view2.bottomAnchor.constraint(equalTo:safearea.bottomAnchor),
            self.view2.leadingAnchor.constraint(equalTo: safearea.leadingAnchor,constant: 15),
            self.view2.trailingAnchor.constraint(equalTo: safearea.trailingAnchor,constant: -15)
        ])
        //viewOneLine Layout
        NSLayoutConstraint.activate([
            self.viewOneLine.topAnchor.constraint(equalTo:self.view2.topAnchor),
            self.viewOneLine.leadingAnchor.constraint(equalTo:self.view2.leadingAnchor),
            self.viewOneLine.trailingAnchor.constraint(equalTo: self.view2.trailingAnchor)
        ])
        //viewTwoLine Layout
        NSLayoutConstraint.activate([
            self.viewTwoLine.topAnchor.constraint(equalTo:self.viewOneLine.bottomAnchor),
            self.viewTwoLine.leadingAnchor.constraint(equalTo: self.view2.leadingAnchor),
            self.viewTwoLine.trailingAnchor.constraint(equalTo: self.view2.trailingAnchor),
            self.viewTwoLine.heightAnchor.constraint(equalTo:self.viewOneLine.heightAnchor)
        ])
        //viewThreeLine Layout
        NSLayoutConstraint.activate([
            self.viewThreeLine.topAnchor.constraint(equalTo:self.viewTwoLine.bottomAnchor),
            self.viewThreeLine.leadingAnchor.constraint(equalTo: self.view2.leadingAnchor),
            self.viewThreeLine.trailingAnchor.constraint(equalTo: self.view2.trailingAnchor),
            self.viewThreeLine.heightAnchor.constraint(equalTo:self.viewTwoLine.heightAnchor)
            ])
        //viewFourLine Layout
        NSLayoutConstraint.activate([
            self.viewFourLine.topAnchor.constraint(equalTo:self.viewThreeLine.bottomAnchor),
            self.viewFourLine.leadingAnchor.constraint(equalTo:self.view2.leadingAnchor),
            self.viewFourLine.trailingAnchor.constraint(equalTo: self.view2.trailingAnchor),
            self.viewFourLine.heightAnchor.constraint(equalTo:self.viewThreeLine.heightAnchor)
            ])
            //viewFiveLine Layout
            NSLayoutConstraint.activate([
                self.viewFiveLine.topAnchor.constraint(equalTo:self.viewFourLine.bottomAnchor),
                self.viewFiveLine.leadingAnchor.constraint(equalTo:self.view2.leadingAnchor),
                self.viewFiveLine.trailingAnchor.constraint(equalTo: self.view2.trailingAnchor),
                self.viewFiveLine.heightAnchor.constraint(equalTo:self.viewFourLine.heightAnchor),
                self.viewFiveLine.bottomAnchor.constraint(equalTo: self.view2.bottomAnchor,constant: -30)
                ])
        //btnReset layout
        NSLayoutConstraint.activate([ self.btnReset.centerYAnchor.constraint(equalTo:self.viewOneLine.centerYAnchor),
            self.btnReset.leadingAnchor.constraint(equalTo:self.viewOneLine    .leadingAnchor),
            self.btnReset.heightAnchor.constraint(equalTo:self.btnReset.widthAnchor),
        ])
        //btnPlusMinus
        NSLayoutConstraint.activate([ self.btnPlusMinus.centerYAnchor.constraint(equalTo:self.viewOneLine.centerYAnchor),
            self.btnPlusMinus.leadingAnchor.constraint(equalTo:self.btnReset.trailingAnchor,constant: 10),
            self.btnPlusMinus.heightAnchor.constraint(equalTo:self.btnPlusMinus.widthAnchor),
            self.btnPlusMinus.widthAnchor.constraint(equalTo:self.btnReset.widthAnchor)
        ])
        //btnPersent
        NSLayoutConstraint.activate([ self.btnPersent.centerYAnchor.constraint(equalTo:self.viewOneLine.centerYAnchor),
            self.btnPersent.leadingAnchor.constraint(equalTo:self.btnPlusMinus.trailingAnchor,constant: 10),
            self.btnPersent.heightAnchor.constraint(equalTo:self.btnPersent.widthAnchor),
            self.btnPersent.widthAnchor.constraint(equalTo:self.btnReset.widthAnchor)
        ])
        //btnDivide
               NSLayoutConstraint.activate([ self.btnDivide.centerYAnchor.constraint(equalTo:self.viewOneLine.centerYAnchor),
                   self.btnDivide.leadingAnchor.constraint(equalTo:self.btnPersent.trailingAnchor,constant: 10),
                   self.btnDivide.trailingAnchor.constraint(equalTo:self.viewOneLine.trailingAnchor),
                   self.btnDivide.heightAnchor.constraint(equalTo:self.btnDivide.widthAnchor),
                   self.btnDivide.widthAnchor.constraint(equalTo:self.btnReset.widthAnchor)
               ])
     
          //btnOne layout
        NSLayoutConstraint.activate([
            self.btnOne.centerYAnchor.constraint(equalTo:self.viewFourLine.centerYAnchor),
            self.btnOne.leadingAnchor.constraint(equalTo:self.viewFourLine.leadingAnchor),
            self.btnOne.heightAnchor.constraint(equalTo:self.btnOne.widthAnchor)
        ])
        //btnTwo layout
        NSLayoutConstraint.activate([ self.btnTwo.centerYAnchor.constraint(equalTo:self.viewFourLine.centerYAnchor),
            self.btnTwo.leadingAnchor.constraint(equalTo:self.btnOne.trailingAnchor, constant: 10),
            self.btnTwo.widthAnchor.constraint(equalTo:self.btnOne.widthAnchor),
            self.btnTwo.heightAnchor.constraint(equalTo:self.btnTwo.widthAnchor)
        ])
        //btnThree layout
        NSLayoutConstraint.activate([ self.btnThree.centerYAnchor.constraint(equalTo:self.viewFourLine.centerYAnchor),
            self.btnThree.leadingAnchor.constraint(equalTo:self.btnTwo.trailingAnchor, constant: 10),
            self.btnThree.widthAnchor.constraint(equalTo:self.btnTwo.widthAnchor),
            self.btnThree.heightAnchor.constraint(equalTo:self.btnThree.widthAnchor)
        ])
        //btnPlus layout
        NSLayoutConstraint.activate([ self.btnPlus.centerYAnchor.constraint(equalTo:self.viewFourLine.centerYAnchor),
            self.btnPlus.leadingAnchor.constraint(equalTo:self.btnThree.trailingAnchor, constant: 10),
            btnPlus.trailingAnchor.constraint(equalTo:self.viewFourLine.trailingAnchor),
            self.btnPlus.widthAnchor.constraint(equalTo:self.btnThree.widthAnchor),
            self.btnPlus.heightAnchor.constraint(equalTo:self.btnPlus.widthAnchor)
        ])
        //btnfour layout
        NSLayoutConstraint.activate([
            self.btnFour.centerYAnchor.constraint(equalTo:self.viewThreeLine.centerYAnchor),
            self.btnFour.leadingAnchor.constraint(equalTo:self.viewThreeLine.leadingAnchor),
            self.btnFour.heightAnchor.constraint(equalTo:self.btnFour.widthAnchor)
        ])
        //btnFive
        NSLayoutConstraint.activate([
            self.btnFive.centerYAnchor.constraint(equalTo:self.viewThreeLine.centerYAnchor),
            self.btnFive.leadingAnchor.constraint(equalTo:self.btnFour.trailingAnchor, constant: 10),
            self.btnFive.widthAnchor.constraint(equalTo:self.btnFour.widthAnchor),
            self.btnFive.heightAnchor.constraint(equalTo:self.btnFive.widthAnchor)
        ])
        //btnSix
        NSLayoutConstraint.activate([
            self.btnSix.centerYAnchor.constraint(equalTo:self.viewThreeLine.centerYAnchor),
            self.btnSix.leadingAnchor.constraint(equalTo:self.btnFive.trailingAnchor, constant: 10),
            self.btnSix.widthAnchor.constraint(equalTo:self.btnFour.widthAnchor),
            self.btnSix.heightAnchor.constraint(equalTo:self.btnSix.widthAnchor)
        ])
        //btnMinus
        NSLayoutConstraint.activate([
            self.btnMinus.centerYAnchor.constraint(equalTo:self.viewThreeLine.centerYAnchor),
            self.btnMinus.leadingAnchor.constraint(equalTo:self.btnSix.trailingAnchor, constant: 10),
            self.btnMinus.trailingAnchor.constraint(equalTo: self.viewThreeLine.trailingAnchor),
            self.btnMinus.widthAnchor.constraint(equalTo:self.btnFour.widthAnchor),
            self.btnMinus.heightAnchor.constraint(equalTo:self.btnMinus.widthAnchor)
        ])
        //btnSeven layout
        NSLayoutConstraint.activate([
            self.btnSeven.centerYAnchor.constraint(equalTo:self.viewTwoLine.centerYAnchor),
            self.btnSeven.leadingAnchor.constraint(equalTo:self.viewTwoLine.leadingAnchor),
            self.btnSeven.heightAnchor.constraint(equalTo: self.btnSeven.widthAnchor)
        ])
        //btnEight
        NSLayoutConstraint.activate([
            self.btnEight.centerYAnchor.constraint(equalTo:self.viewTwoLine.centerYAnchor),
            self.btnEight.leadingAnchor.constraint(equalTo:self.btnSeven.trailingAnchor, constant: 10),
            self.btnEight.widthAnchor.constraint(equalTo:self.btnSeven.widthAnchor),
            self.btnEight.heightAnchor.constraint(equalTo:self.btnEight.widthAnchor)
        ])
        //btnNine
        NSLayoutConstraint.activate([
            self.btnNine.centerYAnchor.constraint(equalTo:self.viewTwoLine.centerYAnchor),
            self.btnNine.leadingAnchor.constraint(equalTo:self.btnEight.trailingAnchor, constant: 10),
            self.btnNine.widthAnchor.constraint(equalTo:self.btnEight.widthAnchor),
            self.btnNine.heightAnchor.constraint(equalTo:self.btnNine.widthAnchor)
        ])
        //btn Multiply
        NSLayoutConstraint.activate([
            self.btnMultiply.centerYAnchor.constraint(equalTo:self.viewTwoLine.centerYAnchor),
            self.btnMultiply.leadingAnchor.constraint(equalTo:self.btnNine.trailingAnchor, constant: 10),
            self.btnMultiply.trailingAnchor.constraint(equalTo:self.viewTwoLine.trailingAnchor),
            self.btnMultiply.widthAnchor.constraint(equalTo:self.btnNine.widthAnchor),
            self.btnMultiply.heightAnchor.constraint(equalTo:self.btnMultiply.widthAnchor)
        ])
        //btnZero
        NSLayoutConstraint.activate([
            self.btnZero.centerYAnchor.constraint(equalTo:self.viewFiveLine.centerYAnchor),
            self.btnZero.leadingAnchor.constraint(equalTo:self.viewFiveLine.leadingAnchor),
            self.btnZero.heightAnchor.constraint(equalTo:self.btnPoint.heightAnchor)
        ])
        //btnPoint
        NSLayoutConstraint.activate([
            self.btnPoint.centerYAnchor.constraint(equalTo:self.viewFiveLine.centerYAnchor),
            self.btnPoint.leadingAnchor.constraint(equalTo:self.btnZero.trailingAnchor, constant: 10),
            self.btnPoint.widthAnchor.constraint(equalTo:self.btnOne.widthAnchor),
            self.btnPoint.heightAnchor.constraint(equalTo:self.btnPoint.widthAnchor)
        ])
        //btnResult
        NSLayoutConstraint.activate([
            self.btnResult.centerYAnchor.constraint(equalTo:self.viewFiveLine.centerYAnchor),
            self.btnResult.leadingAnchor.constraint(equalTo:self.btnPoint.trailingAnchor, constant: 10),
            self.btnResult.trailingAnchor.constraint(equalTo:self.viewFiveLine.trailingAnchor),
            self.btnResult.widthAnchor.constraint(equalTo:self.btnPoint.widthAnchor),
            self.btnResult.heightAnchor.constraint(equalTo:self.btnResult.widthAnchor)
        ])
    }
    
}
//MARK:- Methods
extension ViewController{
    func forZeroMtd(){
        if str == "" || str == "-"{
            number1 = "0"
        }
    }
    //btn 1~9 Mtd
    @objc func btnNumberMtd(sender: UIButton){
        let tag = sender.tag
        
        if tag == 1 {
        self.str.append("1")
        lblResult.text = str
        }
        if tag == 2 {
        self.str.append("2")
        lblResult.text = str
        }
        if tag == 3 {
        self.str.append("3")
        lblResult.text = str
        }
        if tag == 4 {
        self.str.append("4")
        lblResult.text = str
        }
        if tag == 5 {
        self.str.append("5")
        lblResult.text = str
        }
        if tag == 6 {
        self.str.append("6")
        lblResult.text = str
        }
        if tag == 7 {
        self.str.append("7")
        lblResult.text = str
        }
        if tag == 8 {
        self.str.append("8")
        lblResult.text = str
        }
        if tag == 9 {
        self.str.append("9")
        lblResult.text = str
        }
        if tag == 0 {
            if lblResult.text == "0"{
            }   
            else if lblResult.text == "-0"{
            }
            else{
                self.str.append("0")
                lblResult.text = str
            }
        }
    }
    
    @objc func btnPointMtd(sender: UIButton){
        self.str.append(".")
        lblResult.text = str
    }
    
    // btn Reset
    @objc func btnResetMtd(sender: UIButton){
        self.lblResult.text = "0"
        self.str = ""
        self.number1 = ""
        self.number3 = 0
        setAction(sender)
    }
    
    @objc func btnPlusMinusMtd(sender: UIButton){
        if let index = lblResult.text?.startIndex {
            if lblResult.text!.hasPrefix("-"){
                str.remove(at: index)
                if str == "" {
                    lblResult.text = "0"
                }else{
                lblResult.text = str
                }
            }else{
                str.insert("-", at: index)
                if str == "-"{
                    lblResult.text = "-0"
                }else{
                lblResult.text = str
                }
            }
        }
    }
    @objc func btnPersentMtd(sender: UIButton){
        if let number = Double(str) {
            let result = number / 100
            str = String(result)
            lblResult.text = str
        }
    }
    @objc func btndivideMtd(sender: UIButton){
        op = "/"
        if number1 == ""{
        number1 = str
        forZeroMtd()
        str = ""
        }else{
            var result = ""
            if let num1 = Double(number1),let num2 = Double(str){
                result = String(num1 / num2)
                
                str = ""
            if result.hasSuffix(".0"){
            result.remove(at:result.index(before: result.endIndex))
            result.remove(at:result.index(before: result.endIndex))
                lblResult.text = result
                number1 = result
                }
        }
            
    }
    }
    @objc func btnPlusMtd(sender: UIButton){
        op = "+"
        if number1 == ""{
        number1 = str
        forZeroMtd()
        str = ""
        }else{
            var result = ""
            if let num1 = Double(number1),let num2 = Double(str){
                result = String(num1 + num2)
                
                str = ""
            if result.hasSuffix(".0"){
            result.remove(at:result.index(before: result.endIndex))
            result.remove(at:result.index(before: result.endIndex))
                lblResult.text = result
                number1 = result
                }
        }
    }
    }
    @objc func btnMultiplyMtd(sender: UIButton){
        op = "*"
        if number1 == ""{
            number1 = str
            forZeroMtd()
            str = ""
        }else{
            var result = ""
            if let num1 = Double(number1),let num2 = Double(str){
                result = String(num1 * num2)
                
                str = ""
            if result.hasSuffix(".0"){
            result.remove(at:result.index(before: result.endIndex))
            result.remove(at:result.index(before: result.endIndex))
                lblResult.text = result
                number1 = result
                }
        }
        }
    }
    @objc func btnMinusMtd(sender: UIButton){
        op = "-"
        if number1 == ""{
            number1 = str
            forZeroMtd()
            str = ""
        }else{
            var result = ""
            if let num1 = Double(number1),let num2 = Double(str){
                result = String(num1 - num2)
                
                str = ""
            if result.hasSuffix(".0"){
            result.remove(at:result.index(before: result.endIndex))
            result.remove(at:result.index(before: result.endIndex))
                lblResult.text = result
                number1 = result
                }
        }
        }
    }
    
    @objc func btnResultMtd(sender: UIButton){
        var result = ""
        if let num1 = Double(number1),let num2 = Double(str){
            if op == "/" {
                result = (String(num1 / num2))
            }
            if op == "+"{
                result = (String(num1 + num2))
            }
            if op == "*"{
                result = (String(num1 * num2))
            }
            if op == "-"{
                result = (String(num1 - num2))
            }
            number3 = num2
        }
        if let num1 = Double(number1){
        if op == "/"{
            result = (String(num1 / number3))
        }
        if op == "+"{
            result = (String(num1 + number3))
        }
        if op == "*"{
            result = (String(num1 * number3))
        }
        if op == "-"{
            result = (String(num1 - number3))
        }
        }
        
        if result.hasSuffix(".0"){
            result.remove(at:result.index(before: result.endIndex))
            result.remove(at:result.index(before: result.endIndex))
        }
        lblResult.text = result
        number1 = result
        
        str = ""
    }
    @objc func respondToSwipeGesture(_ gesture:UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                if str == ""{
                }else{
                    str.remove(at: str.index(before: str.endIndex))
                    lblResult.text = str
                    if str == ""{
                        lblResult.text = "0"
                    }
                }
            default:
                break
            }
        }
    }
    

    func addTarget(){
        self.btnOne.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnTwo.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnThree.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnFour.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnFive.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnSix.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnSeven.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnEight.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnNine.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnZero.addTarget(self, action: #selector(ViewController.btnNumberMtd(sender:)), for: .touchUpInside)
        self.btnPoint.addTarget(self, action: #selector(ViewController.btnPointMtd(sender:)), for: .touchUpInside)
        self.btnReset.addTarget(self, action: #selector(ViewController.btnResetMtd(sender:)), for: .touchUpInside)
        self.btnPlusMinus.addTarget(self, action: #selector(ViewController.btnPlusMinusMtd(sender:)), for: .touchUpInside)
        self.btnPersent.addTarget(self, action: #selector(ViewController.btnPersentMtd(sender:)), for: .touchUpInside)
        self.btnDivide.addTarget(self, action: #selector(ViewController.btndivideMtd(sender:)), for: .touchUpInside)
        self.btnPlus.addTarget(self, action: #selector(ViewController.btnPlusMtd(sender:)), for: .touchUpInside)
        self.btnResult.addTarget(self, action: #selector(ViewController.btnResultMtd(sender:)), for: .touchUpInside)
        self.btnMultiply.addTarget(self, action: #selector(ViewController.btnMultiplyMtd(sender:)), for: .touchUpInside)
        self.btnMinus.addTarget(self, action: #selector(ViewController.btnMinusMtd(sender:)), for: .touchUpInside)
    }
    func setRadius(){
        let radius = self.btnReset.bounds.width / 2
        self.btnReset.layer.cornerRadius = radius
        self.btnPlusMinus.layer.cornerRadius = radius
        self.btnPersent.layer.cornerRadius = radius
        self.btnDivide.layer.cornerRadius = radius
        self.btnSeven.layer.cornerRadius = radius
        self.btnEight.layer.cornerRadius = radius
        self.btnNine.layer.cornerRadius = radius
        self.btnMultiply.layer.cornerRadius = radius
        self.btnFour.layer.cornerRadius = radius
        self.btnFive.layer.cornerRadius = radius
        self.btnSix.layer.cornerRadius = radius
        self.btnMinus.layer.cornerRadius = radius
        self.btnOne.layer.cornerRadius = radius
        self.btnTwo.layer.cornerRadius = radius
        self.btnThree.layer.cornerRadius = radius
        self.btnPlus.layer.cornerRadius = radius
        self.btnZero.layer.cornerRadius = radius
        self.btnPoint.layer.cornerRadius = radius
        self.btnResult.layer.cornerRadius = radius
    }
    func setAction(_ sender: UIButton){
        if sender.state == .highlighted{
            sender.backgroundColor = UIColor.gray
        }
        
    }
}



