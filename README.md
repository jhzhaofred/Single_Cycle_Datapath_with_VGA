# Single_Cycle_Datapath_with_VGA
This project implements a single cycle datapath with VGA Interface. It runs a simple 16-bit instruction set.

<img src="https://github.com/jhzhaofred/Single_Cycle_Datapath_with_VGA/blob/master/pics/SevenSegments.jpg" width = "408" height = "306" alt="Laptop" align=center /> <img src="https://github.com/jhzhaofred/Single_Cycle_Datapath_with_VGA/blob/master/pics/VGA.jpg" width = "408" height = "306" alt="Laptop" align=center />

Seven segment shows the 16-bit instructions in hexadecimal. VGA displays five hexadecimal numbers, in which the left most number is the value in program counter. The rest four numbers are the 16-bit data in selected register. You can choose which register you want to read by changing the switches.

## Instruction Set
    0000 halt // halt until push button is activated

    0001 inc  // inc R0: R0 = R0 + 1; R0's address is inst[5:0]

    0010 jmp  // jump to address inst[11:0]

    0011 jne  // if not equal jump to address inst[11:0]

    0100 je   // if equal jump to address inst[11:0]

    0101 add  // add R0 R1: R0 = R0 + R1

    0110 sub  // sub R0 R1: R0 = R0 - R1

    0111 xor  // xor R0 R1: R0 = R0 ^ R1

    1000 cmp  // compare R0 R1, set equal flag based on result

    1001 mov Rn, num   // Rn = num

    1010 mov Rn, Rm    // Rn = Rm

    1011 mov [Rn], Rm  // Mem[Rn] = Rm

    1100 mov Rn, [Rm]  // Rn = Mem[Rm]

## Sample Codes

    1001 000000 000000 // (Hex: 9000) mov R0,0

    1001 000001 001010 // (Hex: 904A) mov R1, 10

    1001 000010 010100 // (Hex: 9094) mov R2, 20

    1011 000001 000000 // (Hex: B040) mov [R1], R0

    0001 000000000000 // (Hex: 1000) inc R0

    0001 000000000001 // (Hex: 1001) inc R1

    1000 000001 000010 // (Hex: 8042) cmp R1, R2

    0011 000000000011 // (Hex: 3003) jne theLoop (address is 3)

    0000 000000000000 // (Hex: 0000) halt until push button is activated
