// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x4cf11307 {}
.class ILGEN_0x4cf11307 {
.field static	unsigned int64 field_0x0
.method static int32 Method_0x3417140a() {
.maxstack	5
 ldc.i8 0x50b2a7b2d73de702 
 stsfld unsigned int64 ILGEN_0x4cf11307::field_0x0
 ldc.i4.3
 ldc.i4.s 82
 rem.un
 brtrue Branch_0x2
 ldc.i8 0x9bc5723f7795fe11 
 conv.ovf.u1
 br Branch_0x3
Branch_0x2:
 ldsfld unsigned int64 ILGEN_0x4cf11307::field_0x0
 ldc.i8 0x9bc5723f7795fe11 
 cgt.un
Branch_0x3:
 ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
call int32 ILGEN_0x4cf11307::Method_0x3417140a()
ldc.i4 100
add
 ret
}

}


