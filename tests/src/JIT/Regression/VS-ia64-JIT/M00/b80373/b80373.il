// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xe2ce7565 {}
.class ILGEN_0xe2ce7565 {
.method static unsigned int8  Method_0xe8a4bb67(int64 Arg_0x0, unsigned int16 Arg_0x1, unsigned int64 Arg_0x2, unsigned int16 Arg_0x3, int32 Arg_0x4) {
.maxstack	11

Start_Orphan_0:
Start_Orphan_1:
   ldc.i8 0x3f300bdf5055962b
   ldc.i8 0xc8c8b12c425d58c
  add
 pop
End_Orphan_1:
 ldarga Arg_0x2
Start_Orphan_2:
   ldarga Arg_0x2
   ldc.i8 0x81be99226bb94234
  stind.i8
End_Orphan_2:
    ldarga Arg_0x2
   ldind.u8
    ldc.i4.3
   conv.i1
  shr
 neg
stind.i8
End_Orphan_0:
Start_Orphan_3:
Start_Orphan_4:
   ldarga Arg_0x3
   ldc.i4.8
  stind.i2
End_Orphan_4:
  ldnull
 pop
End_Orphan_3:
Start_Orphan_5:
   ldarga Arg_0x4
   ldc.i4.7
  stind.i
End_Orphan_5:
Start_Orphan_7:
    newobj     instance void [mscorlib]System.Object::.ctor()
   pop
End_Orphan_7:
   ldc.i4.8
     ldc.i4.3
     ldc.i4.7
    add
     ldc.i4.4
     ldc.i4.3
    add
   and
  sub
Start_Orphan_8:
    ldarga Arg_0x1
    ldc.i4.8
   stind.i2
End_Orphan_8:
     ldc.i4.m1
     ldc.i4.6
    mul
     ldc.i8 0x86786ee09a8f6b06
    conv.i
   sub
  conv.u
 add
 ldc.i4.8
clt.un
 ret
}
.method static int32 Main() {
.entrypoint
.maxstack	11
ldc.i8 0xe2849c60674245ac 
ldc.i4 0x4451f25f 
ldc.i8 0x4bd215d0424a93f9 
ldc.i4 0xbd5352a8 
ldc.i4 0x96023ac7 

 call unsigned int8  ILGEN_0xe2ce7565::Method_0xe8a4bb67(int64 Arg_0x0, unsigned int16 Arg_0x1, unsigned int64 Arg_0x2, unsigned int16 Arg_0x3, int32 Arg_0x4)
conv.i4
ldc.i4.s 100
add
 ret
}

}
