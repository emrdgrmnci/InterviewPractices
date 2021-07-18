//: [Previous](@previous)

import Foundation
import UIKit

class PopupView { }

class HomeViewController {

    private var views: [PopupView]?

    /*
     private let views: NSPointerArray

     init(views: NSPointerArray) {
     self.views = views
     }
     */

    init(views: [PopupView]) {
        self.views = views
    }

    func popupAction() {

    }
}

class ViewPresenter {

    private var viewA: PopupView? = PopupView()
    private var viewB: PopupView? = PopupView()
    private var homeVC: HomeViewController

    init() {
        self.homeVC = HomeViewController(views: [viewA!, viewB!])//injection of strong reference

//
//        let array = NSPointerArray.weakObjects()
//        array.addObject(viewA)
//        array.addObject(viewB)
//        self.home = Home(views: array)

    }

    func destroyViews() {
        viewA = nil//never will be nil
        viewB = nil//never will be nil

    }
}

//extension NSPointerArray {
//    func addObject(_ object: AnyObject?) {
//        guard let strongObject = object else { return }
//
//        let pointer = Unmanaged.passUnretained(strongObject).toOpaque()
//        addPointer(pointer)//: UnsafeMutableRawPointer?
//    }
//}

//: [Next](@next)
