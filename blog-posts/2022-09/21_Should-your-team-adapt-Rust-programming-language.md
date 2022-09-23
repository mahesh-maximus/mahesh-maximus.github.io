# Should your team adapt RUST programming language?

# What is Rust

You probably have herd, A new programing language design among three big pillars.

Performance & Control | Reliability & Safty | Productivity
----------------------|---------------------|-------------
Full system control with no mandatory runtime services.| Statically guarantees memory safety and thread safety | Documentation, mature compiler and tolls, package manager, IDE & editor integration.

Most people come to Rust because of the unique combination of first two pillars, Performance & Control with Reliability & Safety. In most languages today you have to choose one or the other. Languages like JavaScript Kotlin and Java have compile time or runtime prevention of threading or memory corruption issues, but they abstract away your access to the machine. On the other side the C family of languages provides that access but little in the way of safeguards. So increasingly projects needs both of those.

Most of the mobile devices rely on taking advantage on parallelism while dealing with  many complex concurrent events, mobile phones continue to increase the amount of parallelism through more CPU cores and scaling via that parallelism instead of jacking up the frequency of the CPU is a key way for users to a great flicker free experience without hurting the battery life, but at the same time, we have myriad devices, phones and tablets, headphones and TVs all of which are communicating concurrently with each other. And introducing a lot of complexity that makes it really hard to build stable systems. Rust is the only language we know that gives us both the performance and the safety that we need.

## Performance & Control with Reliability & Safety
#### These features usually do not mix

* In most languages you either have
  * Compile-time or run-time prevention of threading and memory corruption issues
  * Full performance
* Increasingly, devices require parallelism & concurrency
  * Mobile phones have many CPU cores
  * Multiple devices interacting with each other have complex interaction patterns
* ___Rust is the only language that gives us both performance and safety___

## Productivity
Of course, it's not just about the language itself. The code we write is often a small portion of the overall deliverable. In a system like Android over three quarters of the source code, 7t million of the 100 million line of code are third party ecosystem libraries that we rely on. And Rust makes it easy to integrate and update those dependencies, that something we haven't really had with C or Java. There is also a really consistent story around the code style and warnings. Rust format provides code style defaults that you'll see across the entire ecosystem, and Clippy enforces appropriate use of coding patterns. That means in every Rust project you run into, you'll be able to understand the code. There aren't the sort of local dialects that you get with C++, where every company and every project has chosen some different subset or stylistic way of using the language. Beyond the tooling, though, Rust project was one of the first language communities to adopt and enforce not only a code of conduct, but norms around being welcoming to developers not matter what their prior background is or what industry they're working in. This means that for new adapters of the language, it's easy to get early feedback and guidance on your journey.

___It's not just about the language___

* Modular dependencies with a uniform build and test system
  * Easy to integrate
  * Easy to update

* Widely adapted consistent tooling for styling & formatting
  * Rustfmt, clippy , etc.

* Diverse, welcoming, and open community to discuss new use cases. 

## Why did Android adopt Rust so quickly?
But just being an amazing language with grad tooling and fantastic community isn't really sufficient for most businesses to make the big investment of supporting a new language. Beyond the cost of adding the tools to the system, there is training, there is hiring, there's interop with all of your existing code, just to name a few. So what's the business case?![Uploading image.png…]()

