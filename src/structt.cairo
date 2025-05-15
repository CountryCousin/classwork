
#[derive(Copy, Drop)]
struct Book {
    title: felt252,
    author: felt252,
    pub_year: u32,
}

fn display_book_details(book: Book) {
    println!(" The title of the book is: {}", book.title);
    println!("The author is: {}", book.author);
    println!("The year of publication is : {}", book.pub_year);
}


fn main() {
    let mut my_book = Book {
        title: 'The Great Gatsby',
        author: 'F. Scott Fitzgerald',
        pub_year: 1925,
    };

    display_book_details(my_book);

    // Accessing a field
    let book_title = my_book.title;
    println!("The title of the book is: {}", book_title);

    // Modifying a field
    my_book.pub_year = 1926;
}


