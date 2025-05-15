fn main() {

   let mut a:Array<felt252> = ArrayTrait::new();

a.append(8);
a.append(79);
a.append(20);
a.append(2);

// using the at method
let att = a.at(0);
assert(*att == 8, 'wrong value');
println!("with at, item is : {}", att);

// using the get method
let gett = a.get(1).unwrap().unbox();
assert(*gett == 79, 'seem wrong');
println!("with get, item is : {}", gett);

// using the get method
    let index = 3;
    let y = match a.get(index) {
        Option::Some(u) => *u.unbox(),
        Option::None => 'index is out of bounds'
      
    };

    println!("item at y is : {}", y);

let poped = a.pop_front();
assert(poped.unwrap() == 8 , 'poped seem wrong');
println!("poped value is : {}", poped.unwrap());

let len = a.len();
assert(len == 3, 'len seem wrong');
println!("len of the array is : {}", len);

let empty = a.is_empty();
assert(!empty, 'array should not be empty');
println!("is empty : {}", empty);

let _sarr = a.span();


}
