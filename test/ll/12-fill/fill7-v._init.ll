%UniformSubtype = type {i1(%UniformSubtype*, i8 addrspace(1)*)*}
%Type0 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32, [0 x i32]}
%Type1 = type {i1(%UniformSubtype*, i8 addrspace(1)*)*, i32}
@_Bi04root0 = constant {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*} {i32 0, i8 addrspace(1)*(i8 addrspace(1)*, i64)* @_bal_list_generic_get_tagged, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)* @_bal_list_generic_set_tagged, i64(i8 addrspace(1)*, i64)* @_bal_list_generic_get_int, i64(i8 addrspace(1)*, i64, i64)* @_bal_list_generic_set_int, double(i8 addrspace(1)*, i64)* @_bal_list_generic_get_float, i64(i8 addrspace(1)*, i64, double)* @_bal_list_generic_set_float, i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member0 to i64), {i32}* bitcast({i32, i32, i64, {i32}*, [0 x i64]}* @.mapping0 to {i32}*)}
@.subtype0 = internal constant %Type0 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_precomputed_subtype_contains, i32 0, [0 x i32] []}, align 8
@.member0 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type0* @.subtype0 to %UniformSubtype*)]}
@.mapping0 = internal constant {i32, i32, i64, {i32}*, [0 x i64]} {i32 0, i32 0, i64 ptrtoint({i32, i32, [1 x %UniformSubtype*]}* @.member1 to i64), {i32}* bitcast({i32, i32, i64, {i32}*, [0 x i64]}* @.mapping1 to {i32}*), [0 x i64] []}
@.subtype1 = internal constant %Type1 {i1(%UniformSubtype*, i8 addrspace(1)*)* @_bal_map_subtype_contains, i32 128}, align 8
@.member1 = internal constant {i32, i32, [1 x %UniformSubtype*]} {i32 0, i32 524288, [1 x %UniformSubtype*] [%UniformSubtype* bitcast(%Type1* @.subtype1 to %UniformSubtype*)]}
@.mapping1 = internal constant {i32, i32, i64, {i32}*, [0 x i64]} {i32 1, i32 0, i64 257, {i32}* null, [0 x i64] []}
declare i8 addrspace(1)* @_bal_list_generic_get_tagged(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_tagged(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i64 @_bal_list_generic_get_int(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_int(i8 addrspace(1)*, i64, i64)
declare double @_bal_list_generic_get_float(i8 addrspace(1)*, i64)
declare i64 @_bal_list_generic_set_float(i8 addrspace(1)*, i64, double)
declare i1 @_bal_precomputed_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare i1 @_bal_map_subtype_contains(%UniformSubtype*, i8 addrspace(1)*)
declare void @_B04rootmain()
define void @_bal_main() {
  call void @_B04rootmain()
  ret void
}
