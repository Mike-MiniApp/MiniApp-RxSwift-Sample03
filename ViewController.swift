//
//  ViewController.swift
//  RxSimpleTap
//
//  Created by 近藤米功 on 2022/07/27.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    private func setupBindings(){
        // onNextは必ずつける、つけないとtextの変更が反映されない
        loginButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "login"
        })
        .disposed(by: disposeBag)

        resetButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "reset"
        })
        .disposed(by: disposeBag)

        exitButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "exit"
        })
        .disposed(by: disposeBag)

        helpButton.rx.tap.subscribe(onNext: { [weak self] in
            self?.messageLabel.text = "help"
        })
        .disposed(by: disposeBag)



    }



}

