/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of boot.dat, Wed Mar 11 20:25:19 2020
 *
 * ACPI Data Table [BOOT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BOOT"    [Simple Boot Flag Table]
[004h 0004   4]                 Table Length : 00000028
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : DE
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-N2I  "
[018h 0024   4]                 Oem Revision : 00001390
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   1]          Boot Register Index : 47
[025h 0037   3]                     Reserved : 000000

Raw Table Data: Length 40 (0x28)

    0000: 42 4F 4F 54 28 00 00 00 01 DE 4C 45 4E 4F 56 4F  // BOOT(.....LENOVO
    0010: 54 50 2D 4E 32 49 20 20 90 13 00 00 50 54 45 43  // TP-N2I  ....PTEC
    0020: 02 00 00 00 47 00 00 00                          // ....G...
