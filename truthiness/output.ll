; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i32 @foo() {
entry:
  %x = alloca float, align 4
  store float 5.000000e+00, ptr %x, align 4
  %x1 = load float, ptr %x, align 4
  %narrowFToB = fptoui float %x1 to i1
  %ifcond = icmp ne i1 %narrowFToB, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  ret i32 5
  br label %end

else:                                             ; preds = %entry
  br label %end

end:                                              ; preds = %else, %then
  ret i32 0
}
