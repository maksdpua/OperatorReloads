
struct Point {
    var x : Int
    var y : Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

func +(a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func *(a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

p1 + p2
p1 * p2
//func += (inout a: Point, b: Point) {
//    a = a + b
//}

p1
p2

//p1 += p2
func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

p1 == p2
p1 == p1

p1

var i = 5

i += 1
i
i += 1


prefix func ++ (inout a: Point) -> Point {
    a.x += 1
    a.y += 1
    return a
}

postfix func ++ (inout a: Point) -> Point {
    let b = a
    a++
    return b
}

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)


//p1 += p1

i = 7



//if (p1++).x == 8 {
//    print("8")
//} else {
//    print("not 8")
//}

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

//p1++ + p2++
//
//p1++ + ++p2
//
//p1
//p2

//%%%

infix operator %%% {}

func %%% (inout a: Point, b: Point) -> Point {
    a.x += b.y
    a.y -= b.x
    return a
}

p1 %%% p2

var j = 5

i
j


i / 6 / j

infix operator ** {associativity right precedence 110}

func ** (a: Point, b: Point) -> Point {
    return Point(x: 2 * (a.x + b.x), y: 2 * (a.y + b.y))
}

p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

p1 ** p2 ** p1 ** p2

p1 + p2 ** p2 ** p1
((p1 + p2) ** p2) ** p1
(p1 + p2) ** (p2 ** p1)


var s = "Hello, world!"


import Foundation

func -= (inout s1: String, s2: String) {
    let set = NSCharacterSet(charactersInString: s2)
    let components : NSArray = s1.componentsSeparatedByCharactersInSet(set)
    s1 = components.componentsJoinedByString("")
}

s -= "lo"



func -= (inout s1: String, i: Int) {
    s1 -= String(i)
}

s = "0123456789"

s -= 5784440

s


