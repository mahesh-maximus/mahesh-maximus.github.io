# GCC Frontend vs GCC codegen for the Rust Compiler 

The initial versions of Linux operating system was developed in 1991 by Linus Torvalds and it was very popular only among developer community and in order to Linux to grow beyond the world of the computer programmer, it needed a use, an application that made it a must have technology. That threshold was crossed with the development of program that made complex websites possible. That program is Apache web server and it was developed in 1993.

The same story applies to Rust at the moment,. As Linux, Rust is at the moment very popular among programmers but lacks business use and reach.

From the language features perspective everything looks perfect, but still expansions can be done in targets for the stayrustc compiler provides (The standard rustc compiler uses [LLVM](https://github.com/llvm/llvm-project) as the compiler backend). So there are two projects Rust GCC and rustc_codegen_gcc (GCC codegen). Below are some of more areas why do we need these. 
* ﻿﻿Rust is becoming more and more popular.
* ﻿﻿Support more architectures.
* ﻿﻿Rust for Linux
* ﻿﻿Embedded programming.
* ﻿﻿Some projects (Firefox, librsvg) won't run on architectures not supported by Rust.

## What is Rust GCC
* ﻿﻿Full Implementation of Rust on top of GNU Toolchain. 
* Project originally started in 2014, revived in 2019
* ﻿﻿Progress stalled with the frequency of language changes
* Two full time engineers

The Rust Programming Language is gaining reach inside the embedded community and making its mark on various systems, by offering a safer and more potent alternative to C. In order to try and bring the language even further, reaching even more targets and organizations, the Rust-GCC project aims to bring a new compiler for The Rust Programming Language to the GNU Compiler Collection. Contrary to similar efforts of integrating rustc to compiler back-ends other than LLVM, gccrs aims to become an entirely separate compiler front-end integrated with gcc.

### Motivations of Rust GCC
* ﻿﻿Upstream with mainline GCC
* Reuses the GNU toolchain (Ld, as, gdb)
* Reusing official Rust libcore, libstd, libproc
* Alternative implementation of Rust
* GCC Plugins support
  * LTO and CFI
* Drive adoption of Rust through backporting
* Backend support for more systems

**Codebase: ** https://github.com/Rust-GCC/gccrs

## What is rustc codegen_gcc (A GCC codegen for the Rust compiler)
* ﻿﻿rustc is based on [LLVM](https://github.com/llvm/llvm-project).
* rustc provides an API for codegen.
* rustc can load a codegen dynamic library.
* [libgccjit](https://gcc.gnu.org/onlinedocs/jit/)can be plugged to rustc via this mechanism.
* Merged into the Rust repository.

**Codebase:** https://github.com/rust-lang/rustc_codegen_gcc

## Engineers works in these projects
* [Philip Herron](https://github.com/philberty)
* [Arthur Cohen](https://github.com/CohenArthur)
* [Antoni Boucher](https://github.com/antoyo)

## References: I have used to write this article.
[Adding a Rust compiler front end to GCC Philip Herron & Arthur Cohen](https://youtu.be/R8Pr21nlhig?si=E9_Jit_g6E1g3J9U "https://youtu.be/R8Pr21nlhig?si=E9_Jit_g6E1g3J9U")<!-- {"preview":"true"} -->

[rustc_codegen_gcc: A gcc codegen for the Rust compiler - Antoni Boucher](https://youtu.be/oLG-uijW1X0?si=9_DJaJrJwEI1T0Yc "https://youtu.be/oLG-uijW1X0?si=9_DJaJrJwEI1T0Yc")<!-- {"preview":"true"} -->

