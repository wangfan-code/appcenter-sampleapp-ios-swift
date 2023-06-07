
import XCTest
import AVFoundation
import Foundation

class sampleapp_ios_swiftUITests: XCTestCase {
   let app = XCUIApplication()
    override func setUp() {
        super.setUp()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // to play sound
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: "This is an App Center audio test with real device.")
        speechSynthesizer.speak(utterance)
        
        app.launch()
 
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSwipeUntilCrashesPage() {
        // Assert that the crash button exists
        let window = app.windows.element(boundBy: 0)
        let fatalErrorButtonQuery = app.buttons.matching(identifier: "fatalErrorButton")
        XCTAssert(window.frame.contains(fatalErrorButtonQuery.accessibilityFrame))
    }
    

}
