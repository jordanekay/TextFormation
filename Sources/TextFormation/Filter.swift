import Foundation
import TextStory

public enum FilterAction {
    case none
    case stop
    case discard
}

extension FilterAction: Hashable {
}

public protocol Filter {
    func processMutation(_ mutation: TextMutation, in interface: TextInterface) -> FilterAction
}
