// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly b07947 {}
.class public repro
{

    .field int32 m_i

    .field static int32 s_Zero
    .field static int32[] s_Arr
    .field static int32 global1

    .method public static rtspecialname specialname void .cctor()
    {
	ldc.i4 10
	newarr int32
	stsfld int32[] repro::s_Arr

	ret
    }

    .method public rtspecialname specialname instance void .ctor()
    {
	ldarg 0
	call instance void object::.ctor()

	ret
    }

    .method privatescope instance void foo2() synchronized 
    {
    	.locals init (int32)

    LOOP:
    	ldstr "."
    	call void [mscorlib]System.Console::Write(string)
	
	ldsfld int32 repro::s_Zero
        brtrue IMPOSS
	ldnull
	ldc.i4 0
	stfld int32 repro::m_i
    IMPOSS:
	br LOOP
    }

    .method static int32 Main(class System.String[]) 
    {
    	.entrypoint
    	.maxstack	5
    	.locals	init (unsigned int16 i)


	.try
	{
	newobj instance void repro::.ctor()
	call instance void repro::foo2()
	leave FAIL
	}
	catch [mscorlib]System.NullReferenceException
	{
	leave PASS
	}

PASS:
    	ldc.i4 100
    	ret
FAIL:
	ldc.i4 1
	ret
    }


}