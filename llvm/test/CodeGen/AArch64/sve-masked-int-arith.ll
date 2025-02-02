; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64--linux-gnu -mattr=+sve < %s | FileCheck %s

;
; Masked Additions
;

define <vscale x 16 x i8> @masked_add_nxv16i8(<vscale x 16 x i8> %a, <vscale x 16 x i8> %b, <vscale x 16 x i1> %mask) {
; CHECK-LABEL: masked_add_nxv16i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add z0.b, p0/m, z0.b, z1.b
; CHECK-NEXT:    ret
  %select = select <vscale x 16 x i1> %mask, <vscale x 16 x i8> %b, <vscale x 16 x i8> zeroinitializer
  %ret = add <vscale x 16 x i8> %a, %select
  ret <vscale x 16 x i8> %ret
}

define <vscale x 8 x i16> @masked_add_nxv8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b, <vscale x 8 x i1> %mask) {
; CHECK-LABEL: masked_add_nxv8i16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add z0.h, p0/m, z0.h, z1.h
; CHECK-NEXT:    ret
  %select = select <vscale x 8 x i1> %mask, <vscale x 8 x i16> %b, <vscale x 8 x i16> zeroinitializer
  %ret = add <vscale x 8 x i16> %a, %select
  ret <vscale x 8 x i16> %ret
}

define <vscale x 4 x i32> @masked_add_nxv4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b, <vscale x 4 x i1> %mask) {
; CHECK-LABEL: masked_add_nxv4i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT:    ret
  %select = select <vscale x 4 x i1> %mask, <vscale x 4 x i32> %b, <vscale x 4 x i32> zeroinitializer
  %ret = add <vscale x 4 x i32> %a, %select
  ret <vscale x 4 x i32> %ret
}

define <vscale x 2 x i64> @masked_add_nxv2i64(<vscale x 2 x i64> %a, <vscale x 2 x i64> %b, <vscale x 2 x i1> %mask) {
; CHECK-LABEL: masked_add_nxv2i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    add z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT:    ret
  %select = select <vscale x 2 x i1> %mask, <vscale x 2 x i64> %b, <vscale x 2 x i64> zeroinitializer
  %ret = add <vscale x 2 x i64> %a, %select
  ret <vscale x 2 x i64> %ret
}

;
; Masked Subtractions
;

define <vscale x 16 x i8> @masked_sub_nxv16i8(<vscale x 16 x i8> %a, <vscale x 16 x i8> %b, <vscale x 16 x i1> %mask) {
; CHECK-LABEL: masked_sub_nxv16i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    sub z0.b, p0/m, z0.b, z1.b
; CHECK-NEXT:    ret
  %select = select <vscale x 16 x i1> %mask, <vscale x 16 x i8> %b, <vscale x 16 x i8> zeroinitializer
  %ret = sub <vscale x 16 x i8> %a, %select
  ret <vscale x 16 x i8> %ret
}

define <vscale x 8 x i16> @masked_sub_nxv8i16(<vscale x 8 x i16> %a, <vscale x 8 x i16> %b, <vscale x 8 x i1> %mask) {
; CHECK-LABEL: masked_sub_nxv8i16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    sub z0.h, p0/m, z0.h, z1.h
; CHECK-NEXT:    ret
  %select = select <vscale x 8 x i1> %mask, <vscale x 8 x i16> %b, <vscale x 8 x i16> zeroinitializer
  %ret = sub <vscale x 8 x i16> %a, %select
  ret <vscale x 8 x i16> %ret
}

define <vscale x 4 x i32> @masked_sub_nxv4i32(<vscale x 4 x i32> %a, <vscale x 4 x i32> %b, <vscale x 4 x i1> %mask) {
; CHECK-LABEL: masked_sub_nxv4i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    sub z0.s, p0/m, z0.s, z1.s
; CHECK-NEXT:    ret
  %select = select <vscale x 4 x i1> %mask, <vscale x 4 x i32> %b, <vscale x 4 x i32> zeroinitializer
  %ret = sub <vscale x 4 x i32> %a, %select
  ret <vscale x 4 x i32> %ret
}

define <vscale x 2 x i64> @masked_sub_nxv2i64(<vscale x 2 x i64> %a, <vscale x 2 x i64> %b, <vscale x 2 x i1> %mask) {
; CHECK-LABEL: masked_sub_nxv2i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    sub z0.d, p0/m, z0.d, z1.d
; CHECK-NEXT:    ret
  %select = select <vscale x 2 x i1> %mask, <vscale x 2 x i64> %b, <vscale x 2 x i64> zeroinitializer
  %ret = sub <vscale x 2 x i64> %a, %select
  ret <vscale x 2 x i64> %ret
}
