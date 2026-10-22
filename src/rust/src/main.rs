// Rust: Vec owns its elements; calculate borrows an immutable slice.
fn calculate(scores: &[i32]) -> (i32, f64) {
    let total: i32 = scores.iter().sum();
    let average = f64::from(total) / scores.len() as f64;
    (total, average)
}

fn main() {
    let scores = vec![12, 18, 25, 31, 44];
    let (total, average) = calculate(&scores);

    println!("Sum: {total}");
    println!("Average: {average:.2}");
    // The Vec's allocation is freed when scores goes out of scope.
}
