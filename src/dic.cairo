use core::dict::{Felt252Dict};

fn main() {
    
    let mut balances: Felt252Dict<u64> = Default::default();

    balances.insert('Alex', 100);
    balances.insert('Maria', 200);

    let alex_balance = balances.get('Alex');
    assert(alex_balance == 100, 'Balance is not 100');
    println!("Alex's balance is: {}", alex_balance);

    let maria_balance = balances.get('Maria');
    assert(maria_balance == 200, 'Balance is not 200');
    println!("Maria's balance is: {}", maria_balance);
}
