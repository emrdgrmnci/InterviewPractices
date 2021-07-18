//: [Previous](@previous)

import Foundation
import UIKit

final class WeakBox<A: AnyObject> {
    weak var unbox: A?
    init(_ value: A) {
        unbox = value
    }
}

let popUp = UIView()
let weakReference = WeakBox(popUp)


/*In order to make an array reference its elements weakly, we simply wrap all the elements:*/

let strongArray = [UIView(), UIView()]
//let weakArray = strongArray.map { WeakBox($0) }

struct WeakArray<Element: AnyObject> {
    private var items: [WeakBox<Element>] = []

    init(_ elements: [Element]) {
        items = elements.map { WeakBox($0) }
    }
}

extension WeakArray: Collection {
    var startIndex: Int { return items.startIndex }
    var endIndex: Int { return items.endIndex }

    subscript(_ index: Int) -> Element? {
        return items[index].unbox
    }

    func index(after idx: Int) -> Int {
        return items.index(after: idx)
    }
}


/*Now we can use WeakArray like any other collection, e.g. calling filter on it, or using its first and last properties*/

let weakArray = WeakArray([UIView(), UIView()])
let firstElement = weakArray.filter { $0 != nil }.first


//: [Next](@next)
