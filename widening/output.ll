; ModuleID = 'mini-c'
source_filename = "mini-c"

declare i32 @print_int(i32)

declare float @print_float(float)

define i1 @true_plus_true() {
entry:
  ret i1 false
}

define i1 @widening_casts() {
entry:
  %andalloc135 = alloca i1, align 1
  %andalloc131 = alloca i1, align 1
  %andalloc127 = alloca i1, align 1
  %andalloc123 = alloca i1, align 1
  %andalloc119 = alloca i1, align 1
  %andalloc115 = alloca i1, align 1
  %andalloc111 = alloca i1, align 1
  %andalloc107 = alloca i1, align 1
  %andalloc103 = alloca i1, align 1
  %andalloc99 = alloca i1, align 1
  %andalloc95 = alloca i1, align 1
  %andalloc91 = alloca i1, align 1
  %andalloc87 = alloca i1, align 1
  %andalloc83 = alloca i1, align 1
  %andalloc79 = alloca i1, align 1
  %andalloc75 = alloca i1, align 1
  %andalloc71 = alloca i1, align 1
  %andalloc67 = alloca i1, align 1
  %andalloc63 = alloca i1, align 1
  %andalloc59 = alloca i1, align 1
  %andalloc55 = alloca i1, align 1
  %andalloc = alloca i1, align 1
  %bt = alloca i1, align 1
  %bf = alloca i1, align 1
  %i1 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %f1 = alloca float, align 4
  %f4 = alloca float, align 4
  %assign_bi = alloca i32, align 4
  %assign_bf = alloca float, align 4
  %assign_if = alloca float, align 4
  %bin_9i = alloca i1, align 1
  %bin_8i = alloca i32, align 4
  %bin_7i = alloca float, align 4
  %bin_6i = alloca i32, align 4
  %bin_5i = alloca i32, align 4
  %bin_4i = alloca float, align 4
  %bin_31i = alloca float, align 4
  %bin_3i = alloca float, align 4
  %bin_2i = alloca float, align 4
  %bin_1i = alloca float, align 4
  %bin_9 = alloca i1, align 1
  %bin_8 = alloca i32, align 4
  %bin_7 = alloca float, align 4
  %bin_6 = alloca i32, align 4
  %bin_5 = alloca i32, align 4
  %bin_4 = alloca float, align 4
  %bin_31 = alloca float, align 4
  %bin_3 = alloca float, align 4
  %bin_2 = alloca float, align 4
  %bin_1 = alloca float, align 4
  store float 4.000000e+00, ptr %f4, align 4
  store float 1.000000e+00, ptr %f1, align 4
  store i32 3, ptr %i3, align 4
  store i32 1, ptr %i1, align 4
  store i1 false, ptr %bf, align 1
  store i1 true, ptr %bt, align 1
  store float 5.000000e+00, ptr %bin_1, align 4
  store float 5.000000e+00, ptr %bin_2, align 4
  store float 5.000000e+00, ptr %bin_3, align 4
  store float 4.000000e+00, ptr %bin_31, align 4
  store float 4.000000e+00, ptr %bin_4, align 4
  store i32 4, ptr %bin_5, align 4
  store i32 4, ptr %bin_6, align 4
  store float 2.000000e+00, ptr %bin_7, align 4
  store i32 2, ptr %bin_8, align 4
  store i1 false, ptr %bin_9, align 1
  store float 1.000000e+00, ptr %assign_if, align 4
  store float 1.000000e+00, ptr %assign_bf, align 4
  store i32 1, ptr %assign_bi, align 4
  %f41 = load float, ptr %f4, align 4
  %f12 = load float, ptr %f1, align 4
  %addtmp = fadd float %f41, %f12
  store float %addtmp, ptr %bin_1i, align 4
  %f43 = load float, ptr %f4, align 4
  %i14 = load i32, ptr %i1, align 4
  %widenIToF = sitofp i32 %i14 to float
  %addtmp5 = fadd float %f43, %widenIToF
  store float %addtmp5, ptr %bin_2i, align 4
  %f46 = load float, ptr %f4, align 4
  %bt7 = load i1, ptr %bt, align 1
  %widenBToF = uitofp i1 %bt7 to float
  %addtmp8 = fadd float %f46, %widenBToF
  store float %addtmp8, ptr %bin_3i, align 4
  %f49 = load float, ptr %f4, align 4
  %bf10 = load i1, ptr %bf, align 1
  %widenBToF11 = uitofp i1 %bf10 to float
  %addtmp12 = fadd float %f49, %widenBToF11
  store float %addtmp12, ptr %bin_31i, align 4
  %i313 = load i32, ptr %i3, align 4
  %f114 = load float, ptr %f1, align 4
  %widenIToF15 = sitofp i32 %i313 to float
  %addtmp16 = fadd float %widenIToF15, %f114
  store float %addtmp16, ptr %bin_4i, align 4
  %i317 = load i32, ptr %i3, align 4
  %i118 = load i32, ptr %i1, align 4
  %addtmp19 = add i32 %i317, %i118
  store i32 %addtmp19, ptr %bin_5i, align 4
  %i320 = load i32, ptr %i3, align 4
  %bt21 = load i1, ptr %bt, align 1
  %widenBToUI = sext i1 %bt21 to i32
  %twoscomp = sub i32 0, %widenBToUI
  %addtmp22 = add i32 %i320, %twoscomp
  store i32 %addtmp22, ptr %bin_6i, align 4
  %bt23 = load i1, ptr %bt, align 1
  %f124 = load float, ptr %f1, align 4
  %widenBToF25 = uitofp i1 %bt23 to float
  %addtmp26 = fadd float %widenBToF25, %f124
  store float %addtmp26, ptr %bin_7i, align 4
  %bt27 = load i1, ptr %bt, align 1
  %i128 = load i32, ptr %i1, align 4
  %widenBToUI29 = sext i1 %bt27 to i32
  %twoscomp30 = sub i32 0, %widenBToUI29
  %addtmp31 = add i32 %twoscomp30, %i128
  store i32 %addtmp31, ptr %bin_8i, align 4
  %bt32 = load i1, ptr %bt, align 1
  %bt33 = load i1, ptr %bt, align 1
  %subtmp = sub i1 %bt32, %bt33
  store i1 %subtmp, ptr %bin_9i, align 1
  %bin_134 = load float, ptr %bin_1, align 4
  %calltmp = call float @print_float(float %bin_134)
  %bin_235 = load float, ptr %bin_2, align 4
  %calltmp36 = call float @print_float(float %bin_235)
  %bin_337 = load float, ptr %bin_3, align 4
  %calltmp38 = call float @print_float(float %bin_337)
  %bin_3139 = load float, ptr %bin_31, align 4
  %calltmp40 = call float @print_float(float %bin_3139)
  %bin_441 = load float, ptr %bin_4, align 4
  %calltmp42 = call float @print_float(float %bin_441)
  %bin_543 = load i32, ptr %bin_5, align 4
  %calltmp44 = call i32 @print_int(i32 %bin_543)
  %bin_645 = load i32, ptr %bin_6, align 4
  %calltmp46 = call i32 @print_int(i32 %bin_645)
  %bin_747 = load float, ptr %bin_7, align 4
  %calltmp48 = call float @print_float(float %bin_747)
  %bin_849 = load i32, ptr %bin_8, align 4
  %calltmp50 = call i32 @print_int(i32 %bin_849)
  %bin_951 = load i1, ptr %bin_9, align 1
  %widenBToUI52 = sext i1 %bin_951 to i32
  %twoscomp53 = sub i32 0, %widenBToUI52
  %calltmp54 = call i32 @print_int(i32 %twoscomp53)
  %bin_1139 = load float, ptr %bin_1, align 4
  %eqtmp = fcmp oeq float %bin_1139, 5.000000e+00
  %andlazycond = icmp ne i1 %eqtmp, false
  br i1 %andlazycond, label %andevalrhs136, label %andlazy137

andevalrhs:                                       ; preds = %andret58
  %assign_bi244 = load i32, ptr %assign_bi, align 4
  %eqtmp245 = icmp eq i32 %assign_bi244, 1
  %andtmp246 = and i1 %andtmp242, %eqtmp245
  store i1 %andtmp246, ptr %andalloc, align 1
  br label %andret

andlazy:                                          ; preds = %andret58
  store i1 %andtmp242, ptr %andalloc, align 1
  br label %andret

andret:                                           ; preds = %andlazy, %andevalrhs
  %andtmp247 = load i1, ptr %andalloc, align 1
  ret i1 %andtmp247

andevalrhs56:                                     ; preds = %andret62
  %assign_bf239 = load float, ptr %assign_bf, align 4
  %eqtmp240 = fcmp oeq float %assign_bf239, 1.000000e+00
  %andtmp241 = and i1 %andtmp237, %eqtmp240
  store i1 %andtmp241, ptr %andalloc55, align 1
  br label %andret58

andlazy57:                                        ; preds = %andret62
  store i1 %andtmp237, ptr %andalloc55, align 1
  br label %andret58

andret58:                                         ; preds = %andlazy57, %andevalrhs56
  %andtmp242 = load i1, ptr %andalloc55, align 1
  %andlazycond243 = icmp ne i1 %andtmp242, false
  br i1 %andlazycond243, label %andevalrhs, label %andlazy

andevalrhs60:                                     ; preds = %andret66
  %assign_if234 = load float, ptr %assign_if, align 4
  %eqtmp235 = fcmp oeq float %assign_if234, 1.000000e+00
  %andtmp236 = and i1 %andtmp232, %eqtmp235
  store i1 %andtmp236, ptr %andalloc59, align 1
  br label %andret62

andlazy61:                                        ; preds = %andret66
  store i1 %andtmp232, ptr %andalloc59, align 1
  br label %andret62

andret62:                                         ; preds = %andlazy61, %andevalrhs60
  %andtmp237 = load i1, ptr %andalloc59, align 1
  %andlazycond238 = icmp ne i1 %andtmp237, false
  br i1 %andlazycond238, label %andevalrhs56, label %andlazy57

andevalrhs64:                                     ; preds = %andret70
  %bin_9i229 = load i1, ptr %bin_9i, align 1
  %eqtmp230 = icmp eq i1 %bin_9i229, false
  %andtmp231 = and i1 %andtmp227, %eqtmp230
  store i1 %andtmp231, ptr %andalloc63, align 1
  br label %andret66

andlazy65:                                        ; preds = %andret70
  store i1 %andtmp227, ptr %andalloc63, align 1
  br label %andret66

andret66:                                         ; preds = %andlazy65, %andevalrhs64
  %andtmp232 = load i1, ptr %andalloc63, align 1
  %andlazycond233 = icmp ne i1 %andtmp232, false
  br i1 %andlazycond233, label %andevalrhs60, label %andlazy61

andevalrhs68:                                     ; preds = %andret74
  %bin_8i224 = load i32, ptr %bin_8i, align 4
  %eqtmp225 = icmp eq i32 %bin_8i224, 2
  %andtmp226 = and i1 %andtmp222, %eqtmp225
  store i1 %andtmp226, ptr %andalloc67, align 1
  br label %andret70

andlazy69:                                        ; preds = %andret74
  store i1 %andtmp222, ptr %andalloc67, align 1
  br label %andret70

andret70:                                         ; preds = %andlazy69, %andevalrhs68
  %andtmp227 = load i1, ptr %andalloc67, align 1
  %andlazycond228 = icmp ne i1 %andtmp227, false
  br i1 %andlazycond228, label %andevalrhs64, label %andlazy65

andevalrhs72:                                     ; preds = %andret78
  %bin_7i219 = load float, ptr %bin_7i, align 4
  %eqtmp220 = fcmp oeq float %bin_7i219, 2.000000e+00
  %andtmp221 = and i1 %andtmp217, %eqtmp220
  store i1 %andtmp221, ptr %andalloc71, align 1
  br label %andret74

andlazy73:                                        ; preds = %andret78
  store i1 %andtmp217, ptr %andalloc71, align 1
  br label %andret74

andret74:                                         ; preds = %andlazy73, %andevalrhs72
  %andtmp222 = load i1, ptr %andalloc71, align 1
  %andlazycond223 = icmp ne i1 %andtmp222, false
  br i1 %andlazycond223, label %andevalrhs68, label %andlazy69

andevalrhs76:                                     ; preds = %andret82
  %bin_6i214 = load i32, ptr %bin_6i, align 4
  %eqtmp215 = icmp eq i32 %bin_6i214, 4
  %andtmp216 = and i1 %andtmp212, %eqtmp215
  store i1 %andtmp216, ptr %andalloc75, align 1
  br label %andret78

andlazy77:                                        ; preds = %andret82
  store i1 %andtmp212, ptr %andalloc75, align 1
  br label %andret78

andret78:                                         ; preds = %andlazy77, %andevalrhs76
  %andtmp217 = load i1, ptr %andalloc75, align 1
  %andlazycond218 = icmp ne i1 %andtmp217, false
  br i1 %andlazycond218, label %andevalrhs72, label %andlazy73

andevalrhs80:                                     ; preds = %andret86
  %bin_5i209 = load i32, ptr %bin_5i, align 4
  %eqtmp210 = icmp eq i32 %bin_5i209, 4
  %andtmp211 = and i1 %andtmp207, %eqtmp210
  store i1 %andtmp211, ptr %andalloc79, align 1
  br label %andret82

andlazy81:                                        ; preds = %andret86
  store i1 %andtmp207, ptr %andalloc79, align 1
  br label %andret82

andret82:                                         ; preds = %andlazy81, %andevalrhs80
  %andtmp212 = load i1, ptr %andalloc79, align 1
  %andlazycond213 = icmp ne i1 %andtmp212, false
  br i1 %andlazycond213, label %andevalrhs76, label %andlazy77

andevalrhs84:                                     ; preds = %andret90
  %bin_4i204 = load float, ptr %bin_4i, align 4
  %eqtmp205 = fcmp oeq float %bin_4i204, 4.000000e+00
  %andtmp206 = and i1 %andtmp202, %eqtmp205
  store i1 %andtmp206, ptr %andalloc83, align 1
  br label %andret86

andlazy85:                                        ; preds = %andret90
  store i1 %andtmp202, ptr %andalloc83, align 1
  br label %andret86

andret86:                                         ; preds = %andlazy85, %andevalrhs84
  %andtmp207 = load i1, ptr %andalloc83, align 1
  %andlazycond208 = icmp ne i1 %andtmp207, false
  br i1 %andlazycond208, label %andevalrhs80, label %andlazy81

andevalrhs88:                                     ; preds = %andret94
  %bin_31i199 = load float, ptr %bin_31i, align 4
  %eqtmp200 = fcmp oeq float %bin_31i199, 4.000000e+00
  %andtmp201 = and i1 %andtmp197, %eqtmp200
  store i1 %andtmp201, ptr %andalloc87, align 1
  br label %andret90

andlazy89:                                        ; preds = %andret94
  store i1 %andtmp197, ptr %andalloc87, align 1
  br label %andret90

andret90:                                         ; preds = %andlazy89, %andevalrhs88
  %andtmp202 = load i1, ptr %andalloc87, align 1
  %andlazycond203 = icmp ne i1 %andtmp202, false
  br i1 %andlazycond203, label %andevalrhs84, label %andlazy85

andevalrhs92:                                     ; preds = %andret98
  %bin_3i194 = load float, ptr %bin_3i, align 4
  %eqtmp195 = fcmp oeq float %bin_3i194, 5.000000e+00
  %andtmp196 = and i1 %andtmp192, %eqtmp195
  store i1 %andtmp196, ptr %andalloc91, align 1
  br label %andret94

andlazy93:                                        ; preds = %andret98
  store i1 %andtmp192, ptr %andalloc91, align 1
  br label %andret94

andret94:                                         ; preds = %andlazy93, %andevalrhs92
  %andtmp197 = load i1, ptr %andalloc91, align 1
  %andlazycond198 = icmp ne i1 %andtmp197, false
  br i1 %andlazycond198, label %andevalrhs88, label %andlazy89

andevalrhs96:                                     ; preds = %andret102
  %bin_2i189 = load float, ptr %bin_2i, align 4
  %eqtmp190 = fcmp oeq float %bin_2i189, 5.000000e+00
  %andtmp191 = and i1 %andtmp187, %eqtmp190
  store i1 %andtmp191, ptr %andalloc95, align 1
  br label %andret98

andlazy97:                                        ; preds = %andret102
  store i1 %andtmp187, ptr %andalloc95, align 1
  br label %andret98

andret98:                                         ; preds = %andlazy97, %andevalrhs96
  %andtmp192 = load i1, ptr %andalloc95, align 1
  %andlazycond193 = icmp ne i1 %andtmp192, false
  br i1 %andlazycond193, label %andevalrhs92, label %andlazy93

andevalrhs100:                                    ; preds = %andret106
  %bin_1i184 = load float, ptr %bin_1i, align 4
  %eqtmp185 = fcmp oeq float %bin_1i184, 5.000000e+00
  %andtmp186 = and i1 %andtmp182, %eqtmp185
  store i1 %andtmp186, ptr %andalloc99, align 1
  br label %andret102

andlazy101:                                       ; preds = %andret106
  store i1 %andtmp182, ptr %andalloc99, align 1
  br label %andret102

andret102:                                        ; preds = %andlazy101, %andevalrhs100
  %andtmp187 = load i1, ptr %andalloc99, align 1
  %andlazycond188 = icmp ne i1 %andtmp187, false
  br i1 %andlazycond188, label %andevalrhs96, label %andlazy97

andevalrhs104:                                    ; preds = %andret110
  %bin_9179 = load i1, ptr %bin_9, align 1
  %eqtmp180 = icmp eq i1 %bin_9179, false
  %andtmp181 = and i1 %andtmp177, %eqtmp180
  store i1 %andtmp181, ptr %andalloc103, align 1
  br label %andret106

andlazy105:                                       ; preds = %andret110
  store i1 %andtmp177, ptr %andalloc103, align 1
  br label %andret106

andret106:                                        ; preds = %andlazy105, %andevalrhs104
  %andtmp182 = load i1, ptr %andalloc103, align 1
  %andlazycond183 = icmp ne i1 %andtmp182, false
  br i1 %andlazycond183, label %andevalrhs100, label %andlazy101

andevalrhs108:                                    ; preds = %andret114
  %bin_8174 = load i32, ptr %bin_8, align 4
  %eqtmp175 = icmp eq i32 %bin_8174, 2
  %andtmp176 = and i1 %andtmp172, %eqtmp175
  store i1 %andtmp176, ptr %andalloc107, align 1
  br label %andret110

andlazy109:                                       ; preds = %andret114
  store i1 %andtmp172, ptr %andalloc107, align 1
  br label %andret110

andret110:                                        ; preds = %andlazy109, %andevalrhs108
  %andtmp177 = load i1, ptr %andalloc107, align 1
  %andlazycond178 = icmp ne i1 %andtmp177, false
  br i1 %andlazycond178, label %andevalrhs104, label %andlazy105

andevalrhs112:                                    ; preds = %andret118
  %bin_7169 = load float, ptr %bin_7, align 4
  %eqtmp170 = fcmp oeq float %bin_7169, 2.000000e+00
  %andtmp171 = and i1 %andtmp167, %eqtmp170
  store i1 %andtmp171, ptr %andalloc111, align 1
  br label %andret114

andlazy113:                                       ; preds = %andret118
  store i1 %andtmp167, ptr %andalloc111, align 1
  br label %andret114

andret114:                                        ; preds = %andlazy113, %andevalrhs112
  %andtmp172 = load i1, ptr %andalloc111, align 1
  %andlazycond173 = icmp ne i1 %andtmp172, false
  br i1 %andlazycond173, label %andevalrhs108, label %andlazy109

andevalrhs116:                                    ; preds = %andret122
  %bin_6164 = load i32, ptr %bin_6, align 4
  %eqtmp165 = icmp eq i32 %bin_6164, 4
  %andtmp166 = and i1 %andtmp162, %eqtmp165
  store i1 %andtmp166, ptr %andalloc115, align 1
  br label %andret118

andlazy117:                                       ; preds = %andret122
  store i1 %andtmp162, ptr %andalloc115, align 1
  br label %andret118

andret118:                                        ; preds = %andlazy117, %andevalrhs116
  %andtmp167 = load i1, ptr %andalloc115, align 1
  %andlazycond168 = icmp ne i1 %andtmp167, false
  br i1 %andlazycond168, label %andevalrhs112, label %andlazy113

andevalrhs120:                                    ; preds = %andret126
  %bin_5159 = load i32, ptr %bin_5, align 4
  %eqtmp160 = icmp eq i32 %bin_5159, 4
  %andtmp161 = and i1 %andtmp157, %eqtmp160
  store i1 %andtmp161, ptr %andalloc119, align 1
  br label %andret122

andlazy121:                                       ; preds = %andret126
  store i1 %andtmp157, ptr %andalloc119, align 1
  br label %andret122

andret122:                                        ; preds = %andlazy121, %andevalrhs120
  %andtmp162 = load i1, ptr %andalloc119, align 1
  %andlazycond163 = icmp ne i1 %andtmp162, false
  br i1 %andlazycond163, label %andevalrhs116, label %andlazy117

andevalrhs124:                                    ; preds = %andret130
  %bin_4154 = load float, ptr %bin_4, align 4
  %eqtmp155 = fcmp oeq float %bin_4154, 4.000000e+00
  %andtmp156 = and i1 %andtmp152, %eqtmp155
  store i1 %andtmp156, ptr %andalloc123, align 1
  br label %andret126

andlazy125:                                       ; preds = %andret130
  store i1 %andtmp152, ptr %andalloc123, align 1
  br label %andret126

andret126:                                        ; preds = %andlazy125, %andevalrhs124
  %andtmp157 = load i1, ptr %andalloc123, align 1
  %andlazycond158 = icmp ne i1 %andtmp157, false
  br i1 %andlazycond158, label %andevalrhs120, label %andlazy121

andevalrhs128:                                    ; preds = %andret134
  %bin_31149 = load float, ptr %bin_31, align 4
  %eqtmp150 = fcmp oeq float %bin_31149, 4.000000e+00
  %andtmp151 = and i1 %andtmp147, %eqtmp150
  store i1 %andtmp151, ptr %andalloc127, align 1
  br label %andret130

andlazy129:                                       ; preds = %andret134
  store i1 %andtmp147, ptr %andalloc127, align 1
  br label %andret130

andret130:                                        ; preds = %andlazy129, %andevalrhs128
  %andtmp152 = load i1, ptr %andalloc127, align 1
  %andlazycond153 = icmp ne i1 %andtmp152, false
  br i1 %andlazycond153, label %andevalrhs124, label %andlazy125

andevalrhs132:                                    ; preds = %andret138
  %bin_3144 = load float, ptr %bin_3, align 4
  %eqtmp145 = fcmp oeq float %bin_3144, 5.000000e+00
  %andtmp146 = and i1 %andtmp142, %eqtmp145
  store i1 %andtmp146, ptr %andalloc131, align 1
  br label %andret134

andlazy133:                                       ; preds = %andret138
  store i1 %andtmp142, ptr %andalloc131, align 1
  br label %andret134

andret134:                                        ; preds = %andlazy133, %andevalrhs132
  %andtmp147 = load i1, ptr %andalloc131, align 1
  %andlazycond148 = icmp ne i1 %andtmp147, false
  br i1 %andlazycond148, label %andevalrhs128, label %andlazy129

andevalrhs136:                                    ; preds = %entry
  %bin_2140 = load float, ptr %bin_2, align 4
  %eqtmp141 = fcmp oeq float %bin_2140, 5.000000e+00
  %andtmp = and i1 %eqtmp, %eqtmp141
  store i1 %andtmp, ptr %andalloc135, align 1
  br label %andret138

andlazy137:                                       ; preds = %entry
  store i1 %eqtmp, ptr %andalloc135, align 1
  br label %andret138

andret138:                                        ; preds = %andlazy137, %andevalrhs136
  %andtmp142 = load i1, ptr %andalloc135, align 1
  %andlazycond143 = icmp ne i1 %andtmp142, false
  br i1 %andlazycond143, label %andevalrhs132, label %andlazy133
}
