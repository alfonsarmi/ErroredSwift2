import Foundation
import AVKit
import SwiftUI
import UIKit as UI
import Foundation as MyFoundation
// Ejemplo de código Swift con if, while y for
/*
   Este es un comentario
   multilínea
*/
/* This is a multi-line comment and it can span
    * as many lines as you like 
    /* This is a nested comment */
    // Another nested comment 
*/
/// Esta función suma dos números enteros y devuelve el resultado.
/// - Parameter a: El primer número.
/// - Parameter b: El segundo número.
/// - Returns: La suma de los dos números.
internal func suma(a: Int, b: Int) -> Int {
    return a + b
}
// Ejemplo de if
let numero = 10
if numero > 5 {
    print("El número es mayor que 5")
} else {
    print("El número no es mayor que 5")
}
// Ejemplo de while
var contador = 0
while contador < 5 {
    print("Contador: \(contador)")
    contador += 1
}
// Ejemplo de for
for i in 1...5 {
    print("Valor de i: \(i)")
}
// También se puede utilizar el ciclo for para iterar sobre una colección
let nombres = ["Juan", "María", "Carlos", "Ana"]
for nombre in nombres {
    print("Hola, \(nombre)!")
}
class Student {
  // fileprivate property
  fileprivate var name = "Tim Cook"
  // fileprivate method    
  fileprivate func display() {
    print("Hello from Student class")
  }
}
// create object of Student class
var student1 = Student()
// access name property
print("Name:", student1.name)
// access display method 
student1.display()
public class OuterClass { 
    var outerProperty = 42    
    class InnerClass { //UNA CLASE DENTRO DE OTRA Y SE VERA COMO OterClass.InnerClass!!!!
        var innerProperty = "Hello from inner class"
    }
}
let outerInstance = OuterClass()
let innerInstance = OuterClass.InnerClass()
print(outerInstance.outerProperty)
print(innerInstance.innerProperty)
//esto es un enumerado normal
enum DíaSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sábado
    case domingo
}
// Uso del enumerado
let día = DíaSemana.martes
switch día {
case .lunes, .martes, .miércoles, .jueves, .viernes:
    print("Es un día laborable.")
case .sábado, .domingo:
    print("Es fin de semana.")
}
//Esto es el equivalente a una clase enumerada en swift
 enum MyNamespace { 
    struct MyClass1 {
        func method1() {
            print("Method 1 of MyClass1")
        }
        func method2() {
            print("Method 2 of MyClass1")
        }
    }
     struct MyClass2 {
        func method1() {
            print("Method 1 of MyClass2")
        }
        func method2() {
            print("Method 2 of MyClass2")
        }
    }
}
let instance1 = MyNamespace.MyClass1()
let instance2 = MyNamespace.MyClass2()
instance1.method1() // Output: Method 1 of MyClass1
instance2.method2() // Output: Method 2 of MyClass2
// Declaración de un protocolo (interfaz)
public protocol Playable {
    func play(test: String)
}
// Declaración de una clase base (superclase)
class MediaItem {
    var title: String    
    init(title: String) {
        self.title = title
    }
}
// Declaración de una clase que hereda de MediaItem e implementa Playable
class Song: MediaItem, Playable {
    var artist: String    
    init(title: String, artist: String) {
        self.artist = artist
        super.init(title: title)
    }    
    func play(title: String) {
        print("Playing song: \(title) by \(artist)")
    }
}
// Declaración de una clase que hereda de MediaItem e implementa Playable
class Movie: MediaItem, Playable {
    var director: String    
    init(title: String, director: String) {
        self.director = director
        super.init(title: title)
    }    
    func play(title: String) {
        print("Playing movie: \(title) directed by \(director)")
    }
}
// Extensión de la clase MediaItem con un método adicional
extension MediaItem {
    func showInfo() {
        print("Title: \(title)")
    }
}
// Creación de instancias y uso de las clases y protocolo
let song = Song(title: "A Sky Full of Stars", artist: "Coldplay")
let movie = Movie(title: "Inception", director: "Christopher Nolan")
song.play("test")
movie.play("test")
song.showInfo()
movie.showInfo()
protocol ExampleProtocol {
    associatedtype AssociatedType
    init()
    func exampleMethod()
    subscript(index: Int) -> String { get set }
}
class ExampleClass: ExampleProtocol {
    typealias AssociatedType = Int    
    init() {
        // Implementación del inicializador
    }    
    func exampleMethod() {
        // Implementación del método
    }    
    subscript(index: Int) -> String {
        get {
            return "Value at index \(index)"
        }
        set {
            // Implementación del setter del subíndice
        }
    }
}
func bucles() {
    for index in 1...5 {
        print("Index: \(index)")
    }
    let fruits = ["Apple", "Banana", "Orange"]
    for fruit in fruits {
        print("Fruit: \(fruit)")
    }
    var counter = 0
    while counter < 5 {
        print("Counter: \(counter)")
        counter += 1
    }
    var number = 10
    repeat {
        print("Number: \(number)")
        number -= 2
    } while number > 0
    for var i = 0; i < 5; i++ {
        print("i: \(i)")
    }
    enum Direction {
        case north, south, east, west
    }
    for case .east in [Direction.north, .east, .south, .west] {
        print("Found east direction")
    }
}
//Extensiones
//Agregando metodos a una clase existente (en este caso a una clase de systema que no es de usuario)
extension String {
    func reverse() -> String {
        return String(self.reversed())
    }
}
let original = "hello"
let reversed = original.reverse()  // "olleh"
struct Point {
    var x: Double
    var y: Double
}
//Agregando propiedades a una estructura
extension Point {
    var magnitude: Double {
        return sqrt(x * x + y * y)
    }
}
let point = Point(x: 3.0, y: 4.0)
let magnitude = point.magnitude  // 5.0
//Agregando inicializadores a un protocolo
protocol Describable {
    init(description: String)
}
extension Describable {
    init() {
        self.init(description: "Default Description")
    }
}
class Item: Describable {
    var description: String    
    required init(description: String) {
        self.description = description
    }
}
let defaultItem = Item()
print(defaultItem.description)  // "Default Description"
func variablesinstring()
{
    val a = 10
    val b = 20
    val result = "La suma de $a y $b es ${a + b}." //In Swift parser variables inside a string are not detected
    println(result)
}
func processFile(filename: String) {
    print("Opening file: \(filename)")    
    defer {
        print("Closing file: \(filename)")
    }    
    // Simulando el procesamiento del archivo
    if filename.isEmpty {
        print("Error: Empty filename")
        return
    }    
    print("Processing file: \(filename)")
}
func LabeledStatementWithBreak() {
    outerloop: for i in 1...3{
        innerloop: for j in 1...3 {
            if j == 3 {
                break outerloop
            }
            print("i = \(i), j = \(j)")
        }
    }
}
//Vamos a tratar guard como si de un if se tratase
func checkAge() {	
    var age: Int? = 22
    guard let myAge = age else {
        print("Age is undefined")
        return
    }
    print("My age is \(myAge)")
}
func checkJobEligibility() {    
    var age = 33
    guard age >= 18, age <= 40 else {
        print("Not Eligible for Job")
        return
    }
    print("You are eligible for this job")
}
func checkOddEven() {
    var number = 23
    // use of guard statement
    guard number % 2 == 0 else {        
        print("Odd Number")
        return
    }
    print("Even Number")
}
func SwitchStatement() {
    // program to find the day of the week 
    let dayOfWeek = 4
    switch dayOfWeek {
    case 1:
        print("Sunday")            
    case 2:
        print("Monday")            
    case 3:
        print("Tuesday")            
    case 4:
        print("Wednesday")            
    case 5:
        print("Thursday")            
    case 6:
        print("Friday")            
    case 7:
        print("Saturday")            
    default:
        print("Invalid day")
    }    
}
func SwitchStatementWithFallthrough() {
    // program to find the day of the week 
    let dayOfWeek = 4
    switch dayOfWeek {
    case 1:
        print("Sunday")            
    case 2:
        print("Monday")            
    case 3:
        print("Tuesday")            
    case 4:
        print("Wednesday")
        fallthrough    //Es como un continue         
    case 5:
        print("Thursday")            
    case 6:
        print("Friday")            
    case 7:
        print("Saturday")            
    default:
        print("Invalid day")
    }
}
func SwitchStatementWithRange() {
    let ageGroup = 33
    switch ageGroup {
    case 0...16:
        print("Child")
    case 17...30:
        print("Young Adults")
    case 31...45:
        print("Middle-aged Adults")
    default:
        print("Old-aged Adults")
    }
}
// create an enum with error values
enum DivisionError: Error {
      case dividedByZero
}
// create a throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {
  // throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }    
  else {
    let result = numerator / denominator
    print(result)
  }
}
// call throwing function from do block
do {
  try division(numerator: 10, denominator: 0)
  print("Valid Division")
}
// catch error if function throws an error
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}
class TiposDeVariablesDeClase {
    // Variables de clase públicas
    var variablePublica = 42, otraVariablePublica = "Hola"
    // Variables de clase privadas
    private var variablePrivada = 100, public otraVariablePrivada = "Mundo"
    // Variables de clase internas
    internal var variableInterna = true, otraVariableInterna = "Swift"
    // Variables de clase protegidas
    internal(set) var variableProtegida = 3.14, otraVariableProtegida = "OpenAI"
    // Variables de clase de solo lectura (getter público, setter privado)
    public private(set) var variableSoloLectura = "Solo lectura"
}
// LifeForm.swift
class LifeForm {
    var name: String    
    init(name: String) {
        self.name = name
    }    
    func introduce(message: String) {
        print(message)
    }
}
// Person.swift
class Person: LifeForm {
    var age: Int    
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }    
    func sayHello(helloString : String) {
        print("\(helloString), my name is \(name), and I am \(age) years old.")
    }
}
// Child.swift
class Child: Person {
    func getPerson(test: String) -> Person {
        return Person(name: self.name, age: self.age)
    }
    func gimmeAnString(myString: String) -> String {
        let mensaje = myString
        return mensaje
    }
}
// main.swift
let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Bob", age: 25)
person1.sayHello("hola")
person2.sayHello("hi")
person1.introduce("hola")
person2.introduce("que tal")
let child = Child(name: "Charlie", age: 5)
let personFromChild = child.getPerson(test: "test")
personFromChild.sayHello()
personFromChild.introduce()
let childInChain = Child(name: "Charlie", age: 5).getPerson(test: "test").sayHello("buenas")
let myChild = Child(name: "Charlie", age: 5)
let myChildInChain = myChild.getPerson(test: "test").sayHello("buenas")
Child(name: "Charlier", age: 5).getPerson(test: "test").introduce("como estas")
Child(name: "Charlier", age: 5).getPerson(test: Child(name: "Charlier", age: 5).gimmeAnString("thisiaATest")).introduce("como estas")
let pruebaNumero = 5
switch pruebaNumero {
    case let x where x % 2 == 0:
        print("Es un número par")
    case let y where y % 2 != 0:
        print("Es un número impar")
    default:
        print("Default")
}
No newline at end of file
