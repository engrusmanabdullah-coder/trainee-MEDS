.data
msg: .asciiz "fib("
msg1: .asciiz ") = "
.text
.globl main


# fib(n)
# Input:
#   a0 = n
#
# Output:
#   a0 = Fibonacci(n)

fib:

    li t0, 2
    blt a0, t0, base

    addi sp, sp, -16
    sw ra, 12(sp)
    sw a0, 8(sp)

    # fib(n-1)
    addi a0, a0, -1
    jal ra, fib
    sw a0, 4(sp)

    # fib(n-2)
    lw a0, 8(sp)
    addi a0, a0, -2
    jal ra, fib

    # fib(n-1)+fib(n-2)
    lw t1, 4(sp)
    add a0, a0, t1

    lw ra, 12(sp)
    addi sp, sp, 16
    ret

base:
    ret


main:

    # Print string
    la a1, msg
    li a0, 4
    ecall
    
    li a0,10
    mv a1, a0
    li a0, 1
    ecall
    
    la a1 , msg1
    li a0 , 4
    ecall
    

    # Compute fib(10)
    li a0, 10
    jal ra, fib

    # Print integer
    mv a1, a0
    li a0, 1
    ecall

    # Exit
    li a0, 10
    ecall
