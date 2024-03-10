//
//  HomeViewController.swift
//  CustomCamera
//
//  Created by Waleed Saad on 10/03/2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var imageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 10
        image.backgroundColor = .clear
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private var takePhotoButton = {
        let button = UIButton()
        button.setTitle("Capture Photo", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.layer.cornerRadius = 5
        button.addTarget(HomeViewController.self, action: #selector(handleTakePhoto), for: .touchUpInside)
        return button
    }()
    
    //MARK: - properties
    //
//    weak var valifyResultDelegate: ValifyResultDelegate?
    
    // MARK: - View LifeCycle
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

private extension HomeViewController {
    private func setupUI() {
        view.backgroundColor = .white
        self.view.addSubviews(imageView, takePhotoButton)
        view.addSubview(imageView)
        imageView.makeConstraints(
            top: self.view.topAnchor,
            left:  self.view.leftAnchor,
            right: self.view.rightAnchor,
            bottom: nil,
            topMargin: 30,
            leftMargin: 20,
            rightMargin: 20,
            bottomMargin: 0,
            width: 0,
            height: 0
        )
        
        takePhotoButton.makeConstraints(
            top: self.imageView.bottomAnchor,
            left:  self.view.leftAnchor,
            right: self.view.rightAnchor,
            bottom: self.view.bottomAnchor,
            topMargin: 30,
            leftMargin: 30,
            rightMargin: 30,
            bottomMargin: 50,
            width: 120,
            height: 50
        )
    }
    
    @objc private func handleTakePhoto() {
//        let controller = CustomCameraController()
//        controller.modalPresentationStyle = .fullScreen
//        controller.modalTransitionStyle = .crossDissolve
//        controller.valifyResultDelegat = self
//
//        self.present(controller, animated: true, completion: nil)
        
    }
}
// MARK: - ValifyDelegate
//
//extension HomeViewController: ValifyResultDelegate {
//    func didFinishCapturePhoto(to viewController: UIViewController,with result: Result<UIImage, Error>) {
//        viewController.dismiss(animated: true)
//        guard let image = try? result.get() else { return }
//        self.imageView.image = image
//    }
//}


