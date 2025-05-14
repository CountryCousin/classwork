fn main() {
   let mut a:Array<u128> = ArrayTrait::new();
a.append(8);
a.append(79);
a.append(2);

let att = a.at(0);

assert(*att == 8, 'att should be 0');
println!("att: {}", att);

let gett = a.get(1).unwrap().unbox();
assert(*gett == 79, 'get should be 0');
println!("get: {}", gett);

// let poped = a.pop_front();
// assert(poped.unwrap() ==  , 'poped should be 2');

}
