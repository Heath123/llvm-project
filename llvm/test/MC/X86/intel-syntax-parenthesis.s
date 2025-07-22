// RUN: not llvm-mc -triple x86_64-unknown-unknown %s 2> %t.err
// RUN: FileCheck < %t.err %s

.intel_syntax

// CHECK: error: invalid base+index expression
    lea     rdi, [(label + rsi) + rip]
label:
    .quad 42
