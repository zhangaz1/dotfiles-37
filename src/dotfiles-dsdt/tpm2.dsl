/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of tpm2.dat, Wed Mar 11 20:25:19 2020
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TPM2"    [Trusted Platform Module hardware interface table]
[004h 0004   4]                 Table Length : 00000034
[008h 0008   1]                     Revision : 04
[009h 0009   1]                     Checksum : 21
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-N2I  "
[018h 0024   4]                 Oem Revision : 00001390
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   2]               Platform Class : 0000
[026h 0038   2]                     Reserved : 0000
[028h 0040   8]              Control Address : 0000000000000000
[030h 0048   4]                 Start Method : 06 [Memory Mapped I/O]

/**** ACPI table terminates in the middle of a data structure! (dump table) */

Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 04 21 4C 45 4E 4F 56 4F  // TPM24....!LENOVO
    0010: 54 50 2D 4E 32 49 20 20 90 13 00 00 50 54 45 43  // TP-N2I  ....PTEC
    0020: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 06 00 00 00                                      // ....
