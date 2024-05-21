; ModuleID = '/home/cristi/Documents/ACES/RC-Project/HLS/work/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_LinearImageFilter_ir(float* noalias nocapture nonnull "maxi" %image_out, float* noalias nocapture nonnull readonly "maxi" %image_in, i32 %rows, i32 %cols, float* noalias nocapture nonnull readonly "maxi" %kernel, i32 %kernel_size, i32 %stride_row, i32 %stride_col, i8 zeroext %padding) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 100000000)
  %image_out_copy = bitcast i8* %malloccall to [25000000 x float]*
  %malloccall1 = tail call i8* @malloc(i64 100000000)
  %image_in_copy = bitcast i8* %malloccall1 to [25000000 x float]*
  %kernel_copy = alloca [200 x float], align 512
  %0 = bitcast float* %image_out to [25000000 x float]*
  %1 = bitcast float* %image_in to [25000000 x float]*
  %2 = bitcast float* %kernel to [200 x float]*
  call fastcc void @copy_in([25000000 x float]* nonnull %0, [25000000 x float]* %image_out_copy, [25000000 x float]* nonnull %1, [25000000 x float]* %image_in_copy, [200 x float]* nonnull %2, [200 x float]* nonnull align 512 %kernel_copy)
  call void @apatb_LinearImageFilter_hw([25000000 x float]* %image_out_copy, [25000000 x float]* %image_in_copy, i32 %rows, i32 %cols, [200 x float]* %kernel_copy, i32 %kernel_size, i32 %stride_row, i32 %stride_col, i8 %padding)
  call void @copy_back([25000000 x float]* %0, [25000000 x float]* %image_out_copy, [25000000 x float]* %1, [25000000 x float]* %image_in_copy, [200 x float]* %2, [200 x float]* %kernel_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([25000000 x float]* noalias readonly, [25000000 x float]* noalias, [25000000 x float]* noalias readonly, [25000000 x float]* noalias, [200 x float]* noalias readonly, [200 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* %1, [25000000 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* %3, [25000000 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a200f32([200 x float]* align 512 %5, [200 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* noalias %dst, [25000000 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [25000000 x float]* %dst, null
  %1 = icmp eq [25000000 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a25000000f32([25000000 x float]* nonnull %dst, [25000000 x float]* nonnull %src, i64 25000000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a25000000f32([25000000 x float]* %dst, [25000000 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [25000000 x float]* %src, null
  %1 = icmp eq [25000000 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [25000000 x float], [25000000 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [25000000 x float], [25000000 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a200f32([200 x float]* noalias align 512 %dst, [200 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [200 x float]* %dst, null
  %1 = icmp eq [200 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a200f32([200 x float]* nonnull %dst, [200 x float]* nonnull %src, i64 200)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a200f32([200 x float]* %dst, [200 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [200 x float]* %src, null
  %1 = icmp eq [200 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [200 x float], [200 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [200 x float], [200 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([25000000 x float]* noalias, [25000000 x float]* noalias readonly, [25000000 x float]* noalias, [25000000 x float]* noalias readonly, [200 x float]* noalias, [200 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* %0, [25000000 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* %2, [25000000 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a200f32([200 x float]* %4, [200 x float]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_LinearImageFilter_hw([25000000 x float]*, [25000000 x float]*, i32, i32, [200 x float]*, i32, i32, i32, i8)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([25000000 x float]* noalias, [25000000 x float]* noalias readonly, [25000000 x float]* noalias, [25000000 x float]* noalias readonly, [200 x float]* noalias, [200 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a25000000f32([25000000 x float]* %0, [25000000 x float]* %1)
  ret void
}

define void @LinearImageFilter_hw_stub_wrapper([25000000 x float]*, [25000000 x float]*, i32, i32, [200 x float]*, i32, i32, i32, i8) #5 {
entry:
  call void @copy_out([25000000 x float]* null, [25000000 x float]* %0, [25000000 x float]* null, [25000000 x float]* %1, [200 x float]* null, [200 x float]* %4)
  %9 = bitcast [25000000 x float]* %0 to float*
  %10 = bitcast [25000000 x float]* %1 to float*
  %11 = bitcast [200 x float]* %4 to float*
  call void @LinearImageFilter_hw_stub(float* %9, float* %10, i32 %2, i32 %3, float* %11, i32 %5, i32 %6, i32 %7, i8 %8)
  call void @copy_in([25000000 x float]* null, [25000000 x float]* %0, [25000000 x float]* null, [25000000 x float]* %1, [200 x float]* null, [200 x float]* %4)
  ret void
}

declare void @LinearImageFilter_hw_stub(float*, float*, i32, i32, float*, i32, i32, i32, i8)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
