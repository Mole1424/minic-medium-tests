; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @foo() {
entry:
  %x2 = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 5, ptr %x, align 4
  store i32 2, ptr %y, align 4
  br label %test

test:                                             ; preds = %loop, %entry
  %y1 = load i32, ptr %y, align 4
  %gtetmp = icmp sgt i32 %y1, 0
  %ifcond = icmp ne i1 %gtetmp, false
  br i1 %ifcond, label %loop, label %end

loop:                                             ; preds = %test
  store i32 2, ptr %x2, align 4
  %y3 = load i32, ptr %y, align 4
  %x4 = load i32, ptr %x2, align 4
  %subtmp = sub i32 %y3, %x4
  store i32 %subtmp, ptr %y, align 4
  br label %test

end:                                              ; preds = %test
  %x5 = load i32, ptr %x, align 4
  %calltmp = call i32 @print_int(i32 %x5)
  %x6 = load i32, ptr %x, align 4
  ret i32 %x6
}
