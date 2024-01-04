; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @nested_blocks(i32 %x) {
entry:
  %x1 = alloca i32, align 4
  store i32 %x, ptr %x1, align 4
  %x2 = load i32, ptr %x1, align 4
  ret i32 %x2
}

define i1 @strange_assoc() {
entry:
  %rhs = alloca float, align 4
  %rhs_1 = alloca float, align 4
  %lhs = alloca float, align 4
  store float 0x3FD8618620000000, ptr %lhs, align 4
  store float 1.500000e+00, ptr %rhs_1, align 4
  %rhs_11 = load float, ptr %rhs_1, align 4
  %divtmp = fdiv float 4.000000e+00, %rhs_11
  %divtmp2 = fdiv float %divtmp, 7.000000e+00
  store float %divtmp2, ptr %rhs, align 4
  %lhs3 = load float, ptr %lhs, align 4
  %rhs4 = load float, ptr %rhs, align 4
  %eqtmp = fcmp oeq float %lhs3, %rhs4
  ret i1 %eqtmp
}

define i32 @void_param() {
entry:
  ret i32 0
}

define i32 @example_scope() {
entry:
  %cond = alloca i1, align 1
  %x2 = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 5, ptr %x, align 4
  store i32 2, ptr %y, align 4
  br label %test

test:                                             ; preds = %end5, %entry
  %y1 = load i32, ptr %y, align 4
  %gtetmp = icmp sgt i32 %y1, 0
  %ifcond = icmp ne i1 %gtetmp, false
  br i1 %ifcond, label %loop, label %end

loop:                                             ; preds = %test
  store i1 true, ptr %cond, align 1
  br label %test3

end:                                              ; preds = %test
  %x10 = load i32, ptr %x, align 4
  ret i32 %x10

test3:                                            ; preds = %loop4, %loop
  %cond6 = load i1, ptr %cond, align 1
  %ifcond7 = icmp ne i1 %cond6, false
  br i1 %ifcond7, label %loop4, label %end5

loop4:                                            ; preds = %test3
  store i32 17, ptr %x2, align 4
  store i1 false, ptr %cond, align 1
  br label %test3

end5:                                             ; preds = %test3
  store i32 2, ptr %x2, align 4
  %y8 = load i32, ptr %y, align 4
  %x9 = load i32, ptr %x2, align 4
  %subtmp = sub i32 %y8, %x9
  store i32 %subtmp, ptr %y, align 4
  br label %test
}

define i32 @expr_stmt() {
entry:
  %x = alloca i32, align 4
  store i32 5, ptr %x, align 4
  %x1 = load i32, ptr %x, align 4
  ret i32 0
}

define i32 @shadowing() {
entry:
  %nested_blocks = alloca i32, align 4
  store i32 5, ptr %nested_blocks, align 4
  %nested_blocks1 = load i32, ptr %nested_blocks, align 4
  %calltmp = call i32 @nested_blocks(i32 %nested_blocks1)
  ret i32 %calltmp
}

define i1 @drive() {
entry:
  %oralloc13 = alloca i1, align 1
  %oralloc9 = alloca i1, align 1
  %oralloc5 = alloca i1, align 1
  %oralloc1 = alloca i1, align 1
  %oralloc = alloca i1, align 1
  %calltmp = call i32 @nested_blocks(i32 5)
  %neqtmp = icmp ne i32 %calltmp, 5
  %orlazycond = icmp ne i1 %neqtmp, true
  br i1 %orlazycond, label %orevalrhs14, label %orlazy15

orevalrhs:                                        ; preds = %orret4
  %calltmp35 = call i32 @void_param()
  %neqtmp36 = icmp ne i32 %calltmp35, 0
  %ortmp37 = or i1 %ortmp33, %neqtmp36
  store i1 %ortmp37, ptr %oralloc, align 1
  br label %orret

orlazy:                                           ; preds = %orret4
  store i1 %ortmp33, ptr %oralloc, align 1
  br label %orret

orret:                                            ; preds = %orlazy, %orevalrhs
  %ortmp38 = load i1, ptr %oralloc, align 1
  ret i1 %ortmp38

orevalrhs2:                                       ; preds = %orret8
  %calltmp30 = call i32 @expr_stmt()
  %neqtmp31 = icmp ne i32 %calltmp30, 0
  %ortmp32 = or i1 %ortmp28, %neqtmp31
  store i1 %ortmp32, ptr %oralloc1, align 1
  br label %orret4

orlazy3:                                          ; preds = %orret8
  store i1 %ortmp28, ptr %oralloc1, align 1
  br label %orret4

orret4:                                           ; preds = %orlazy3, %orevalrhs2
  %ortmp33 = load i1, ptr %oralloc1, align 1
  %orlazycond34 = icmp ne i1 %ortmp33, true
  br i1 %orlazycond34, label %orevalrhs, label %orlazy

orevalrhs6:                                       ; preds = %orret12
  %calltmp26 = call i1 @strange_assoc()
  %nottmp = xor i1 %calltmp26, true
  %ortmp27 = or i1 %ortmp24, %nottmp
  store i1 %ortmp27, ptr %oralloc5, align 1
  br label %orret8

orlazy7:                                          ; preds = %orret12
  store i1 %ortmp24, ptr %oralloc5, align 1
  br label %orret8

orret8:                                           ; preds = %orlazy7, %orevalrhs6
  %ortmp28 = load i1, ptr %oralloc5, align 1
  %orlazycond29 = icmp ne i1 %ortmp28, true
  br i1 %orlazycond29, label %orevalrhs2, label %orlazy3

orevalrhs10:                                      ; preds = %orret16
  %calltmp21 = call i32 @example_scope()
  %neqtmp22 = icmp ne i32 %calltmp21, 5
  %ortmp23 = or i1 %ortmp19, %neqtmp22
  store i1 %ortmp23, ptr %oralloc9, align 1
  br label %orret12

orlazy11:                                         ; preds = %orret16
  store i1 %ortmp19, ptr %oralloc9, align 1
  br label %orret12

orret12:                                          ; preds = %orlazy11, %orevalrhs10
  %ortmp24 = load i1, ptr %oralloc9, align 1
  %orlazycond25 = icmp ne i1 %ortmp24, true
  br i1 %orlazycond25, label %orevalrhs6, label %orlazy7

orevalrhs14:                                      ; preds = %entry
  %calltmp17 = call i32 @shadowing()
  %neqtmp18 = icmp ne i32 %calltmp17, 5
  %ortmp = or i1 %neqtmp, %neqtmp18
  store i1 %ortmp, ptr %oralloc13, align 1
  br label %orret16

orlazy15:                                         ; preds = %entry
  store i1 %neqtmp, ptr %oralloc13, align 1
  br label %orret16

orret16:                                          ; preds = %orlazy15, %orevalrhs14
  %ortmp19 = load i1, ptr %oralloc13, align 1
  %orlazycond20 = icmp ne i1 %ortmp19, true
  br i1 %orlazycond20, label %orevalrhs10, label %orlazy11
}
