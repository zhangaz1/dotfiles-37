/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Wed Mar 11 20:25:19 2020
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000003C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 49
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-N2I  "
[018h 0024   4]                 Oem Revision : 00001390
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 00000000E0000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : FF
[038h 0056   4]                     Reserved : 00000000

Raw Table Data: Length 60 (0x3C)

    0000: 4D 43 46 47 3C 00 00 00 01 49 4C 45 4E 4F 56 4F  // MCFG<....ILENOVO
    0010: 54 50 2D 4E 32 49 20 20 90 13 00 00 50 54 45 43  // TP-N2I  ....PTEC
    0020: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E0  // ................
    0030: 00 00 00 00 00 00 00 FF 00 00 00 00              // ............
