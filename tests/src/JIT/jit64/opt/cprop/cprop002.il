// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly legacy library test {}

.class public auto ansi beforefieldinit TEST
	extends [mscorlib]System.Object
{
  .field public static bool b
  .method public hidebysig static int32  Main() cil managed
  {
    .entrypoint
    .locals (uint32 V_0, int32 V_1)

    IL_0000:  ldc.i4.1
    IL_0001:  stsfld     bool TEST::b

    IL_0002:  ldsfld     bool TEST::b
    IL_0007:  brfalse.s  IL_000f

    IL_0009:  ldc.i4     0xabcdabcd
    IL_000e:  stloc.0
    IL_000f:  ldloc.0
    IL_0010:  ldc.i4     0xabcdabcd
    IL_0015:  bne.un.s   IL_0026

    IL_0017:  ldstr      "PASS"
    IL_001c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0021:  ldc.i4.s   100
    IL_0023:  stloc.1
    IL_0024:  br.s       IL_0034

    IL_0026:  ldstr      "!!!FAIL!!!"
    IL_002b:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0030:  ldc.i4.s   101
    IL_0031:  stloc.1
    IL_0032:  br.s       IL_0034

    IL_0034:  ldloc.1
    IL_0035:  ret
  } // end of method TEST::Main

}
