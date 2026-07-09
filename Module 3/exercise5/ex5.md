# Exercise 5: Decode RISC-V Hex Instructions to Assembly

## Objective

Decode the following RV32I hexadecimal instructions into their corresponding assembly instructions.

1. `0x00A28233`
2. `0x00500113`
3. `0xFE209CE3`

---

# RISC-V Opcode Reference

| Opcode | Instruction Type |
|---------|------------------|
| 0110011 | R-Type |
| 0010011 | I-Type |
| 0000011 | Load |
| 0100011 | Store |
| 1100011 | Branch |
| 1101111 | JAL |
| 1100111 | JALR |
| 0110111 | LUI |
| 0010111 | AUIPC |

---

# 1. Decode `0x00A28233`

## Step 1: Convert Hex to Binary

```
0x00A28233

00000000 10100010 10000010 00110011
```

or

```
00000000101000101000001000110011
```

---

## Step 2: Determine the Instruction Type

Opcode = last 7 bits

```
0110011
```

Opcode `0110011` means **R-Type**.

---

## Step 3: Split into R-Type Fields

```
funct7   rs2    rs1   funct3   rd    opcode

0000000 01010 00101 000 00100 0110011
```

---

## Step 4: Decode Each Field

| Field | Binary | Decimal | Meaning |
|--------|--------|---------|---------|
| funct7 | 0000000 | 0 | ADD |
| rs2 | 01010 | 10 | x10 |
| rs1 | 00101 | 5 | x5 |
| funct3 | 000 | 0 | ADD/SUB |
| rd | 00100 | 4 | x4 |

Since

```
funct7 = 0000000
funct3 = 000
```

the instruction is **ADD**.

### Final Answer

```assembly
add x4, x5, x10
```

---

# 2. Decode `0x00500113`

## Step 1: Convert to Binary

```
0x00500113

00000000 01010000 00000001 00010011
```

or

```
00000000010100000000000100010011
```

---

## Step 2: Determine the Type

Opcode

```
0010011
```

Opcode `0010011` means **I-Type**.

---

## Step 3: Split Fields

```
Immediate    rs1   funct3   rd    opcode

000000000101 00000 000 00010 0010011
```

---

## Step 4: Decode

| Field | Binary | Decimal |
|--------|--------|---------|
| Immediate | 000000000101 | 5 |
| rs1 | 00000 | x0 |
| funct3 | 000 | ADDI |
| rd | 00010 | x2 |

### Final Answer

```assembly
addi x2, x0, 5
```

---

# 3. Decode `0xFE209CE3`

## Step 1: Convert to Binary

```
0xFE209CE3

11111110 00100000 10011100 11100011
```

or

```
11111110001000001001110011100011
```

---

## Step 2: Determine the Type

Opcode

```
1100011
```

Opcode `1100011` means **B-Type (Branch)**.

---

## Step 3: Split into Fields

```
imm[12] imm[10:5] rs2 rs1 funct3 imm[4:1] imm[11] opcode

1 111111 00010 00001 001 1100 1 1100011
```

---

## Step 4: Decode Registers

| Field | Value |
|--------|-------|
| rs1 | x1 |
| rs2 | x2 |

---

## Step 5: Decode funct3

```
001
```

From the RV32I ISA:

| funct3 | Branch |
|---------|---------|
|000|BEQ|
|001|BNE|
|100|BLT|
|101|BGE|
|110|BLTU|
|111|BGEU|

Therefore

```
001 = BNE
```

---

## Step 6: Decode the Immediate

Immediate bits

```
imm[12] = 1
imm[11] = 1
imm[10:5] = 111111
imm[4:1] = 1100
```

After rearranging and sign-extending, the branch offset is

```
-8
```

---

### Final Answer

```assembly
bne x1, x2, -8
```

---

# Summary

| Hex | Type | Assembly |
|------|------|----------|
| `0x00A28233` | R-Type | `add x4, x5, x10` |
| `0x00500113` | I-Type | `addi x2, x0, 5` |
| `0xFE209CE3` | B-Type | `bne x1, x2, -8` |
