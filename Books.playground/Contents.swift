import UIKit
import Foundation


//Access Controls (internal)
internal class BookStore {
    
    // properties of BookStore class
    var bookTitle : String
    var authorName : String
    var numberOfBooks : Int
    //Encapsulation
    private var price : Double

    //Compositions
    var languageOfBook : languageOfBook
    
    //setters & getters
    var discountBookStore :Double {

        get {
            price-5
            
        }
     //set
    }
    
    //initializer method
    init(bookTitle:String,authorName:String,price:Double,numberOfBooks:Int, languageOfBook:languageOfBook){
        self.bookTitle = bookTitle
        self.authorName = authorName
        self.price = price
        self.numberOfBooks = numberOfBooks
        self.languageOfBook = languageOfBook
    }
    
    //print method to prints BookStore details
    func bookStoreDetails(){
        print("Book Title Is : \(bookTitle)  Author Name is : \(authorName) Price of The Book is : \(price) Number of the Book is : \(numberOfBooks) language of the Booke is : \(languageOfBook) ")
     }
    
  //  Method overloading
    func bookStoreDetails(languageOfBook: languageOfBook) {
        print("language Of The Book is \(languageOfBook)")
    }
  }


//Declared a child class Book which inherits the BookStore class
class Book : BookStore {
    // Method override
    override func bookStoreDetails() {
        print("\(bookTitle)")
    }
   
    }


//polymorphism
class BookTypes: BookStore {
  
}

// To Use Compositions
enum languageOfBook {
    case English
    case Arabic

}




//created an object
var book = BookStore(bookTitle: "Forty", authorName: "Ahmed Alshuqairi", price: 69.00, numberOfBooks: 1, languageOfBook: .Arabic)
var book0 = BookStore(bookTitle: "Danny,the Champing of the word", authorName: "Roald Dahi", price: 119.99, numberOfBooks: 3, languageOfBook: .English)


print("Books Details: ")
book.bookStoreDetails()
book0.bookStoreDetails()

//price of the book with discount
print("price of the book with discount :")
print(book.discountBookStore)
print(book0.discountBookStore)



//------------------------------------------------------------------------------------------\\


//Review

//-----------------------------------------------

/*
 OOP(Object Oriented Programming),  on which almost all the modern programming language stand.OOP concepts are the backbone of SWIFT.
 */

//-----------------------------------------------

//Classes
/*
 
 Classes is general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your classes using the same syntax you use to define constants, variables, and functions.
 
 
 (((class is considered as a blueprint of objects. We can think of the class as a sketch (prototype) of a house. It contains all the details about the floors, doors, windows, etc. Based on these descriptions we build the house. House is the object.

Since many houses can be made from the same description, we can create many objects from a class.)))

 */

//-----------------------------------------------

//Object:

//An object is anything that you see which comes from a particular class.


//-----------------------------------------------

//Methods:

/*
 
 Methods or Functions are the behavior of the objects of a class.
 
 */

//-----------------------------------------------

//Access Controls

/*
 Swift provides quite many handy access control levels which are really helpful while writing our code. Some of the access levels provided SWIFT:
 
-* Open access and public access — Entities with this access level can be accessed within the module that they are defined as well as outside their module.
 
-* Internal access — Entities with this access level can be accessed by any files within the same module but not outside of it.
 
-* File-private access — Entities with this access level can only be accessed within the defining source file.
 
-* Private access — Entities with this access level can be accessed only within the defining enclosure.
 */

//-----------------------------------------------

//Encapsulation
/*
 
 Encapsulation is a concept by which we hide data and methods from outside intervention and usage.

 */
//-----------------------------------------------

//Inheritance
/*
 
 Inheritance is a process by which a child class inherits the properties of its parent class. it can also access class properties .

 
 */

//-----------------------------------------------

//Method overloading
/*
 
Method overloading is the process by which a class has two or more methods with same name but different parameters.(different number of parameters, different types of parameters, or both).
 The return types of the functions are not the same. It is because function overloading is not associated with return types. Overloaded functions may have the same or different return types, but they must differ in parameters.

*/

//-----------------------------------------------

//Overriding
/*
 
 Overriding is the process by which two methods have the same method name and parameters. One of the methods is in the parent class and the other is in the child class.
 
 */

//-----------------------------------------------

//polymorphism
/*
 
Define different behaviors for different objects while you are still using a shared interface among them.
 
*/
//-----------------------------------------------

//Getters and Setters
/*
 
 A getter method is used to perform a computation when requested.
 A setter method is an optional method. It can be used to modify a related property.
 
 *Setters and Getters apply to computed properties
 */
//-----------------------------------------------
