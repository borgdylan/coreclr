// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0xf07bd440 {}
.class ILGEN_0xf07bd440 {

.method static int32 main() {
.entrypoint
.maxstack	10

 .locals (int32 local_0xe, int32 ecode)
 
 ldc.i4.1
 stloc ecode
 .try {
 
 ldc.i4 0x10000001 
 stloc local_0xe

 ldloc local_0xe
 ldc.i4 0x10 
 mul.ovf

 pop
 leave xx
 } catch [mscorlib]System.OverflowException {
 pop
 ldc.i4.0
 stloc ecode
 leave xx
 }
 
xx:
 ldloc ecode
ldc.i4 100
add
 ret

}
}
