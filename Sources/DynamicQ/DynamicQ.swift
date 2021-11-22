import SwiftProtobuf

public struct ClassA {

    public init() {
    }
    
    public func request() -> String {
        return "Hello \(Message.self)"
    }
}
