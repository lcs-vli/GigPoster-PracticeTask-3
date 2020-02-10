//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

//grey block
canvas.drawShapesWithBorders = false
canvas.fillColor = lightGrey
var paralleclVertices: [Point] = []
paralleclVertices.append(Point(x: 0, y: 400))
paralleclVertices.append(Point(x: 0, y: 70))
paralleclVertices.append(Point(x: 370, y: 400))
canvas.drawCustomShape(with: paralleclVertices)

//yellow block
canvas.fillColor = deepYellow
var yellow: [Point] = []
yellow.append(Point(x: 0, y: 65))
yellow.append(Point(x: 0, y: 0))
yellow.append(Point(x: 60, y: 0))
yellow.append(Point(x: 400, y: 340))
yellow.append(Point(x: 400, y: 400))
yellow.append(Point(x: 340, y: 400))
canvas.drawCustomShape(with: yellow)

//black block
canvas.fillColor = black
var blackkk: [Point] = []
blackkk.append(Point(x: 60, y: 0))
blackkk.append(Point(x: 400, y: 0))
blackkk.append(Point(x: 400, y: 330))
canvas.drawCustomShape(with: blackkk)

//grey lines
canvas.lineColor = darkGrey

for line in 1...18{
    canvas.drawLine(from: Point(x:-410+43*line, y:0), to: Point(x:-10+43*line, y:400), lineWidth: 14)
}

//draw background grey above
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x:0, y:400), width: 400, height: 200)

//text 
canvas.drawText(message: "modest mouse", at: Point(x: 15, y: 405), size: 40)
canvas.drawText(message: "at the speak intongues social hall", at: Point(x: 15, y: 575), size: 8)
canvas.drawText(message: "4311 lorain ave. / cleveland, oh", at: Point(x: 15, y: 560), size: 8)
canvas.drawText(message: "saturday / august 24 1996", at: Point(x: 160, y: 575), size: 8)
canvas.drawText(message: "10 pm, all invited", at: Point(x: 160, y: 560), size: 8)
canvas.drawText(message: "with old hearts club", at: Point(x: 320, y: 575), size: 8)
canvas.drawText(message: "and milk", at: Point(x: 360, y: 560), size: 8)
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

