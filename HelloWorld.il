.assembly HelloWorld
{
    .hash algorithm 0x00008004
    .ver 1:0:0:0
}

.module HelloWorld.dll
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003
.corflags 0x00000001

.namespace HelloWorld
{
    .class private abstract auto ansi beforefieldinit '<Program>$' extends [System.Runtime]System.Object
    {
        .custom instance void [System.Runtime]System.Runtime.CompilerServices.
        CompilerGeneratedAttribute::.ctor()= ( 01 00 00 00 )
        .method private hidebysig static void '<Main>$'(string[] args) cil managed
        {
            .entrypoint
            .maxstack 8
            ldstr "Hello World!"
            call void [System.Console]System.Console::WriteLine(string)
            nop
            call string [System.Console]System.Console::ReadLine()
            pop
            ret
        }
    }
    
    .class public interface IBaseInterface {}
    
    .class public BaseClass implements HelloWorld.IBaseInterface {}
        
    .class public MyClass extends HelloWorld.BaseClass {}
        
    .class public sealed MyFirstStruct extends [System.Runtime]System.ValueType {}
    // or | value = auto extends [System.Runtime]System.ValueType
    .class public sealed value MySecondStruct {}
        
    .class public sealed enum MyFirstEnum {}
    // or | enum = auto extends [System.Runtime]System.Enum
    .class public sealed MySecondEnum extends [System.Runtime]System.Enum {}
}
