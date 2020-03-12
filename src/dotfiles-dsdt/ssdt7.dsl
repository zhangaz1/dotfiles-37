/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200214 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.dat, Wed Mar 11 20:25:19 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001A4C (6732)
 *     Revision         0x02
 *     Checksum         0x19
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "WHL_Tbt_"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "WHL_Tbt_", 0x00001000)
{
    External (_SB_.OSCO, UnknownObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.GPCB, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.SPT2, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP01.SLOT, UnknownObj)
    External (_SB_.PCI0.RP01.VDID, UnknownObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP02.SLOT, UnknownObj)
    External (_SB_.PCI0.RP02.VDID, UnknownObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP03.SLOT, UnknownObj)
    External (_SB_.PCI0.RP03.VDID, UnknownObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP04.SLOT, UnknownObj)
    External (_SB_.PCI0.RP04.VDID, UnknownObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP05.PDOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.PDON, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP05.SLOT, UnknownObj)
    External (_SB_.PCI0.RP05.VDID, UnknownObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.RP06.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP06.SLOT, UnknownObj)
    External (_SB_.PCI0.RP06.VDID, UnknownObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP07.DL23, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.L23D, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP07.LASX, UnknownObj)
    External (_SB_.PCI0.RP07.PXSX, DeviceObj)
    External (_SB_.PCI0.RP07.PXSX._ADR, IntObj)
    External (_SB_.PCI0.RP07.SLOT, UnknownObj)
    External (_SB_.PCI0.RP07.VDID, UnknownObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.RP08.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP08.SLOT, UnknownObj)
    External (_SB_.PCI0.RP08.VDID, UnknownObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP09.SLOT, UnknownObj)
    External (_SB_.PCI0.RP09.VDID, UnknownObj)
    External (_SB_.PCI0.RP10, DeviceObj)
    External (_SB_.PCI0.RP10.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP10.SLOT, UnknownObj)
    External (_SB_.PCI0.RP10.VDID, UnknownObj)
    External (_SB_.PCI0.RP11, DeviceObj)
    External (_SB_.PCI0.RP11.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP11.SLOT, UnknownObj)
    External (_SB_.PCI0.RP11.VDID, UnknownObj)
    External (_SB_.PCI0.RP12, DeviceObj)
    External (_SB_.PCI0.RP12.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP12.SLOT, UnknownObj)
    External (_SB_.PCI0.RP12.VDID, UnknownObj)
    External (_SB_.PCI0.RP13, DeviceObj)
    External (_SB_.PCI0.RP13.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP13.SLOT, UnknownObj)
    External (_SB_.PCI0.RP13.VDID, UnknownObj)
    External (_SB_.PCI0.RP14, DeviceObj)
    External (_SB_.PCI0.RP14.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP14.SLOT, UnknownObj)
    External (_SB_.PCI0.RP14.VDID, UnknownObj)
    External (_SB_.PCI0.RP15, DeviceObj)
    External (_SB_.PCI0.RP15.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP15.SLOT, UnknownObj)
    External (_SB_.PCI0.RP15.VDID, UnknownObj)
    External (_SB_.PCI0.RP16, DeviceObj)
    External (_SB_.PCI0.RP16.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP16.SLOT, UnknownObj)
    External (_SB_.PCI0.RP16.VDID, UnknownObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP17.SLOT, UnknownObj)
    External (_SB_.PCI0.RP17.VDID, UnknownObj)
    External (_SB_.PCI0.RP18, DeviceObj)
    External (_SB_.PCI0.RP18.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP18.SLOT, UnknownObj)
    External (_SB_.PCI0.RP18.VDID, UnknownObj)
    External (_SB_.PCI0.RP19, DeviceObj)
    External (_SB_.PCI0.RP19.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP19.SLOT, UnknownObj)
    External (_SB_.PCI0.RP19.VDID, UnknownObj)
    External (_SB_.PCI0.RP20, DeviceObj)
    External (_SB_.PCI0.RP20.D3HT, FieldUnitObj)
    External (_SB_.PCI0.RP20.SLOT, UnknownObj)
    External (_SB_.PCI0.RP20.VDID, UnknownObj)
    External (_SB_.PCI0.RP21, DeviceObj)
    External (_SB_.PCI0.RP21.SLOT, UnknownObj)
    External (_SB_.PCI0.RP21.VDID, UnknownObj)
    External (_SB_.PCI0.RP22, DeviceObj)
    External (_SB_.PCI0.RP22.SLOT, UnknownObj)
    External (_SB_.PCI0.RP22.VDID, UnknownObj)
    External (_SB_.PCI0.RP23, DeviceObj)
    External (_SB_.PCI0.RP23.SLOT, UnknownObj)
    External (_SB_.PCI0.RP23.VDID, UnknownObj)
    External (_SB_.PCI0.RP24, DeviceObj)
    External (_SB_.PCI0.RP24.SLOT, UnknownObj)
    External (_SB_.PCI0.RP24.VDID, UnknownObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)
    External (_SB_.PCI0.XDCI, DeviceObj)
    External (_SB_.PCI0.XDCI.D0I3, UnknownObj)
    External (_SB_.PCI0.XDCI.XDCB, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)
    External (_SB_.PSD0, MethodObj)    // 1 Arguments
    External (_SB_.PSD3, MethodObj)    // 1 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AUDD, FieldUnitObj)
    External (DVID, UnknownObj)
    External (GBEP, UnknownObj)
    External (GBES, UnknownObj)
    External (IC0D, FieldUnitObj)
    External (IC1D, FieldUnitObj)
    External (IC1S, FieldUnitObj)
    External (MMRP, MethodObj)    // 2 Arguments
    External (MMTB, MethodObj)    // 2 Arguments
    External (NEXP, IntObj)
    External (PEP0, UnknownObj)
    External (PEPC, UnknownObj)
    External (PIN_.OFF_, MethodObj)    // 1 Arguments
    External (PIN_.ON__, MethodObj)    // 1 Arguments
    External (PIN_.STA_, MethodObj)    // 1 Arguments
    External (PINP.OFF_, MethodObj)    // 1 Arguments
    External (PINP.ON__, MethodObj)    // 1 Arguments
    External (PRST, UnknownObj)
    External (PSON, UnknownObj)
    External (PWRG, UnknownObj)
    External (RCG0, IntObj)
    External (RCG1, IntObj)
    External (RPS0, IntObj)
    External (RPT0, IntObj)
    External (RTBC, IntObj)
    External (RTBT, IntObj)
    External (SCLK, UnknownObj)
    External (SDS0, FieldUnitObj)
    External (SDS1, FieldUnitObj)
    External (SHSB, FieldUnitObj)
    External (SPCO, MethodObj)    // 2 Arguments
    External (SPST, IntObj)
    External (TBCD, IntObj)
    External (TBHR, IntObj)
    External (TBOD, IntObj)
    External (TBPE, IntObj)
    External (TBRP, IntObj)
    External (TBTS, IntObj)
    External (TOFF, IntObj)
    External (TRD3, IntObj)
    External (TRDO, IntObj)
    External (TUID, UnknownObj)
    External (UAMS, UnknownObj)
    External (VRRD, FieldUnitObj)
    External (WAKG, UnknownObj)
    External (WAKP, UnknownObj)
    External (WDC2, IntObj)
    External (WDCT, IntObj)
    External (WLCT, IntObj)
    External (WMNS, IntObj)
    External (WMXS, IntObj)
    External (WNSU, UnknownObj)
    External (WPRP, UnknownObj)
    External (WRTO, UnknownObj)
    External (XDST, IntObj)
    External (XHPR, UnknownObj)

    If ((GBES != 0x00)){}
    If (((RCG0 & 0x80) == 0x80))
    {
        Scope (\_SB.PCI0.RP07)
        {
            Name (BRST, Package (0x02)
            {
                0x04050001, 
                0x00
            })
            Name (RSTX, Package (0x02)
            {
                0x00, 
                0x00
            })
            Name (PWRG, Package (0x02)
            {
                0x0403000D, 
                0x01
            })
            Name (WAKG, 0x0400000B)
            Name (SCLK, 0x04)
            Method (RSTG, 0, NotSerialized)
            {
                RSTX [0x00] = PRST /* External reference */
                RSTX [0x01] = WPRP /* External reference */
                Return (RSTX) /* \_SB_.PCI0.RP07.RSTX */
            }

            Name (WKEN, 0x00)
            Name (MOL3, 0x01)
            Name (OFEN, 0x01)
            Name (FLGN, 0x00)
            Name (FLGF, 0x00)
            Name (FLGW, 0x00)
            Method (PC2M, 1, Serialized)
            {
                Local0 = \_SB.PCI0.GPCB ()
                Local0 += ((Arg0 & 0x001F0000) >> 0x01)
                Local0 += ((Arg0 & 0x07) << 0x0C)
                Return (Local0)
            }

            Method (GMIO, 1, Serialized)
            {
                OperationRegion (PXCS, SystemMemory, PC2M (\_SB.PCI0.RP07._ADR ()), 0x20)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    PBUS,   8, 
                    SBUS,   8
                }

                Local0 = \_SB.PCI0.GPCB ()
                Local0 += ((Arg0 & 0x001F0000) >> 0x01)
                Local0 += ((Arg0 & 0x07) << 0x0C)
                Local0 += (SBUS << 0x14)
                Return (Local0)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((WRTO == 0x01))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg1)
                {
                    WKEN = 0x00
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = 0x01
                }
                Else
                {
                    WKEN = 0x00
                }

                If ((Arg0 == 0x00))
                {
                    MOL3 = 0x01
                }
                Else
                {
                    MOL3 = 0x00
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Name (WOFF, 0x00)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (0x00)
                    }

                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    FLGN = MOL3 /* \_SB_.PCI0.RP07.MOL3 */
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If (CondRefOf (^WOFF))
                    {
                        If ((^WOFF != Zero))
                        {
                            Local0 = ((Timer - ^WOFF) / 0x2710)
                            If ((Local0 < 0x01F4))
                            {
                                Sleep ((0x01F4 - Local0))
                            }

                            ^WOFF = 0x00
                        }
                    }

                    PON ()
                    L23D ()
                    If (FLGN)
                    {
                        Sleep (0x01F4)
                    }

                    OFEN = 0x01
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    FLGF = MOL3 /* \_SB_.PCI0.RP07.MOL3 */
                    FLGW = WKEN /* \_SB_.PCI0.RP07.WKEN */
                    If ((VDID == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((OFEN == 0x00))
                    {
                        Return (Zero)
                    }

                    DL23 ()
                    If (FLGF)
                    {
                        \PINP.ON (BRST)
                        If ((WNSU == 0x01))
                        {
                            Sleep (0x64)
                        }
                        ElseIf (((WNSU == 0x02) || (WNSU == 0x03)))
                        {
                            Sleep (0x1E)
                            POFF ()
                            Sleep (0x0E)
                        }

                        \PIN.OFF (PWRG)
                        If (CondRefOf (^WOFF))
                        {
                            ^WOFF = Timer
                        }
                    }

                    If (CondRefOf (WAKG))
                    {
                        If (FLGW)
                        {
                            \_SB.SHPO (WAKG, 0x00)
                        }
                        Else
                        {
                            \_SB.SHPO (WAKG, 0x01)
                        }
                    }

                    OFEN = 0x00
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If (CondRefOf (PWRG))
                {
                    If (!\PIN.STA (PWRG))
                    {
                        Return (0x00)
                    }
                }

                If (\PIN.STA (RSTG ()))
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                \_SB.PSD0 (SLOT)
                If (FLGN)
                {
                    If (CondRefOf (PWRG))
                    {
                        \PIN.ON (PWRG)
                        Sleep (PEP0)
                    }

                    \PINP.OFF (BRST)
                    Sleep (0x14)
                }
                Else
                {
                    Stall (0x14)
                }

                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, 0x01)
                }

                If (FLGN)
                {
                    Sleep (0x64)
                }

                \PIN.OFF (RSTG ())
            }

            Method (POFF, 0, NotSerialized)
            {
                \PIN.ON (RSTG ())
                \_SB.PSD3 (SLOT)
                If (CondRefOf (SCLK))
                {
                    SPCO (SCLK, 0x00)
                    Sleep (0x10)
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Scope (PXSX)
            {
                Name (L850, 0x00)
                Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
                {
                    Return (Package (0x01)
                    {
                        \_SB.PCI0.RP07.PXP
                    })
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    OperationRegion (PXCS, SystemMemory, GMIO (\_SB.PCI0.RP07.PXSX._ADR), 0x0480)
                    Field (PXCS, AnyAcc, NoLock, Preserve)
                    {
                        VDID,   32, 
                        Offset (0x78), 
                        DCTL,   16, 
                        DSTS,   16, 
                        Offset (0x80), 
                        LCTL,   16, 
                        LSTS,   16, 
                        Offset (0x98), 
                        DCT2,   16, 
                        Offset (0x148), 
                        Offset (0x14C), 
                        MXSL,   16, 
                        MNSL,   16, 
                        Offset (0x158), 
                        L1SC,   32
                    }

                    If ((VDID == 0x73608086))
                    {
                        L850 = 0x01
                    }

                    \PINP.ON (\_SB.PCI0.RP07.BRST)
                    Sleep (0xC8)
                    Notify (\_SB.PCI0.RP07.PXSX, 0x01) // Device Check
                    \PIN.OFF (\_SB.PCI0.RP07.RSTG ())
                    \PINP.OFF (\_SB.PCI0.RP07.BRST)
                    If ((L850 == 0x01))
                    {
                        Sleep (0xC8)
                    }

                    Local0 = 0x00
                    While ((\_SB.PCI0.RP07.LASX == 0x00))
                    {
                        If ((Local0 > 0x14))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    Sleep (0x0A)
                    L1SC |= 0x0F
                    If ((NEXP == 0x00))
                    {
                        DCTL = \WDCT /* External reference */
                        LCTL = \WLCT /* External reference */
                        DCT2 = \WDC2 /* External reference */
                        MXSL = \WMXS /* External reference */
                        MNSL = \WMNS /* External reference */
                    }
                    Else
                    {
                        LCTL = 0x0142
                    }

                    Notify (\_SB.PCI0.RP07.PXSX, 0x01) // Device Check
                }
            }
        }
    }

    If (((\RTBT == 0x01) && (\TBTS == 0x01)))
    {
        Scope (\_SB.PCI0.RP05)
        {
            Name (RSTG, Package (0x02)
            {
                0x04060006, 
                0x00
            })
            Name (PWRG, Package (0x02)
            {
                0x04060004, 
                0x01
            })
            Name (WAKG, 0x04060007)
            Name (SCLK, 0x01)
            Name (TUID, 0x00)
            Name (G2SD, 0x00)
            Name (RSTF, 0x00)
            Name (WKEN, 0x00)
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                Return (Package (0x04)
                {
                    ToUUID ("6211e2c0-58a3-4af3-90e1-927a4e0c55a4"), 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "HotPlugSupportInD3", 
                            0x01
                        }
                    }, 

                    ToUUID ("efcc06cc-73ac-4bc3-bff0-76143807c389"), 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            "ExternalFacingPort", 
                            0x01
                        }, 

                        Package (0x02)
                        {
                            "UID", 
                            TUID
                        }
                    }
                })
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If ((Arg1 >= 0x01))
                {
                    WKEN = 0x00
                    TOFF = 0x02
                }
                ElseIf ((Arg0 && Arg2))
                {
                    WKEN = 0x01
                    TOFF = 0x01
                }
                Else
                {
                    WKEN = 0x00
                    TOFF = 0x00
                }
            }

            PowerResource (PXP, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (PSTA ())
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    TRDO = 0x01
                    PON ()
                    TRDO = 0x00
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    TRD3 = 0x01
                    POFF ()
                    TRD3 = 0x00
                }
            }

            Method (PSTA, 0, NotSerialized)
            {
                If ((RSTF == 0x01))
                {
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (SXEX, 0, Serialized)
            {
                Local7 = \MMTB (RPS0, RPT0)
                OperationRegion (TBDI, SystemMemory, Local7, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                Local1 = 0xC8
                P2TB = 0x09
                While ((Local1 > 0x00))
                {
                    Local1 = (Local1 - 0x01)
                    Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                    If ((Local2 == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((Local2 & 0x01))
                    {
                        Break
                    }

                    Sleep (0x05)
                }

                P2TB = 0x00
                Local1 = 0x01F4
                While ((Local1 > 0x00))
                {
                    Local1 = (Local1 - 0x01)
                    Local2 = TB2P /* \_SB_.PCI0.RP05.SXEX.TB2P */
                    If ((Local2 == 0xFFFFFFFF))
                    {
                        Return (Zero)
                    }

                    If ((DIVI != 0xFFFFFFFF))
                    {
                        Break
                    }

                    Sleep (0x0A)
                }
            }

            Method (PON, 0, NotSerialized)
            {
                Local7 = \MMRP (\RPS0, \RPT0)
                OperationRegion (L23P, SystemMemory, Local7, 0x0480)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                        ,   3, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    PSD0,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE0), 
                        ,   7, 
                    NCB7,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L2TE,   1, 
                    L2TR,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (L23P, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Local6 = \MMTB (\RPS0, \RPT0)
                OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0x84), 
                    TBPS,   2, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                If (TBPE)
                {
                    Return (Zero)
                }

                G2SD = 0x00
                If (\RTBC)
                {
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, 0x01)
                    }

                    Sleep (\TBCD)
                }

                If (CondRefOf (PWRG))
                {
                    \PIN.ON (PWRG)
                    Sleep (0x0A)
                }

                \PIN.OFF (RSTG)
                RSTF = 0x00
                If ((NCB7 != 0x01))
                {
                    Return (Zero)
                }

                DPGE = 0x00
                L2TR = 0x01
                Sleep (0x10)
                Local0 = 0x00
                While (L2TR)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                NCB7 = 0x00
                DPGE = 0x01
                Local0 = 0x00
                While ((LASX == 0x00))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                Local1 = PSD0 /* \_SB_.PCI0.RP05.PON_.PSD0 */
                PSD0 = 0x00
                Local2 = 0x14
                While ((Local2 > 0x00))
                {
                    Local2 = (Local2 - 0x01)
                    Local3 = TB2P /* \_SB_.PCI0.RP05.PON_.TB2P */
                    If ((Local3 != 0xFFFFFFFF))
                    {
                        Break
                    }

                    Sleep (0x0A)
                }

                If ((Local2 <= 0x00)){}
                SXEX ()
                PSD0 = Local1
                If (CondRefOf (PDON))
                {
                    PDON ()
                }
            }

            Method (POFF, 0, NotSerialized)
            {
                If ((TOFF == 0x00))
                {
                    Return (Zero)
                }

                Local7 = \MMRP (\RPS0, \RPT0)
                OperationRegion (L23P, SystemMemory, Local7, 0x0480)
                Field (L23P, WordAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                        ,   3, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    PSD0,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE0), 
                        ,   7, 
                    NCB7,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L2TE,   1, 
                    L2TR,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (L23P, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Local6 = \MMTB (RPS0, RPT0)
                OperationRegion (TBDI, SystemMemory, Local6, 0x0550)
                Field (TBDI, DWordAcc, NoLock, Preserve)
                {
                    DIVI,   32, 
                    CMDR,   32, 
                    Offset (0x84), 
                    TBPS,   2, 
                    Offset (0x548), 
                    TB2P,   32, 
                    P2TB,   32
                }

                Local6 += 0x00108000
                OperationRegion (DSP0, SystemMemory, Local6, 0x0100)
                Field (DSP0, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                        ,   29, 
                    LAI0,   1, 
                    Offset (0xD8), 
                        ,   22, 
                    PDS0,   1
                }

                Local6 += 0x00018000
                OperationRegion (DSP1, SystemMemory, Local6, 0x0100)
                Field (DSP1, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0), 
                        ,   29, 
                    LAI1,   1, 
                    Offset (0xD8), 
                        ,   22, 
                    PDS1,   1
                }

                Local1 = PSD0 /* \_SB_.PCI0.RP05.POFF.PSD0 */
                PSD0 = 0x00
                Local3 = P2TB /* \_SB_.PCI0.RP05.POFF.P2TB */
                If ((TOFF > 0x01))
                {
                    TOFF = 0x00
                    Sleep (0x0A)
                    PSD0 = Local1
                    RSTF = 0x01
                    Return (Zero)
                }

                TOFF = 0x00
                Sleep (0x0A)
                Local6 = TBPS /* \_SB_.PCI0.RP05.POFF.TBPS */
                TBPS = 0x00
                Sleep (0x0A)
                Local2 = PDS0 /* \_SB_.PCI0.RP05.POFF.PDS0 */
                Local3 = PDS1 /* \_SB_.PCI0.RP05.POFF.PDS1 */
                TBPS = Local6
                PSD0 = Local1
                L2TE = 0x01
                Sleep (0x10)
                Local0 = 0x00
                While (L2TE)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                NCB7 = 0x01
                \PIN.ON (RSTG)
                RSTF = 0x01
                If (\RTBC)
                {
                    If (CondRefOf (SCLK))
                    {
                        SPCO (SCLK, 0x00)
                    }

                    Sleep (0x10)
                }

                If (CondRefOf (PWRG))
                {
                    Sleep (0x0A)
                    If (CondRefOf (WAKP))
                    {
                        If (((WAKP == 0x00) || !WKEN))
                        {
                            \PIN.OFF (PWRG)
                        }
                    }
                    Else
                    {
                        \PIN.OFF (PWRG)
                    }
                }

                If (CondRefOf (WAKG))
                {
                    If (((WAKG != 0x00) && WKEN))
                    {
                        \_SB.SHPO (WAKG, 0x00)
                    }
                }

                TBPE = 0x00
                Local6 = \TBOD /* External reference */
                Local7 = (Local6 & 0x7FFF)
                Local6 &= 0x8000
                If ((Local6 == 0x00))
                {
                    Sleep (\TBOD)
                }
                ElseIf (((Local2 == 0x01) || (Local3 == 0x01)))
                {
                    Sleep (Local7)
                }
                Else
                {
                    Sleep (0x03E8)
                }

                If (CondRefOf (PDOF))
                {
                    If (PSON)
                    {
                        PDOF ()
                    }
                }
            }

            Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    PXP
                })
            }

            Method (TBNF, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            }
        }
    }
}

