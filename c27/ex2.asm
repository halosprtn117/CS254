            .text
            .globl main

main:
        la      $a0, buffer1
        li      $a1, 100
        jal     readStr

        la      $a0, buffer2
        li      $a1, 100    # not necessary
        jal     readStr

        la      $a0, tabs
        li      $v0, 4
        syscall

        la      $a0, buffer1
        la      $a1, buffer2
        la      $a2, buffer3
        


        jal     strDifHighli
        


        la      $a0, buffer3
        li      $v0, 4
        syscall

        li      $v0, 10
        syscall

            .data
buffer1:    .space  100
buffer2:    .space  100
tabs:       .asciiz "\t\t"
buffer3:    .space  100