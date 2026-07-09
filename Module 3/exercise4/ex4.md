# Exercise 4: Hand Encode RISC-V Instructions to Hex

## Objective

Hand-encode the following RV32I instructions into hexadecimal.

1. `sub x1, x2, x3`
2. `ori x5, x6, 0xFF`
3. `sw x7, 8(x8)`
4. `beq x1, x2, +16`

---

# 1. Encode `sub x1, x2, x3`

## Step 1: Identify the instruction format

`sub` is an **R-type** instruction.

```
31      25 24   20 19   15 14 12 11    7 6      0
+---------+-------+-------+------+-------+--------+
| funct7  | rs2   | rs1   |funct3|  rd   | opcode |
+---------+-------+-------+------+-------+--------+
```

---

## Step 2: Fill in each field

| Field | Value |
|-------|-------|
| funct7 | 0100000 |
| rs2 | x3 = 00011 |
| rs1 | x2 = 00010 |
| funct3 | 000 |
| rd | x1 = 00001 |
| opcode | 0110011 |

---

## Step 3: Combine everything

```
0100000 00011 00010 000 00001 0110011
```

Removing spaces:

```
01000000001100010000000010110011
```

---

## Step 4: Convert Binary → Hex

Split into 4-bit groups.

```
0100 0000 0011 0001 0000 0000 1011 0011
```

```
0100 = 4
0000 = 0
0011 = 3
0001 = 1
0000 = 0
0000 = 0
1011 = B
0011 = 3
```

### Final Answer

```
0x403100B3
```

---

# 2. Encode `ori x5, x6, 0xFF`

## Step 1: Identify the instruction format

`ori` uses the **I-type** format.

```
31        20 19   15 14 12 11    7 6      0
+------------+-------+------+-------+--------+
| immediate  | rs1   |funct3|  rd   | opcode |
+------------+-------+------+-------+--------+
```

---

## Step 2: Fill in each field

Immediate = 0xFF

12-bit binary:

```
000011111111
```

Registers:

| Field | Value |
|-------|-------|
| imm | 000011111111 |
| rs1 | x6 = 00110 |
| funct3 | 110 |
| rd | x5 = 00101 |
| opcode | 0010011 |

---

## Step 3: Combine

```
000011111111 00110 110 00101 0010011
```

---

## Step 4: Convert to Hex

```
0x0FF36293
```

---

# 3. Encode `sw x7, 8(x8)`

## Step 1: Identify the instruction format

`sw` uses the **S-type** format.

```
31    25 24   20 19   15 14 12 11   7 6      0
+-------+-------+-------+------+-------+--------+
|imm11:5| rs2   | rs1   |funct3|imm4:0 | opcode |
+-------+-------+-------+------+-------+--------+
```

---

## Step 2: Immediate

Offset = 8

12-bit binary

```
000000001000
```

Split it.

```
imm[11:5] = 0000000
imm[4:0]  = 01000
```

---

## Step 3: Fill the remaining fields

| Field | Value |
|-------|-------|
| rs2 | x7 = 00111 |
| rs1 | x8 = 01000 |
| funct3 | 010 |
| opcode | 0100011 |

---

## Step 4: Combine

```
0000000 00111 01000 010 01000 0100011
```

---

## Step 5: Convert to Hex

```
0x00742423
```

---

# 4. Encode `beq x1, x2, +16`

## Step 1: Identify the instruction format

`beq` uses the **B-type** format.

```
31 30:25 24:20 19:15 14:12 11:8 7 6:0
+--+-----+-----+-----+------+----+-+------+
|12|10:5 | rs2 | rs1 |funct3|4:1 |11|opcode|
+--+-----+-----+-----+------+----+-+------+
```

---

## Step 2: Immediate

Branch offset = **+16 bytes**

Binary:

```
000000010000
```

B-type immediate arrangement:

```
imm[12]   = 0
imm[10:5] = 000000
imm[4:1]  = 1000
imm[11]   = 0
```

---

## Step 3: Fill the remaining fields

| Field | Value |
|-------|-------|
| rs1 | x1 = 00001 |
| rs2 | x2 = 00010 |
| funct3 | 000 |
| opcode | 1100011 |

---

## Step 4: Convert to Hex

```
0x00208863
```

---

# Final Answers

| Instruction | Hex |
|------------|------------|
| `sub x1, x2, x3` | **0x403100B3** |
| `ori x5, x6, 0xFF` | **0x0FF36293** |
| `sw x7, 8(x8)` | **0x00742423** |
| `beq x1, x2, +16` | **0x00208863** |

---
