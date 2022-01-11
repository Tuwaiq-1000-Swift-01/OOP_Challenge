import UIKit
import Foundation
open class Category{
    var categoryName : String = "Education Books"
}

public class BookStore{
    var bookName : String
    var authorName :String
    var price : String
    var numberOfBooks : Int
    var booktype : Category!

    init(){
        let category = Category()
        self.bookName = "Fly"
        self.authorName = "Ahmed Abdullah"
        self.price = "20SR"
        self.numberOfBooks = 90
        self.booktype = category
    }
    func printInfo(){
        print("the book name is \(self.bookName) ")
        print("the book author's  \(self.authorName) ")
        print("Price  \(self.price) ")
        print("Price  \(self.numberOfBooks) ")
        
    }
    func printInfo(bookName : String){
        print("the book name is \(self.bookName) ")
        print("the book author's  \(self.authorName) ")
        print("Price  \(self.price) ")
        print("Pages  \(self.numberOfBooks) ")
        
    }
}
internal class Publisher : BookStore {
    var publisherName : String
    var publisherYear : String
    private var stordEmail : String
     var publisherEmail: String {
        get {
            return self.stordEmail
        }
        set {
            self.stordEmail = newValue
        }
    }
    override init() {
        self.publisherName = "N"
        self.publisherYear = "3"
        self.stordEmail = "kjhgf"
        super.init()
    }
    
    override func printInfo(){
        print("the publisher name is \(self.publisherName) ")
        print("the book publishing Year \(self.publisherYear) ")
    }
    
    
    
}

var book = BookStore()
 
