/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt9.dat, Wed Mar 11 20:25:19 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000CFE (3326)
 *     Revision         0x02
 *     Checksum         0xA1
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "UsbCTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "UsbCTabl", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHPF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.ESPI, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDDT, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDPN, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.PDVB, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (DBGF, FieldUnitObj)
    External (DBUP, FieldUnitObj)
    External (DPM1, UnknownObj)
    External (DPM2, UnknownObj)
    External (DPM3, UnknownObj)
    External (NDUS, UnknownObj)
    External (PCAO, MethodObj)    // 4 Arguments
    External (PCRR, MethodObj)    // 2 Arguments
    External (TBTS, UnknownObj)
    External (TP1D, UnknownObj)
    External (TP1P, UnknownObj)
    External (TP1T, UnknownObj)
    External (TP2D, UnknownObj)
    External (TP2P, UnknownObj)
    External (TP2T, UnknownObj)
    External (TP3D, UnknownObj)
    External (TP3P, UnknownObj)
    External (TP3T, UnknownObj)
    External (TP4D, UnknownObj)
    External (TP4P, UnknownObj)
    External (TP4T, UnknownObj)
    External (TP5D, UnknownObj)
    External (TP5P, UnknownObj)
    External (TP5T, UnknownObj)
    External (TP6D, UnknownObj)
    External (TP6P, UnknownObj)
    External (TP6T, UnknownObj)
    External (TTUP, UnknownObj)
    External (UBCB, UnknownObj)
    External (UDGF, FieldUnitObj)
    External (UDUP, FieldUnitObj)
    External (USTC, UnknownObj)
    External (UTCE, UnknownObj)
    External (XDCE, UnknownObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y3E)
            })
            Method (RUCC, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR01._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR01._PLD ())
                        }
                    }
                    Case (0x02)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR02._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR02._PLD ())
                        }
                    }
                    Case (0x03)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR03._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR03._PLD ())
                        }
                    }
                    Case (0x04)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR04._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR04._PLD ())
                        }
                    }
                    Case (0x05)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR05._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR05._PLD ())
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 == One))
                        {
                            Return (\_SB.UBTC.CR06._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR06._PLD ())
                        }
                    }
                    Default
                    {
                        If ((Arg1 == One))
                        {
                            Return (TUPC (Zero))
                        }
                        Else
                        {
                            Return (TPLD (Zero, Zero))
                        }
                    }

                }
            }

            Method (FPMN, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        Local0 = (TP1D >> One)
                        Local0 &= 0x03
                        Local1 = (TP1D & One)
                        Local2 = TP1P /* External reference */
                        Local3 = TP1T /* External reference */
                    }
                    Case (0x02)
                    {
                        Local0 = (TP2D >> One)
                        Local0 &= 0x03
                        Local1 = (TP2D & One)
                        Local2 = TP2P /* External reference */
                        Local3 = TP2T /* External reference */
                    }
                    Case (0x03)
                    {
                        Local0 = (TP3D >> One)
                        Local0 &= 0x03
                        Local1 = (TP3D & One)
                        Local2 = TP3P /* External reference */
                        Local3 = TP3T /* External reference */
                    }
                    Case (0x04)
                    {
                        Local0 = (TP4D >> One)
                        Local0 &= 0x03
                        Local1 = (TP4D & One)
                        Local2 = TP4P /* External reference */
                        Local3 = TP4T /* External reference */
                    }
                    Case (0x05)
                    {
                        Local0 = (TP5D >> One)
                        Local0 &= 0x03
                        Local1 = (TP5D & One)
                        Local2 = TP5P /* External reference */
                        Local3 = TP5T /* External reference */
                    }
                    Case (0x06)
                    {
                        Local0 = (TP6D >> One)
                        Local0 &= 0x03
                        Local1 = (TP6D & One)
                        Local2 = TP6P /* External reference */
                        Local3 = TP6T /* External reference */
                    }
                    Default
                    {
                        Local0 = 0xFF
                        Local1 = Zero
                        Local2 = Zero
                        Local3 = Zero
                    }

                }

                If ((Local0 == Zero))
                {
                    Return (Local2)
                }
                ElseIf (((Local0 == One) || (Local0 == 0x02)))
                {
                    If ((Local1 == One))
                    {
                        Return (Local2)
                    }
                    Else
                    {
                        Return (Local3)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                REV = One
                CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                VISI = Arg0
                CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                GPOS = Arg1
                CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                SHAP = One
                CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                WID = 0x08
                CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                HGT = 0x03
                Return (PCKG) /* \_SB_.UBTC.TPLD.PCKG */
            }

            Method (TUPC, 1, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                PCKG [One] = Arg0
                Return (PCKG) /* \_SB_.UBTC.TUPC.PCKG */
            }

            If ((TTUP >= One))
            {
                Device (CR01)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (One)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If ((TTUP >= 0x02))
            {
                Device (CR02)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x02)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If ((TTUP >= 0x03))
            {
                Device (CR03)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x03)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If ((TTUP >= 0x04))
            {
                Device (CR04)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x04)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If ((TTUP >= 0x05))
            {
                Device (CR05)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x05)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If ((TTUP >= 0x06))
            {
                Device (CR06)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x06)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y3E._BAS, CBAS)  // _BAS: Base Address
                CBAS = UBCB /* External reference */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((USTC == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Mutex (UBSY, 0x00)
            Method (ECWR, 0, Serialized)
            {
                Acquire (UBSY, 0xFFFF)
                Local0 = Buffer (0x25){}
                Local0 [Zero] = 0x0A
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x06
                Local0 [0x04] = MGO0 /* \_SB_.UBTC.MGO0 */
                Local0 [0x05] = MGO1 /* \_SB_.UBTC.MGO1 */
                Local0 [0x06] = MGO2 /* \_SB_.UBTC.MGO2 */
                Local0 [0x07] = MGO3 /* \_SB_.UBTC.MGO3 */
                Local0 [0x08] = MGO4 /* \_SB_.UBTC.MGO4 */
                Local0 [0x09] = MGO5 /* \_SB_.UBTC.MGO5 */
                Local0 [0x0A] = MGO6 /* \_SB_.UBTC.MGO6 */
                Local0 [0x0B] = MGO7 /* \_SB_.UBTC.MGO7 */
                Local0 [0x0C] = MGO8 /* \_SB_.UBTC.MGO8 */
                Local0 [0x0D] = MGO9 /* \_SB_.UBTC.MGO9 */
                Local0 [0x0E] = MGOA /* \_SB_.UBTC.MGOA */
                Local0 [0x0F] = MGOB /* \_SB_.UBTC.MGOB */
                Local0 [0x10] = MGOC /* \_SB_.UBTC.MGOC */
                Local0 [0x11] = MGOD /* \_SB_.UBTC.MGOD */
                Local0 [0x12] = MGOE /* \_SB_.UBTC.MGOE */
                Local0 [0x13] = MGOF /* \_SB_.UBTC.MGOF */
                Local0 [0x24] = 0x10
                \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                Local0 [Zero] = 0x0A
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x04
                Local0 [0x04] = CTL0 /* \_SB_.UBTC.CTL0 */
                Local0 [0x05] = CTL1 /* \_SB_.UBTC.CTL1 */
                Local0 [0x06] = CTL2 /* \_SB_.UBTC.CTL2 */
                Local0 [0x07] = CTL3 /* \_SB_.UBTC.CTL3 */
                Local0 [0x08] = CTL4 /* \_SB_.UBTC.CTL4 */
                Local0 [0x09] = CTL5 /* \_SB_.UBTC.CTL5 */
                Local0 [0x0A] = CTL6 /* \_SB_.UBTC.CTL6 */
                Local0 [0x0B] = CTL7 /* \_SB_.UBTC.CTL7 */
                Local0 [0x24] = 0x08
                \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                Release (UBSY)
            }

            Method (ECRD, 0, Serialized)
            {
                Acquire (UBSY, 0xFFFF)
                Local0 = Buffer (0x25){}
                Local0 [Zero] = 0x0B
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x05
                Local0 [0x24] = 0x10
                Local1 = \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                MGI0 = DerefOf (Local1 [0x04])
                MGI1 = DerefOf (Local1 [0x05])
                MGI2 = DerefOf (Local1 [0x06])
                MGI3 = DerefOf (Local1 [0x07])
                MGI4 = DerefOf (Local1 [0x08])
                MGI5 = DerefOf (Local1 [0x09])
                MGI6 = DerefOf (Local1 [0x0A])
                MGI7 = DerefOf (Local1 [0x0B])
                MGI8 = DerefOf (Local1 [0x0C])
                MGI9 = DerefOf (Local1 [0x0D])
                MGIA = DerefOf (Local1 [0x0E])
                MGIB = DerefOf (Local1 [0x0F])
                MGIC = DerefOf (Local1 [0x10])
                MGID = DerefOf (Local1 [0x11])
                MGIE = DerefOf (Local1 [0x12])
                MGIF = DerefOf (Local1 [0x13])
                Local0 [Zero] = 0x0B
                Local0 [One] = Zero
                Local0 [0x02] = 0x02
                Local0 [0x03] = 0x03
                Local0 [0x24] = 0x04
                Local1 = \_SB.PCI0.LPCB.EC.HKEY.MHPF (Local0)
                CCI0 = DerefOf (Local1 [0x04])
                CCI1 = DerefOf (Local1 [0x05])
                CCI2 = DerefOf (Local1 [0x06])
                CCI3 = DerefOf (Local1 [0x07])
                Release (UBSY)
            }

            Method (NTFY, 0, Serialized)
            {
                ECRD ()
                Sleep (One)
                Notify (\_SB.UBTC, 0x80) // Status Change
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                        Case (One)
                        {
                            ECWR ()
                        }
                        Case (0x02)
                        {
                            ECRD ()
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (PSPR, 3, Serialized)
            {
                Local3 = Zero
                If ((Arg1 == Zero))
                {
                    Local3 = One
                }
                ElseIf ((Arg1 == 0x60))
                {
                    Local3 = One
                }
                ElseIf ((Arg1 == 0x80))
                {
                    Local3 = One
                }
                ElseIf ((Arg1 == 0x20))
                {
                    Local3 = One
                }

                If ((Local3 == Zero))
                {
                    Return (Zero)
                }

                If (((Arg1 == 0x80) == (Arg2 == One)))
                {
                    Return (Zero)
                }

                Local1 = 0xFFFFFF1F
                Local0 = (Arg0 << 0x10)
                If ((Arg2 == Zero))
                {
                    Local0 = (0x0500 + Local0)
                }
                Else
                {
                    Local0 = (0x0600 + Local0)
                }

                PCAO (0x70, Local0, Local1, Arg1)
                Local0 = (0x08 + Local0)
                Local3 = Zero
                While ((Local3 == Zero))
                {
                    Local2 = (PCRR (0x70, Local0) & 0xFF)
                    If ((Arg1 == Zero))
                    {
                        If (((Local2 == One) || (Local2 == 0x20)))
                        {
                            Local3 = One
                        }
                    }
                    ElseIf ((Arg1 == 0x80))
                    {
                        If ((Local2 == 0x40))
                        {
                            Local3 = One
                        }
                    }
                    ElseIf ((Arg1 == 0x60))
                    {
                        If ((((Local2 == 0x80) || (Local2 == 0x08)) || (Local2 == 0x20)))
                        {
                            Local3 = One
                        }
                    }
                    ElseIf ((Arg1 == 0x20))
                    {
                        If (((Local2 == 0x02) || (Local2 == 0x10)))
                        {
                            Local3 = One
                        }
                    }
                }
            }

            Method (SPHT, 1, Serialized)
            {
                PSPR (Arg0, Zero, Zero)
                PSPR (Arg0, Zero, One)
            }

            Method (SPTD, 1, Serialized)
            {
                PSPR (Arg0, 0x60, Zero)
                PSPR (Arg0, 0x60, One)
            }

            Method (SPDB, 1, Serialized)
            {
                PSPR (Arg0, 0x60, Zero)
            }

            Method (USPR, 2, Serialized)
            {
            }
        }
    }
}

