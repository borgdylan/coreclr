// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.


.assembly extern mscorlib {}
.assembly test {}
.class public sealed a extends [mscorlib]System.Object
{
  // specifying beforefieldinit here makes this sample work
  .class sealed nested public save extends [mscorlib]System.Object
  //.class beforefieldinit sealed nested public save extends [mscorlib]System.Object
  {
    .field public static class [mscorlib]System.ArithmeticException ae

    //Commenting out this type initializer also makes it work
    .method private specialname rtspecialname static void .cctor()
    {
      ret
    }
  }

  .method public static int32 a()
  {
    .entrypoint
    .locals init (
             class [mscorlib]System.ArithmeticException V_1,
             int32 V_2)
    .try
    {
      ldc.i4.0
      stloc.s    V_2
      ldc.i4.1
      ldloc.s    V_2
      div
      stloc.s    V_2
      leave      method_end
    }
    catch [mscorlib]System.ArithmeticException
    {
      // Uncommenting the following two lines also makes it work
      //stloc.s    V_1
      //ldloc.s    V_1
      stsfld class [mscorlib]System.ArithmeticException a/save::ae
      ldsfld     class [mscorlib]System.ArithmeticException a/save::ae
      call       instance string [mscorlib]System.Exception::get_Message()
      call       void [mscorlib]System.Console::WriteLine(string)
      leave      method_end
    }
method_end:
      ldsfld     class [mscorlib]System.ArithmeticException a/save::ae
      call       instance string [mscorlib]System.Exception::get_Message()
      call       void [mscorlib]System.Console::WriteLine(string)

ldstr "PASSED"
call       void [mscorlib]System.Console::WriteLine(string)
ldc.i4 100      
ret
  }

  .method public specialname rtspecialname instance void  .ctor()
  {
    ldarg.0
    call       instance void [mscorlib]System.Object::.ctor()
    ret
  }
}
