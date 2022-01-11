import UIKit
import Foundation
   // written By programmer : Afnan Theb

//-------------------------------------------------------------------------------------
// MARK: (1)Create BookStore that contains Book name , Author name , Price , Number of Books
class BookStore {
    var nameBook : String
    var nameAuthor : String
    var price : Double
    // MARK: (8) Implement Access Control
   private var numBook: Int
    // MARK: (6) Implement Compositions concept  --- step 1
    var edition : [Edition] = []
    
    // MARK: (10) Implement Encapsulation concept
    final var signatureStore : String = ""
    
    // MARK: (3) Add Initializer function
    init( nameBook :String , nameAuthor:String , price:Double , numBook:Int, edition : Edition){
        self.nameBook = nameBook
        self.nameAuthor = nameAuthor
        self.price = price
        self.numBook = numBook
        self.edition[0] = edition
        
    }
    //MARK: (2) Add print method to prints BookStore details
    func detailsBook (){
        print("This Book :\(nameBook) number :\(numBook)")
        print("Author :\(nameAuthor)  price :\(price)")
    }
    // when want change price
    // MARK: (7) use Overloading
    func detailsBook (price : Int){
        print("This Book :\(nameBook) number :\(numBook)")
        print("Author :\(nameAuthor)  price :\(price)")
    }
    
    func IssuanceOfSignature (){
        signatureStore = " This book \(nameBook) has been sold from a  AfnanthebStor »"
    }
    func printSignature (){
        print(signatureStore)
    }    
}
// MARK: (4) Create object
let myBooks = BookStore(nameBook: "Shine & Raise", nameAuthor: "A.A.R" , price: 1000.0, numBook: 100 , edition: firstEdition )


//MARK: (5) Implement Inheritance concept
//Implement Polymorphism concept
class  bookOfkids  : BookStore {
  var ageCategories : String = "7 - 6"
    
    //MARK: (7) Use Overriding
    override func detailsBook() {
        print("Category : \(ageCategories)")
    }
}


//Implement Inheritance concept
//MARK: (10) Implement Polymorphism concept
class bookCooking : BookStore {
    
    //MARK: (9) Add setters & getters
    var numberOfRecipes : Int { get{
        return self.numberOfRecipes
    } set {
        self.numberOfRecipes = 50
    }
    }
    override func detailsBook(price: Int) {
        print ("number Of Recipes : \(numberOfRecipes)")
    }
   
}

//Implement Compositions concept --- step 2
struct Edition {
let numEdition : Int
let yearEdition : Int
let cover : String
}
let firstEdition = Edition(numEdition: 1 , yearEdition: 2022 , cover: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfr_-9CKVVrxdBURrymYVvSHa3I3304n3KEQ&usqp=CAU" )
//-----------------------------------------
//-----(END)--------------------------------------------------------------------------------
