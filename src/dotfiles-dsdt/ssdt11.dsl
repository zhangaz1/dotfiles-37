/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt11.dat, Wed Mar 11 20:25:19 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000CD6 (3286)
 *     Revision         0x01
 *     Checksum         0x84
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "NvOptTbl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "NvOptTbl", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.AC__._PSR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC__.HB0A, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HB1A, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.ANGN, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.GPTL, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.LDST, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.NVSD, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.TMP0, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PEGP, DeviceObj)
    External (_SB_.PCI0.RP09.PEGP._OFF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PEGP._ON_, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PEGP._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.PEGP.GOBT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RP09.PEGP.NGC6, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.RP09.PEGP.NVOP, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.RP09.PEGP.NVPS, MethodObj)    // 4 Arguments
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (D8XH, MethodObj)    // 2 Arguments
    External (DNPF, UnknownObj)
    External (NVGA, UnknownObj)
    External (NVHA, UnknownObj)
    External (PNTF, MethodObj)    // 1 Arguments
    External (XBAS, UnknownObj)

    Scope (\_SB.PCI0.RP09)
    {
        Method (MSOF, 0, NotSerialized)
        {
        }

        Method (MSON, 0, NotSerialized)
        {
        }

        Method (DGOF, 0, NotSerialized)
        {
        }

        Method (DGON, 0, NotSerialized)
        {
        }
    }

    Scope (\)
    {
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00030800)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   790528, 
            RBF2,   790528
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
        {
            If ((Arg0 >= 0x00018200))
            {
                Return (GETB ((Arg0 - 0x00018200), Arg1, RBF2))
            }

            If (((Arg0 + Arg1) > 0x00018200))
            {
                Local0 = (0x00018200 - Arg0)
                Local1 = (Arg1 - Local0)
                Local3 = GETB (Arg0, Local0, RBF1)
                Local4 = GETB (Zero, Local1, RBF2)
                Concatenate (Local3, Local4, Local5)
                Return (Local5)
            }

            Return (GETB (Arg0, Arg1, RBF1))
        }

        Method (GETB, 3, Serialized)
        {
            Local0 = (Arg0 * 0x08)
            Local1 = (Arg1 * 0x08)
            CreateField (Arg2, Local0, Local1, TBF3)
            Return (TBF3) /* \_SB_.PCI0.RP09.PEGP.GETB.TBF3 */
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00                                       // ..
            })
            CreateWordField (Arg0, 0x02, USRG)
            If ((USRG == 0x564B))
            {
                Return (OPVK) /* \_SB_.PCI0.RP09.PEGP.GOBT.OPVK */
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Name (OMPR, 0x02)
        Name (OPTF, Zero)
        Method (NVOP, 4, Serialized)
        {
            If ((Arg1 != 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x03, 0x04                           // ....
                    })
                }
                Case (0x1A)
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, Zero, One, FLCH)
                    If (ToInteger (FLCH))
                    {
                        OMPR = OPCE /* \_SB_.PCI0.RP09.PEGP.NVOP.OPCE */
                    }

                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    OPEN = One
                    SHPC = One
                    HDAC = 0x02
                    DGPC = One
                    If (\_SB.PCI0.RP09.PEGP._STA ())
                    {
                        CGCS = 0x03
                    }

                    Return (Local0)
                }
                Case (0x1B)
                {
                    Local0 = Arg3
                    CreateField (Local0, Zero, One, OPFL)
                    CreateField (Local0, One, One, OPVL)
                    If (ToInteger (OPVL))
                    {
                        OPTF = Zero
                        If (ToInteger (OPFL))
                        {
                            OPTF = One
                        }
                    }

                    Local0 = OPTF /* \_SB_.PCI0.RP09.PEGP.OPTF */
                    Return (Local0)
                }
                Case (0x10)
                {
                    Return (\_SB.PCI0.RP09.PEGP.GOBT (Arg3))
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Name (DGOS, Zero)
        Name (OTMS, Zero)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            D8XH (Zero, 0xA0)
            If (DGOS)
            {
                \_SB.PCI0.RP09.PEGP._ON ()
                DGOS = Zero
                MLTF = Zero
                OTMS = Zero
            }

            D8XH (Zero, 0xA1)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            D8XH (Zero, 0xB0)
            If ((\_SB.PCI0.RP09.PEGP.OMPR == 0x03))
            {
                OTMS = One
                \_SB.PCI0.RP09.PEGP._OFF ()
                DGOS = One
                \_SB.PCI0.RP09.PEGP.OMPR = 0x02
            }

            \_SB.PCI0.LPCB.EC.HKEY.ANGN = Zero
            D8XH (Zero, 0xB1)
        }

        Method (NVST, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.RP09.PEGP, 0xC0) // Hardware-Specific
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Name (CPPC, Zero)
        Name (TGPU, Zero)
        Name (RQTC, Zero)
        Method (NVPS, 4, Serialized)
        {
            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Local0 = Buffer (0x08)
                        {
                             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                        }
                    Local3 = Buffer (0x08)
                        {
                             0x00, 0x20, 0x21, 0x22, 0x23, 0x2A, 0x13, 0xFF   // . !"#*..
                        }
                    Local4 = Zero
                    Local5 = DerefOf (Local3 [Local4])
                    While ((Local5 != 0xFF))
                    {
                        Divide (Local5, 0x08, Local2, Local1)
                        Local2 = (One << Local2)
                        Local0 [Local1] = (DerefOf (Local0 [Local1]) | Local2)
                        Local4++
                        Local5 = DerefOf (Local3 [Local4])
                    }

                    Return (Local0)
                }
                Case (0x13)
                {
                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    CreateField (Arg3, 0x02, One, PPST)
                    CreateBitField (Local0, 0x02, CPST)
                    If ((ToInteger (PPST) & (\_SB.PCI0.LPCB.EC.HKEY.ANGN == Zero)))
                    {
                        \_SB.PCI0.LPCB.EC.HKEY.ANGN = One
                        NVDN ()
                    }

                    CPST = One
                    Return (Local0)
                }
                Case (0x20)
                {
                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    CreateField (Local0, 0x17, One, CPC2)
                    CreateField (Local0, Zero, One, SPLU)
                    CreateField (Local0, 0x18, One, CUIT)
                    CreateField (Local0, 0x1E, One, PSER)
                    CUIT = One
                    PSER = One
                    CPC2 = One
                    If (RQTC)
                    {
                        SPLU = One
                        RQTC = Zero
                    }

                    Return (Local0)
                }
                Case (0x21)
                {
                    Return (\_SB.PR00._PSS ())
                }
                Case (0x22)
                {
                    CreateField (Arg3, Zero, 0x08, PPCV)
                    CPPC = PPCV /* \_SB_.PCI0.RP09.PEGP.NVPS.PPCV */
                    \PNTF (0x80)
                    Return (Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                }
                Case (0x23)
                {
                    Local0 = Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    Local0 [Zero] = CPPC /* \_SB_.PCI0.RP09.PEGP.CPPC */
                    Return (Local0)
                }
                Case (0x2A)
                {
                    Local0 = Buffer (0x24)
                        {
                            /* 0000 */  0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0020 */  0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    Local0 [Zero] = DerefOf (Arg3 [Zero])
                    CreateField (Arg3, Zero, 0x04, QTYP)
                    Switch (ToInteger (QTYP))
                    {
                        Case (Zero)
                        {
                            Local1 = \_SB.PCI0.LPCB.EC.TMP0 /* External reference */
                            Local0 [0x0C] = (Local1 & 0xFF)
                            Return (Local0)
                        }
                        Case (One)
                        {
                            Local0 [0x0D] = 0x08
                            Local0 [One] = 0x03
                            Return (Local0)
                        }
                        Case (0x02)
                        {
                            Local0 [One] = 0x03
                            TGPU = \_SB.PCI0.LPCB.EC.HKEY.GPTL /* External reference */
                            Local0 [0x08] = TGPU /* \_SB_.PCI0.RP09.PEGP.TGPU */
                            Return (Local0)
                        }

                    }
                }

            }

            Return (Buffer (0x04)
            {
                 0x02, 0x00, 0x00, 0x80                           // ....
            })
        }

        Method (NVDN, 0, NotSerialized)
        {
            ADBG ("NVDN Entry")
            ADBG (Concatenate ("ANGN =", ToHexString (\_SB.PCI0.LPCB.EC.HKEY.ANGN)))
            If ((\_SB.PCI0.LPCB.EC.HKEY.ANGN == One))
            {
                If ((DNPF == 0x03))
                {
                    Local0 = 0xD5
                }
                ElseIf ((\_SB.PCI0.LPCB.EC.AC._PSR () == One))
                {
                    If ((\_SB.PCI0.LPCB.EC.HB0A || \_SB.PCI0.LPCB.EC.HB1A))
                    {
                        Local0 = 0xD1
                    }
                    Else
                    {
                        Local0 = 0xD4
                    }
                }
                Else
                {
                    Local0 = 0xD3
                }

                If ((Local0 != \_SB.PCI0.LPCB.EC.HKEY.LDST))
                {
                    \_SB.PCI0.LPCB.EC.HKEY.NVSD (Local0)
                }

                DNPF = Zero
            }

            ADBG ("NVDN End")
        }
    }

    Scope (\)
    {
        Method (CMPB, 2, NotSerialized)
        {
            Local1 = SizeOf (Arg0)
            If ((Local1 != SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Local0 = Zero
            While ((Local0 < Local1))
            {
                If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                    )))
                {
                    Return (Zero)
                }

                Local0++
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.RP09.PEGP)
    {
        Name (MXM3, Buffer (0x66)
        {
            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x5D, 0x00,  // MXM_..].
            /* 0008 */  0x30, 0x11, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  // 0....>..
            /* 0010 */  0x00, 0x00, 0x0A, 0xF0, 0xF9, 0x3E, 0x00, 0x00,  // .....>..
            /* 0018 */  0x60, 0xE9, 0xD0, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `....>..
            /* 0020 */  0x60, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `j...>..
            /* 0028 */  0x20, 0x2B, 0xE2, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  +...>..
            /* 0030 */  0x60, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `l...>..
            /* 0038 */  0x20, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  j...>..
            /* 0040 */  0x20, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  l...>..
            /* 0048 */  0x01, 0x90, 0x01, 0x00, 0x03, 0x00, 0x90, 0x01,  // ........
            /* 0050 */  0x13, 0x00, 0x90, 0x01, 0xE5, 0x0D, 0x01, 0x01,  // ........
            /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xE5, 0x0D, 0x01, 0x03,  // ........
            /* 0060 */  0x00, 0x90, 0xD8, 0x09, 0x11, 0x0A               // ......
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Return (\_SB.PCI0.RP09.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.RP09.PEGP.NVPS (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.RP09.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                Local0 = ToInteger (Arg2)
                If ((Local0 == Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                           // ....
                    })
                }

                If ((Local0 == 0x18))
                {
                    Return (Unicode ("0"))
                }

                If ((Local0 == 0x10))
                {
                    If ((Arg1 == 0x0300))
                    {
                        Return (MXM3) /* \_SB_.PCI0.RP09.PEGP.MXM3 */
                    }
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }
}

