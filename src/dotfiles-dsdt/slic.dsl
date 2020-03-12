/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of slic.dat, Wed Mar 11 20:25:19 2020
 *
 * ACPI Data Table [SLIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SLIC"    [Software Licensing Description Table]
[004h 0004   4]                 Table Length : 00000176
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 5A
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-N2I  "
[018h 0024   4]                 Oem Revision : 00001390
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036 338] Software Licensing Structure : \
    00 00 00 00 9C 00 00 00 06 02 00 00 00 24 00 00 \
    52 53 41 31 00 04 00 00 01 00 01 00 69 16 4A 9F \
    B1 4B 3A FB 80 20 AA AF C4 F9 3E C1 80 49 EE 6A \
    65 26 72 1E CD BF 5F 2F 96 D6 C0 0A 92 F5 06 B5 \
    00 B2 3B 29 02 E2 4C 8D C2 F2 BC 41 77 9C 70 F0 \
    F3 1B 09 D2 63 5A DC A8 83 F8 5E C9 15 95 F9 FA \
    FD DC 05 B7 4D 67 7F 2D B3 84 33 20 E1 D1 79 2A \
    A7 6A 77 D1 B6 20 2A 76 42 C5 D5 E9 B6 43 40 55 \
    44 C3 C9 37 99 5F 41 97 70 F3 D1 F6 07 EC 7B 1A \
    29 A1 C1 F1 91 FD 48 86 6E 3E CE CB 01 00 00 00 \
    B6 00 00 00 00 00 02 00 4C 45 4E 4F 56 4F 54 50 \
    2D 4E 32 49 20 20 57 49 4E 44 4F 57 53 20 01 00 \
    02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 51 7E 12 87 E9 25 06 58 A3 F9 7D CC CB 7D \
    20 96 0F AD 19 E1 73 4F 7C DC 88 2D FB BB D7 1C \
    3E 41 26 9B AC 32 FA 9E 51 46 12 A2 18 37 08 2E \
    8A 81 26 92 A2 43 F6 61 35 85 51 AD 18 8B E6 FD \
    6F F5 F1 96 01 84 D5 35 28 8E 86 3B B5 4A 5B 6D \
    5B 4B DC FF 74 0C 8D 24 76 92 80 5F 08 78 BE BB \
    6E BA 4A C0 BD 40 E2 D6 4D DA 1E 9C 13 E0 00 F0 \
    6E 90 87 CD 48 6C DC 74 CE 1A 2A DF 08 A7 08 C2 \
    5F 18 

Raw Table Data: Length 374 (0x176)

    0000: 53 4C 49 43 76 01 00 00 01 5A 4C 45 4E 4F 56 4F  // SLICv....ZLENOVO
    0010: 54 50 2D 4E 32 49 20 20 90 13 00 00 50 54 45 43  // TP-N2I  ....PTEC
    0020: 02 00 00 00 00 00 00 00 9C 00 00 00 06 02 00 00  // ................
    0030: 00 24 00 00 52 53 41 31 00 04 00 00 01 00 01 00  // .$..RSA1........
    0040: 69 16 4A 9F B1 4B 3A FB 80 20 AA AF C4 F9 3E C1  // i.J..K:.. ....>.
    0050: 80 49 EE 6A 65 26 72 1E CD BF 5F 2F 96 D6 C0 0A  // .I.je&r..._/....
    0060: 92 F5 06 B5 00 B2 3B 29 02 E2 4C 8D C2 F2 BC 41  // ......;)..L....A
    0070: 77 9C 70 F0 F3 1B 09 D2 63 5A DC A8 83 F8 5E C9  // w.p.....cZ....^.
    0080: 15 95 F9 FA FD DC 05 B7 4D 67 7F 2D B3 84 33 20  // ........Mg.-..3 
    0090: E1 D1 79 2A A7 6A 77 D1 B6 20 2A 76 42 C5 D5 E9  // ..y*.jw.. *vB...
    00A0: B6 43 40 55 44 C3 C9 37 99 5F 41 97 70 F3 D1 F6  // .C@UD..7._A.p...
    00B0: 07 EC 7B 1A 29 A1 C1 F1 91 FD 48 86 6E 3E CE CB  // ..{.).....H.n>..
    00C0: 01 00 00 00 B6 00 00 00 00 00 02 00 4C 45 4E 4F  // ............LENO
    00D0: 56 4F 54 50 2D 4E 32 49 20 20 57 49 4E 44 4F 57  // VOTP-N2I  WINDOW
    00E0: 53 20 01 00 02 00 00 00 00 00 00 00 00 00 00 00  // S ..............
    00F0: 00 00 00 00 00 00 51 7E 12 87 E9 25 06 58 A3 F9  // ......Q~...%.X..
    0100: 7D CC CB 7D 20 96 0F AD 19 E1 73 4F 7C DC 88 2D  // }..} .....sO|..-
    0110: FB BB D7 1C 3E 41 26 9B AC 32 FA 9E 51 46 12 A2  // ....>A&..2..QF..
    0120: 18 37 08 2E 8A 81 26 92 A2 43 F6 61 35 85 51 AD  // .7....&..C.a5.Q.
    0130: 18 8B E6 FD 6F F5 F1 96 01 84 D5 35 28 8E 86 3B  // ....o......5(..;
    0140: B5 4A 5B 6D 5B 4B DC FF 74 0C 8D 24 76 92 80 5F  // .J[m[K..t..$v.._
    0150: 08 78 BE BB 6E BA 4A C0 BD 40 E2 D6 4D DA 1E 9C  // .x..n.J..@..M...
    0160: 13 E0 00 F0 6E 90 87 CD 48 6C DC 74 CE 1A 2A DF  // ....n...Hl.t..*.
    0170: 08 A7 08 C2 5F 18                                // ...._.
