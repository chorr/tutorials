import ComposableArchitecture
import XCTest
@testable import TCATutorial

@MainActor
final class CounterFeatureTests: XCTestCase {
    func testCounter() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
    }
}
