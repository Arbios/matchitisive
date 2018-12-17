import Foundation
import CreateML



let trainDirectory = URL(fileURLWithPath: "~/Desktop/Fruits")
let testDirectory = URL(fileURLWithPath: "~/Desktop/TestFruits")


let model = try MLImageClassifier(trainingData: .labeledDirectories(at: trainDirectory))
let evaluation = model.evaluation(on: .labeledDirectories(at: testDirectory))
