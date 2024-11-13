# Race to Billion

I saw a YouTube [video](https://youtu.be/VioxsWYzoJk?si=0j4sPqBwWh-vIOev) about Python vs C++ speed comparison and it blew my mind off. So I wanted to right something similar by myself and see.

I decided to use Rust (Instead of C++), Python and Kotlin also. 

## Why ⇒

**Rust ?** (Compiled language) It a systems programming language just like C & C++, and gained more and more popularity these days. 

**Python ?** (Interpreted language) This year (2024) Python outranked JavaScript as the most widely used language on GitHub, across all work.

**Kotlin ?** (JVM Language)

## Background of the Test

It’s a simple program that count to 1 billion.  

### Rust Code

```rust
use std::time::Instant;

fn main() {
    let start = Instant::now();
    println!("Start counting to 1 Billion!");

    let mut i = 0;
    while i < 1000000000 {
        i = i + 1;
    }
    
    let duration = start.elapsed();
    println!("Time elapsed to count 1  Billion: {:?}", duration);
}
```

## Python Code

```python
import time

start = time.time()
print ("Start counting to 1 Billion!")

i = 1
while i < 1000000000:
  i += 1
  
end = time.time()
print (f"Time elapsed to count 1  Billion: {end - start}")
```

## Kotlin Code

```kotlin
import kotlin.time.measureTime

fun main() {
  println("Start counting to 1 Billion!")
  val timeTaken = measureTime {
    var i = 0
    while (i < 1000000000) {
      i++
    } 
  }
  
  println("Time elapsed to count 1  Billion: " + timeTaken) 
}
```

## Execution Times