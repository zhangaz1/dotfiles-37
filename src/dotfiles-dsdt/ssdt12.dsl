/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt12.dat, Wed Mar 11 20:25:19 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000DCB (3531)
 *     Revision         0x02
 *     Checksum         0xD4
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SgRpSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "SgRpSsdt", 0x00001001)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.BARD, UnknownObj)
    External (_SB_.PCI0.CMDS, UnknownObj)
    External (_SB_.PCI0.HDID, UnknownObj)
    External (_SB_.PCI0.HGOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.HGON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.HVID, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.GPUT, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.HKEY.ANGN, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP09.LTRE, UnknownObj)
    External (_SB_.PCI0.RP09.PEGA.LCT1, UnknownObj)
    External (_SB_.PCI0.RP09.PEGP, DeviceObj)
    External (_SB_.PCI0.RP09.PEGP._ADR, UnknownObj)
    External (_SB_.PCI0.RP09.PEGP.OTMS, UnknownObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.STXD, MethodObj)    // 2 Arguments
    External (D8XH, MethodObj)    // 2 Arguments
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (EECP, UnknownObj)
    External (GBAS, UnknownObj)
    External (HRA0, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRG0, UnknownObj)
    External (LXVF, UnknownObj)
    External (OSYS, UnknownObj)
    External (PWA0, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWG0, UnknownObj)
    External (RPA5, UnknownObj)
    External (RPBA, UnknownObj)
    External (RPIN, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_SB.PCI0)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (CMDS, Zero)
        Name (ONOF, One)
        Name (ACNT, Zero)
        Name (ADLT, 0x14)
        Name (BARD, Zero)
        Name (BARA, Zero)
        Name (BARB, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        OperationRegion (RPCF, SystemMemory, RPBA, 0x1000)
        Field (RPCF, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            PCMR,   8, 
            Offset (0x18), 
            PRBN,   8, 
            SCBN,   8, 
            Offset (0x4A), 
            CEDR,   1, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LKD1,   1, 
            Offset (0x52), 
                ,   12, 
            LASX,   1, 
            Offset (0x69), 
                ,   2, 
            LREN,   1, 
            Offset (0xA4), 
            PWRS,   8, 
            Offset (0xE2), 
                ,   2, 
            L23E,   1, 
            L23R,   1, 
            Offset (0x328), 
                ,   19, 
            LKS1,   4
        }

        OperationRegion (RTPN, SystemMemory, (\XBAS + (SCBN << 0x14)), 0x0500)
        Field (RTPN, AnyAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x0B), 
            CBCN,   8, 
            Offset (0x10), 
            BAAR,   32, 
            Offset (0x18), 
            BADR,   32, 
            Offset (0x20), 
            BABR,   32, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x488), 
                ,   25, 
            MLTR,   1
        }

        OperationRegion (PCAN, SystemMemory, ((\XBAS + (SCBN << 0x14)) + \EECP), 0x14)
        Field (PCAN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTR,   16
        }

        OperationRegion (PCBN, SystemMemory, (((\XBAS + (SCBN << 0x14)) + 0x1000) + 
            \EECP), 0x14)
        Field (PCBN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTZ,   16
        }

        Method (HGON, 0, Serialized)
        {
            D8XH (Zero, 0x77)
            If ((CCHK (One) == Zero))
            {
                Return (Zero)
            }

            D8XH (Zero, 0x22)
            ONOF = One
            SGPO (PWE0, PWG0, PWA0, One)
            If ((OSYS > 0x07D9))
            {
                Sleep (0x08)
            }
            Else
            {
                Sleep (0x10)
            }

            SGPO (HRE0, HRG0, HRA0, Zero)
            Sleep (0x10)
            If ((\_SB.PCI0.RP09.PEGP.OTMS == One))
            {
                LKD1 = Zero
                TCNT = Zero
                While ((TCNT < LDLY))
                {
                    If ((LKS1 >= 0x07))
                    {
                        Break
                    }

                    Sleep (0x10)
                    TCNT += 0x10
                }
            }
            Else
            {
                \_SB.PCI0.RP09.L23D ()
            }

            \_SB.PCI0.RP09.PEGP.SVIW = ((HDID << 0x10) | HVID)
            LREN = \_SB.PCI0.RP09.LTRE
            CEDR = One
            CMDR = CMDS /* \_SB_.PCI0.CMDS */
            MLTR = Zero
            LCTR = ((ELCT & 0x43) | (LCTR & 0xFFBC))
            LCTZ = ((ELCT & 0x43) | (LCTZ & 0xFFBC))
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            D8XH (Zero, 0xBB)
            If ((CCHK (Zero) == Zero))
            {
                Return (Zero)
            }

            ONOF = Zero
            ELCT = LCTR /* \_SB_.PCI0.LCTR */
            \_SB.PCI0.RP09.LTRE = LREN /* \_SB_.PCI0.LREN */
            CMDS = CMDR /* \_SB_.PCI0.CMDR */
            If ((\_SB.PCI0.RP09.PEGP.OTMS == One))
            {
                LKD1 = One
                TCNT = Zero
                While ((TCNT < LDLY))
                {
                    If ((LKS1 == Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    TCNT += 0x10
                }
            }
            Else
            {
                \_SB.PCI0.RP09.DL23 ()
            }

            SGPO (HRE0, HRG0, HRA0, One)
            Sleep (0x02)
            SGPO (PWE0, PWG0, PWA0, Zero)
            Sleep (0x64)
            \_SB.PCI0.LPCB.EC.HKEY.ANGN = Zero
            Return (Zero)
        }

        Method (SGPO, 4, Serialized)
        {
            If ((Arg2 == Zero))
            {
                Arg3 = ~Arg3
                Arg3 &= One
            }

            If ((SGGP == One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If ((Arg0 == One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Local0 = \_SB.GGOV (Arg2)
                }
            }

            If ((Arg3 == Zero))
            {
                Local0 = ~Local0
            }

            Local0 &= One
            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If ((\LXVF == One))
            {
                Return (Zero)
            }

            If ((PVID == IVID))
            {
                Return (Zero)
            }

            If ((Arg0 == Zero))
            {
                If ((ONOF == Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf ((Arg0 == One))
            {
                If ((ONOF == One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        If ((RPIN == 0x08))
        {
            Scope (\_SB.PCI0.RP09)
            {
                Name (TDGC, Zero)
                Name (DGCX, Zero)
                Name (TGPC, Buffer (0x04)
                {
                     0x00                                             // .
                })
                PowerResource (PCRP, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        D8XH (Zero, 0x11)
                        If ((TDGC == One))
                        {
                            If ((DGCX == 0x03))
                            {
                                _STA = One
                                \_SB.PCI0.RP09.PEGP.GC6O ()
                            }
                            ElseIf ((DGCX == 0x04))
                            {
                                _STA = One
                                \_SB.PCI0.RP09.PEGP.GC6O ()
                            }

                            TDGC = Zero
                            DGCX = Zero
                        }
                        ElseIf ((OSYS != 0x07D9))
                        {
                            PCMR = 0x07
                            PWRS = Zero
                            Sleep (0x10)
                            \_SB.PCI0.HGOF ()
                            _STA = One
                        }

                        D8XH (Zero, 0x12)
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        D8XH (Zero, 0x21)
                        If ((TDGC == One))
                        {
                            CreateField (TGPC, Zero, 0x03, GUPC)
                            If ((ToInteger (GUPC) == One))
                            {
                                \_SB.PCI0.RP09.PEGP.GC6I ()
                                _STA = Zero
                            }
                            ElseIf ((ToInteger (GUPC) == 0x02))
                            {
                                \_SB.PCI0.RP09.PEGP.GC6I ()
                                _STA = Zero
                            }
                        }
                        ElseIf ((OSYS != 0x07D9))
                        {
                            \_SB.PCI0.HGOF ()
                            _STA = Zero
                        }

                        D8XH (Zero, 0x22)
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PCRP
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    PCRP
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PCRP
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Name (WKEN, Zero)
                Name (LTRE, Zero)
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        WKEN = Zero
                    }
                    ElseIf ((Arg0 && Arg2))
                    {
                        WKEN = One
                    }
                    Else
                    {
                        WKEN = Zero
                    }
                }

                Scope (\_SB.PCI0.RP09.PEGP)
                {
                    Name (CMDS, Zero)
                    OperationRegion (PCIS, SystemMemory, (\XBAS + (SCBN << 0x14)), 0x0500)
                    Field (PCIS, AnyAcc, Lock, Preserve)
                    {
                        DVID,   16, 
                        Offset (0x04), 
                        CMDR,   8, 
                        Offset (0x0B), 
                        CBCC,   8, 
                        Offset (0x2C), 
                        SVID,   16, 
                        SDID,   16, 
                        Offset (0x488), 
                            ,   25, 
                        MLTR,   1
                    }

                    Field (PCIS, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x40), 
                        SVIW,   32
                    }

                    OperationRegion (PCAP, SystemMemory, ((\XBAS + (SCBN << 0x14)) + \EECP), 0x14)
                    Field (PCAP, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x10), 
                        LCTL,   16
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \_SB.PCI0.RP09.PEGP._ADR = Zero
                        CMDR = 0x06
                        CMDS = 0x06
                        \_SB.PCI0.HVID = SVID /* \_SB_.PCI0.RP09.PEGP.SVID */
                        \_SB.PCI0.HDID = SDID /* \_SB_.PCI0.RP09.PEGP.SDID */
                    }

                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        \_SB.PCI0.HGOF ()
                        Return (Zero)
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        \_SB.PCI0.HGOF ()
                        Return (Zero)
                    }

                    Method (GC6I, 0, Serialized)
                    {
                        \_SB.PCI0.LPCB.EC.GPUT = One
                        Sleep (0x0A)
                        LTRE = LREN /* \_SB_.PCI0.LREN */
                        LKD1 = One
                        While ((\_SB.GGIV (0x04050008) != One))
                        {
                            Sleep (One)
                        }

                        Sleep (0x64)
                    }

                    Method (GC6O, 0, Serialized)
                    {
                        LKD1 = Zero
                        \_SB.SGOV (0x04050002, Zero)
                        \_SB.STXD (0x04050002, Zero)
                        While ((\_SB.GGIV (0x04050008) != Zero))
                        {
                            Sleep (One)
                        }

                        \_SB.SGOV (0x04050002, One)
                        While ((LKS1 < 0x07))
                        {
                            Sleep (One)
                        }

                        LREN = LTRE /* \_SB_.PCI0.RP09.LTRE */
                        CEDR = One
                        \_SB.PCI0.LPCB.EC.GPUT = Zero
                        Sleep (0x64)
                    }

                    Method (GETS, 0, Serialized)
                    {
                        If ((\_SB.GGIV (0x04050008) == Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (NGC6, 4, Serialized)
                    {
                        If ((Arg1 < 0x0100))
                        {
                            Return (0x80000001)
                        }

                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (0x04)
                                {
                                     0x1B, 0x00, 0x00, 0x00                           // ....
                                })
                            }
                            Case (One)
                            {
                                Name (JTB1, Buffer (0x04)
                                {
                                     0x00                                             // .
                                })
                                CreateField (JTB1, Zero, One, JTEN)
                                CreateField (JTB1, One, 0x02, SREN)
                                CreateField (JTB1, 0x03, 0x03, PLPR)
                                CreateField (JTB1, 0x06, 0x02, FBPR)
                                CreateField (JTB1, 0x08, 0x02, GUPR)
                                CreateField (JTB1, 0x0A, One, GC6R)
                                CreateField (JTB1, 0x0B, One, PTRH)
                                CreateField (JTB1, 0x0D, One, MHYB)
                                CreateField (JTB1, 0x0E, One, RPCL)
                                CreateField (JTB1, 0x0F, 0x02, GC6M)
                                CreateField (JTB1, 0x14, 0x0C, JTRV)
                                JTEN = One
                                GC6R = One
                                PTRH = One
                                GC6M = One
                                SREN = One
                                If ((OSYS > 0x07D9))
                                {
                                    MHYB = One
                                }

                                JTRV = 0x0103
                                Return (JTB1) /* \_SB_.PCI0.RP09.PEGP.NGC6.JTB1 */
                            }
                            Case (0x02)
                            {
                                Return (Arg3)
                            }
                            Case (0x03)
                            {
                                CreateField (Arg3, Zero, 0x03, GUPC)
                                CreateField (Arg3, 0x04, One, PLPC)
                                CreateField (Arg3, 0x0E, 0x02, DFGC)
                                CreateField (Arg3, 0x10, 0x03, GPCX)
                                TGPC = Arg3
                                If (((ToInteger (GUPC) != Zero) || (ToInteger (DFGC
                                    ) != Zero)))
                                {
                                    \_SB.PCI0.RP09.TDGC = ToInteger (DFGC)
                                    \_SB.PCI0.RP09.DGCX = ToInteger (GPCX)
                                }

                                Name (JTB3, Buffer (0x04)
                                {
                                     0x00                                             // .
                                })
                                CreateField (JTB3, Zero, 0x03, GUPS)
                                CreateField (JTB3, 0x03, One, GPGS)
                                CreateField (JTB3, 0x07, One, PLST)
                                If ((ToInteger (DFGC) != Zero))
                                {
                                    GPGS = One
                                    GUPS = One
                                    Return (JTB3) /* \_SB_.PCI0.RP09.PEGP.NGC6.JTB3 */
                                }

                                If ((ToInteger (GUPC) == One))
                                {
                                    GC6I ()
                                    PLST = One
                                }
                                ElseIf ((ToInteger (GUPC) == 0x02))
                                {
                                    GC6I ()
                                    If ((ToInteger (PLPC) == Zero))
                                    {
                                        PLST = Zero
                                    }
                                }
                                ElseIf ((ToInteger (GUPC) == 0x03))
                                {
                                    GC6O ()
                                    If ((ToInteger (PLPC) != Zero))
                                    {
                                        PLST = Zero
                                    }
                                }
                                ElseIf ((ToInteger (GUPC) == 0x04))
                                {
                                    GC6O ()
                                    If ((ToInteger (PLPC) != Zero))
                                    {
                                        PLST = Zero
                                    }
                                }
                                ElseIf ((ToInteger (GUPC) == Zero))
                                {
                                    GUPS = GETS ()
                                    If ((ToInteger (GUPS) == One))
                                    {
                                        GPGS = One
                                    }
                                    Else
                                    {
                                        GPGS = Zero
                                    }
                                }
                                ElseIf ((ToInteger (GUPC) == 0x06)){}
                                Return (JTB3) /* \_SB_.PCI0.RP09.PEGP.NGC6.JTB3 */
                            }
                            Case (0x04)
                            {
                                Return (0x80000002)
                            }

                        }

                        Return (0x80000002)
                    }
                }
            }
        }
    }
}

