# Should your team adapt RUST programming language?

# What is Rust

You probably have herd, A new programing language design among three big pillars.

Performance & Control | Reliability & Safty | Productivity
----------------------|---------------------|-------------
Full system control with no mandatory runtime services.| Statically guarantees memory safety and thread safety | Documentation, mature compiler and tolls, package manager, IDE & editor integration.

Most people come to Rust because of the unique combination of first two pillars, Performance & Control with Reliability & Safety. In most languages today you have to choose one or the other. Languages like JavaScript Kotlin and Java have compile time or runtime prevention of threading or memory corruption issues, but they abstract away your access to the machine. On the other side the C family of languages provides that access but little in the way of safeguards. So increasingly projects needs both of those.

Most of the mobile devices rely on taking advantage on parallelism while dealing with  many complex concurrent events, mobile phones continue to increase the amount of parallelism through more CPU cores and scaling via that parallelism instead of jacking up the frequency of the CPU is a key way for users to a great flicker free experience without hurting the battery life, but at the same time, we have myriad devices, phones and tablets, headphones and TVs all of which are communicating concurrently with each other. And introducing a lot of complexity that makes it really hard to build stable systems. Rust is the only language we know that gives us both the performance and the safety that we need.

## Performance & Control with Reliability & Safety
### These features usually do not mix
