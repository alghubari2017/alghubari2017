//
//  PhotoEditorViewController.swift
//  P-effect
//
//  Created by Illya on 1/25/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit

protocol PhotoEditorDelegate: class {
    
    func photoEditor(photoEditor: PhotoEditorViewController, didChooseEffect: UIImage)
    func photoEditor(photoEditor: PhotoEditorViewController, didAskForImageWithEffect: Bool) -> UIImage
}

class PhotoEditorViewController: UIViewController {
    
    @IBOutlet private weak var effectsPickerContainer: UIView!
    @IBOutlet private weak var imageContainer: UIView!
    @IBOutlet private weak var leftToolbarButton: UIBarButtonItem!
    @IBOutlet private weak var rightToolbarButton: UIBarButtonItem!
    
    var model: PhotoEditorModel!
    var effectsPickerController: EffectsPickerViewController? {
        didSet {
            effectsPickerController?.delegate = self
        }
    }
    var imageController: ImageViewController?
    weak var delegate: PhotoEditorDelegate?
    
    @IBAction private func postEditedImage(sender: AnyObject) {
        
    }
    
    @IBAction private func saveToImageLibrary(sender: AnyObject) {
        
    }
    
    func didChooseEffectFromPicket(effect: UIImage) {
        delegate?.photoEditor(self, didChooseEffect: effect)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        var size = imageContainer.frame.size
        size.width = UIScreen.mainScreen().bounds.width
        size.height = size.width
        imageContainer.bounds.size = size
        size.height = effectsPickerContainer.frame.height
        effectsPickerContainer.bounds.size = size
        
        leftToolbarButton.width = UIScreen.mainScreen().bounds.width*0.5
        rightToolbarButton.width = UIScreen.mainScreen().bounds.width*0.5
        view.superview?.layoutIfNeeded()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier! {
        case Constants.PhotoEditor.ImageViewControllerSegue:
            imageController = segue.destinationViewController as? ImageViewController
            imageController?.model = ImageViewModel.init(image: model.originalImage())
            delegate = imageController
        case Constants.PhotoEditor.EffectsPickerSegue:
            effectsPickerController = segue.destinationViewController as? EffectsPickerViewController
            effectsPickerController?.model = EffectsPickerModel()
        default:
            break
        }
        
        super.prepareForSegue(segue, sender: sender)
    }
}
