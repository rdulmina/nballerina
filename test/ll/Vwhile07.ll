declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  store i64 0, i64* %i
  br label %L1
L1:
  %_5 = load i64, i64* %i
  %_6 = icmp slt i64 %_5, 3
  store i1 %_6, i1* %_0
  %_7 = load i1, i1* %_0
  %_8 = xor i1 1, %_7
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L3, label %L4
L2:
  ret void
L3:
  br label %L2
L4:
  %_10 = load i64, i64* %i
  call void @_Bio__println (i64 %_10)
  store i8* null, i8** %_2
  %_11 = load i64, i64* %i
  %_12 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_11, i64 1)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L7, label %L6
L5:
  %_16 = load i64, i64* %_4
  call void @_bal_panic (i64 %_16)
  unreachable
L6:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_3
  %_15 = load i64, i64* %_3
  store i64 %_15, i64* %i
  br label %L1
L7:
  store i64 1, i64* %_4
  br label %L5
}
