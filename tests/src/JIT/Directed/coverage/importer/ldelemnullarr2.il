// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly legacy library ldelemnullarr2 {}
.class private auto ansi beforefieldinit ldelemnullarr2
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  f() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  2
    .locals init (int32[] V_0)
    IL_0002:  ldnull
    IL_0003:  ldc.i4.0
    IL_0004:  ldelem.i4
    IL_0005:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000a:  ret
  } // end of method ldelemnullarr2::f

  .method public hidebysig static int32  Main() cil managed
  {
    .entrypoint
    // Code size       59 (0x3b)
    .maxstack  1
    .locals init (int32 V_0)
    .try
    {
      IL_0000:  call       void ldelemnullarr2::f()
      IL_0005:  leave.s    IL_0021

    }  // end .try
    catch [mscorlib]System.NullReferenceException 
    {
      IL_0007:  pop
      IL_0008:  ldstr      "Caught expected System.NullReferenceException"
      IL_000d:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0012:  ldstr      "PASSED"
      IL_0017:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_001c:  ldc.i4.s   100
      IL_001e:  stloc.0
      IL_001f:  leave.s    IL_0039

    }  // end handler
    IL_0021:  ldstr      "Should have caught System.NullReferenceException"
    IL_0026:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_002b:  ldstr      "FAILED"
    IL_0030:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0035:  ldc.i4.1
    IL_0036:  stloc.0
    IL_0037:  br.s       IL_0039

    IL_0039:  ldloc.0
    IL_003a:  ret
  }
}
