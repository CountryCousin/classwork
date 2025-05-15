#[derive(Drop)]
enum TaskStatus {
    ToDo,
    InProgress,
    Completed,
    OnHold:bool,
}

fn main() {
    let task = TaskStatus::OnHold(true);
    match task {
        TaskStatus::ToDo => println!("Task is to do"),
        _=> println!("Task is not to do"),
        // TaskStatus::InProgress => println!("Task is in progress"),
        // TaskStatus::Completed => println!("Task is completed"),
        // TaskStatus::OnHold(x) => println!("Task is on hold: {}", x),
    }
}