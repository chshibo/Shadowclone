; ModuleID = 'refbuf.c.rand.4P2.bc'
source_filename = "refbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@line = internal global [16 x i16] zeroinitializer, align 16
@top_pic = common dso_local global %struct.Picture* null, align 8
@bottom_pic = common dso_local global %struct.Picture* null, align 8
@frame_pic = common dso_local global %struct.Picture* null, align 8
@frame_pic2 = common dso_local global %struct.Picture* null, align 8
@frame_pic3 = common dso_local global %struct.Picture* null, align 8
@imgY_org = common dso_local global i16** null, align 8
@imgUV_org = common dso_local global i16*** null, align 8
@img4Y_tmp = common dso_local global i32** null, align 8
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@me_tot_time = common dso_local global i32 0, align 4
@me_time = common dso_local global i32 0, align 4
@active_pps = common dso_local global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common dso_local global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common dso_local global i32 0, align 4
@MBPairIsField = common dso_local global i32 0, align 4
@wp_weight = common dso_local global i32*** null, align 8
@wp_offset = common dso_local global i32*** null, align 8
@wbp_weight = common dso_local global i32**** null, align 8
@luma_log_weight_denom = common dso_local global i32 0, align 4
@chroma_log_weight_denom = common dso_local global i32 0, align 4
@wp_luma_round = common dso_local global i32 0, align 4
@wp_chroma_round = common dso_local global i32 0, align 4
@imgY_org_top = common dso_local global i16** null, align 8
@imgY_org_bot = common dso_local global i16** null, align 8
@imgUV_org_top = common dso_local global i16*** null, align 8
@imgUV_org_bot = common dso_local global i16*** null, align 8
@imgY_org_frm = common dso_local global i16** null, align 8
@imgUV_org_frm = common dso_local global i16*** null, align 8
@imgY_com = common dso_local global i16** null, align 8
@imgUV_com = common dso_local global i16*** null, align 8
@direct_ref_idx = common dso_local global i16*** null, align 8
@direct_pdir = common dso_local global i16** null, align 8
@pixel_map = common dso_local global i8** null, align 8
@refresh_map = common dso_local global i8** null, align 8
@intras = common dso_local global i32 0, align 4
@Iframe_ctr = common dso_local global i32 0, align 4
@Pframe_ctr = common dso_local global i32 0, align 4
@Bframe_ctr = common dso_local global i32 0, align 4
@frame_no = common dso_local global i32 0, align 4
@nextP_tr_fld = common dso_local global i32 0, align 4
@nextP_tr_frm = common dso_local global i32 0, align 4
@tot_time = common dso_local global i32 0, align 4
@errortext = common dso_local global [300 x i8] zeroinitializer, align 16
@resTrans_R = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common dso_local global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB = common dso_local global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@dc_level = common dso_local global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level_temp = common dso_local global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common dso_local global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common dso_local global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@b8_ipredmode8x8 = common dso_local global [4 x [4 x i32]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common dso_local global [16 x i32] zeroinitializer, align 16
@gop_structure = common dso_local global %struct.GOP_DATA* null, align 8
@rdopt = common dso_local global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local global %struct._IO_FILE* null, align 8
@p_log = common dso_local global %struct._IO_FILE* null, align 8
@p_trace = common dso_local global %struct._IO_FILE* null, align 8
@p_in = common dso_local global i32 0, align 4
@p_dec = common dso_local global i32 0, align 4
@glob_remapping_of_pic_nums_idc_l0 = common dso_local global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common dso_local global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common dso_local global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common dso_local global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common dso_local global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common dso_local global [20 x i32] zeroinitializer, align 16
@Bytes_After_Header = common dso_local global i32 0, align 4
@rpc_bytes_to_go = common dso_local global i32 0, align 4
@rpc_bits_to_go = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_14(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_PutPel_14.3, label %ctrl0

func_PutPel_14.3:                                 ; preds = %rand_bb
  call void @PutPel_14.3(i16** %Pic, i32 %y, i32 %x, i16 %val)
  ret void

func_PutPel_14.23:                                ; preds = %ctrl0
  call void @PutPel_14.23(i16** %Pic, i32 %y, i32 %x, i16 %val)
  ret void

func_PutPel_14.28:                                ; preds = %ctrl1
  call void @PutPel_14.28(i16** %Pic, i32 %y, i32 %x, i16 %val)
  ret void

func_PutPel_14.31:                                ; preds = %ctrl1
  call void @PutPel_14.31(i16** %Pic, i32 %y, i32 %x, i16 %val)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_PutPel_14.23, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_PutPel_14.28, label %func_PutPel_14.31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_11(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_PutPel_11.5, label %ctrl0

func_PutPel_11.5:                                 ; preds = %rand_bb
  call void @PutPel_11.5(i16* %Pic, i32 %y, i32 %x, i16 %val, i32 %width)
  ret void

func_PutPel_11.15:                                ; preds = %ctrl0
  call void @PutPel_11.15(i16* %Pic, i32 %y, i32 %x, i16 %val, i32 %width)
  ret void

func_PutPel_11.22:                                ; preds = %ctrl1
  call void @PutPel_11.22(i16* %Pic, i32 %y, i32 %x, i16 %val, i32 %width)
  ret void

func_PutPel_11.24:                                ; preds = %ctrl1
  call void @PutPel_11.24(i16* %Pic, i32 %y, i32 %x, i16 %val, i32 %width)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_PutPel_11.15, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_PutPel_11.22, label %func_PutPel_11.24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_FastLine16Y_11.4, label %ctrl0

func_FastLine16Y_11.4:                            ; preds = %rand_bb
  %2 = call i16* @FastLine16Y_11.4(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %2

func_FastLine16Y_11.13:                           ; preds = %ctrl0
  %3 = call i16* @FastLine16Y_11.13(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %3

func_FastLine16Y_11.17:                           ; preds = %ctrl1
  %4 = call i16* @FastLine16Y_11.17(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %4

func_FastLine16Y_11.21:                           ; preds = %ctrl1
  %5 = call i16* @FastLine16Y_11.21(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_FastLine16Y_11.13, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_FastLine16Y_11.17, label %func_FastLine16Y_11.21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLine16Y_11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_UMVLine16Y_11.2, label %ctrl0

func_UMVLine16Y_11.2:                             ; preds = %rand_bb
  %2 = call i16* @UMVLine16Y_11.2(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %2

func_UMVLine16Y_11.11:                            ; preds = %ctrl0
  %3 = call i16* @UMVLine16Y_11.11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %3

func_UMVLine16Y_11.26:                            ; preds = %ctrl1
  %4 = call i16* @UMVLine16Y_11.26(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %4

func_UMVLine16Y_11.27:                            ; preds = %ctrl1
  %5 = call i16* @UMVLine16Y_11.27(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_UMVLine16Y_11.11, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_UMVLine16Y_11.26, label %func_UMVLine16Y_11.27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLineX(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_FastLineX.6, label %ctrl0

func_FastLineX.6:                                 ; preds = %rand_bb
  %2 = call i16* @FastLineX.6(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %2

func_FastLineX.8:                                 ; preds = %ctrl0
  %3 = call i16* @FastLineX.8(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %3

func_FastLineX.12:                                ; preds = %ctrl1
  %4 = call i16* @FastLineX.12(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %4

func_FastLineX.14:                                ; preds = %ctrl1
  %5 = call i16* @FastLineX.14(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_FastLineX.8, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_FastLineX.12, label %func_FastLineX.14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLineX(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_UMVLineX.7, label %ctrl0

func_UMVLineX.7:                                  ; preds = %rand_bb
  %2 = call i16* @UMVLineX.7(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %2

func_UMVLineX.19:                                 ; preds = %ctrl0
  %3 = call i16* @UMVLineX.19(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %3

func_UMVLineX.20:                                 ; preds = %ctrl1
  %4 = call i16* @UMVLineX.20(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %4

func_UMVLineX.32:                                 ; preds = %ctrl1
  %5 = call i16* @UMVLineX.32(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16* %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_UMVLineX.19, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_UMVLineX.20, label %func_UMVLineX.32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @UMVPelY_14(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_UMVPelY_14.1, label %ctrl0

func_UMVPelY_14.1:                                ; preds = %rand_bb
  %2 = call i16 @UMVPelY_14.1(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %2

func_UMVPelY_14.16:                               ; preds = %ctrl0
  %3 = call i16 @UMVPelY_14.16(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %3

func_UMVPelY_14.29:                               ; preds = %ctrl1
  %4 = call i16 @UMVPelY_14.29(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %4

func_UMVPelY_14.30:                               ; preds = %ctrl1
  %5 = call i16 @UMVPelY_14.30(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_UMVPelY_14.16, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_UMVPelY_14.29, label %func_UMVPelY_14.30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @FastPelY_14(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_FastPelY_14.9, label %ctrl0

func_FastPelY_14.9:                               ; preds = %rand_bb
  %2 = call i16 @FastPelY_14.9(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %2

func_FastPelY_14.10:                              ; preds = %ctrl0
  %3 = call i16 @FastPelY_14.10(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %3

func_FastPelY_14.18:                              ; preds = %ctrl1
  %4 = call i16 @FastPelY_14.18(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %4

func_FastPelY_14.25:                              ; preds = %ctrl1
  %5 = call i16 @FastPelY_14.25(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width)
  ret i16 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_FastPelY_14.10, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_FastPelY_14.18, label %func_FastPelY_14.25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @UMVPelY_14.1(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %height4 = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %retval = alloca i16, align 2
  %width4 = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 256035307, i32* %canary
  %Pic.addr = alloca i16**, align 8
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %sub = sub nsw i32 %add, 1
  %shl = shl i32 %sub, 2
  store i32 %shl, i32* %width4, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %1, 8
  %sub2 = sub nsw i32 %add1, 1
  %shl3 = shl i32 %sub2, 2
  store i32 %shl3, i32* %height4, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %2, 16
  store i32 %add4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %3, 16
  store i32 %add5, i32* %y.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i16**, i16*** %Pic.addr, align 8
  %7 = load i32, i32* %y.addr, align 4
  %and = and i32 %7, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 %idxprom
  %8 = load i16*, i16** %arrayidx, align 8
  %9 = load i32, i32* %x.addr, align 4
  %and8 = and i32 %9, 3
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %10 = load i16, i16* %arrayidx10, align 2
  store i16 %10, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height4, align 4
  %cmp11 = icmp sgt i32 %11, %12
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %13 = load i16**, i16*** %Pic.addr, align 8
  %14 = load i32, i32* %height4, align 4
  %15 = load i32, i32* %y.addr, align 4
  %and13 = and i32 %15, 3
  %add14 = add nsw i32 %14, %and13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %13, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i32, i32* %x.addr, align 4
  %and17 = and i32 %17, 3
  %idxprom18 = sext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %16, i64 %idxprom18
  %18 = load i16, i16* %arrayidx19, align 2
  store i16 %18, i16* %retval, align 2
  br label %return

if.end20:                                         ; preds = %if.end
  %19 = load i16**, i16*** %Pic.addr, align 8
  %20 = load i32, i32* %y.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds i16*, i16** %19, i64 %idxprom21
  %21 = load i16*, i16** %arrayidx22, align 8
  %22 = load i32, i32* %x.addr, align 4
  %and23 = and i32 %22, 3
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2
  store i16 %23, i16* %retval, align 2
  br label %return

if.end26:                                         ; preds = %entry
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width4, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  %26 = load i32, i32* %y.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.then28
  %27 = load i16**, i16*** %Pic.addr, align 8
  %28 = load i32, i32* %y.addr, align 4
  %and31 = and i32 %28, 3
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds i16*, i16** %27, i64 %idxprom32
  %29 = load i16*, i16** %arrayidx33, align 8
  %30 = load i32, i32* %width4, align 4
  %31 = load i32, i32* %x.addr, align 4
  %and34 = and i32 %31, 3
  %add35 = add nsw i32 %30, %and34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %29, i64 %idxprom36
  %32 = load i16, i16* %arrayidx37, align 2
  store i16 %32, i16* %retval, align 2
  br label %return

if.end38:                                         ; preds = %if.then28
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %height4, align 4
  %cmp39 = icmp sgt i32 %33, %34
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %35 = load i16**, i16*** %Pic.addr, align 8
  %36 = load i32, i32* %height4, align 4
  %37 = load i32, i32* %y.addr, align 4
  %and41 = and i32 %37, 3
  %add42 = add nsw i32 %36, %and41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i16*, i16** %35, i64 %idxprom43
  %38 = load i16*, i16** %arrayidx44, align 8
  %39 = load i32, i32* %width4, align 4
  %40 = load i32, i32* %x.addr, align 4
  %and45 = and i32 %40, 3
  %add46 = add nsw i32 %39, %and45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i16, i16* %38, i64 %idxprom47
  %41 = load i16, i16* %arrayidx48, align 2
  store i16 %41, i16* %retval, align 2
  br label %return

if.end49:                                         ; preds = %if.end38
  %42 = load i16**, i16*** %Pic.addr, align 8
  %43 = load i32, i32* %y.addr, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds i16*, i16** %42, i64 %idxprom50
  %44 = load i16*, i16** %arrayidx51, align 8
  %45 = load i32, i32* %width4, align 4
  %46 = load i32, i32* %x.addr, align 4
  %and52 = and i32 %46, 3
  %add53 = add nsw i32 %45, %and52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom54
  %47 = load i16, i16* %arrayidx55, align 2
  store i16 %47, i16* %retval, align 2
  br label %return

if.end56:                                         ; preds = %if.end26
  %48 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end56
  %49 = load i16**, i16*** %Pic.addr, align 8
  %50 = load i32, i32* %y.addr, align 4
  %and59 = and i32 %50, 3
  %idxprom60 = sext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i16*, i16** %49, i64 %idxprom60
  %51 = load i16*, i16** %arrayidx61, align 8
  %52 = load i32, i32* %x.addr, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %51, i64 %idxprom62
  %53 = load i16, i16* %arrayidx63, align 2
  store i16 %53, i16* %retval, align 2
  br label %return

if.end64:                                         ; preds = %if.end56
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %height4, align 4
  %cmp65 = icmp sgt i32 %54, %55
  br i1 %cmp65, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end64
  %56 = load i16**, i16*** %Pic.addr, align 8
  %57 = load i32, i32* %height4, align 4
  %58 = load i32, i32* %y.addr, align 4
  %and67 = and i32 %58, 3
  %add68 = add nsw i32 %57, %and67
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i16*, i16** %56, i64 %idxprom69
  %59 = load i16*, i16** %arrayidx70, align 8
  %60 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %59, i64 %idxprom71
  %61 = load i16, i16* %arrayidx72, align 2
  store i16 %61, i16* %retval, align 2
  br label %return

if.end73:                                         ; preds = %if.end64
  %62 = load i16**, i16*** %Pic.addr, align 8
  %63 = load i32, i32* %y.addr, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds i16*, i16** %62, i64 %idxprom74
  %64 = load i16*, i16** %arrayidx75, align 8
  %65 = load i32, i32* %x.addr, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds i16, i16* %64, i64 %idxprom76
  %66 = load i16, i16* %arrayidx77, align 2
  store i16 %66, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %67 = load i16, i16* %retval, align 2
  %68 = load i32, i32* %canary
  %69 = icmp eq i32 %68, 256035307
  br i1 %69, label %70, label %func_exit

70:                                               ; preds = %return, %func_exit
  ret i16 %67

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLine16Y_11.2(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %width.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Picy = alloca i16*, align 8
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 384880980, i32* %canary
  %maxx = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %retval = alloca i16*, align 8
  %height.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  store i16* %arrayidx, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %11, 16
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %12, 16
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %13 = load i32, i32* %x.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %14, %15
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Picy, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx22, align 2
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom24
  store i16 %17, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %x.addr, align 4
  %add26 = add nsw i32 %21, 16
  store i32 %add26, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %maxx, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body29, label %for.end37

for.body29:                                       ; preds = %for.cond27
  %24 = load i16*, i16** %Picy, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i16, i16* %24, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %27, %28
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom33
  store i16 %26, i16* %arrayidx34, align 2
  br label %for.inc35

for.inc35:                                        ; preds = %for.body29
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond27

for.end37:                                        ; preds = %for.cond27
  br label %if.end73

if.else:                                          ; preds = %cond.end12
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %sub38 = sub nsw i32 %31, 16
  %cmp39 = icmp sgt i32 %30, %sub38
  br i1 %cmp39, label %if.then40, label %if.else70

if.then40:                                        ; preds = %if.else
  %32 = load i32, i32* %width.addr, align 4
  store i32 %32, i32* %maxx, align 4
  %33 = load i32, i32* %x.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %maxx, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41
  %36 = load i16*, i16** %Picy, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %x.addr, align 4
  %sub46 = sub nsw i32 %39, %40
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom47
  store i16 %38, i16* %arrayidx48, align 2
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond41

for.end51:                                        ; preds = %for.cond41
  %42 = load i32, i32* %x.addr, align 4
  %add52 = add nsw i32 %42, 16
  store i32 %add52, i32* %maxx, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %for.end51
  %45 = load i32, i32* %width.addr, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %for.end51
  %46 = load i32, i32* %x.addr, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %45, %cond.true54 ], [ %46, %cond.false55 ]
  store i32 %cond57, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %cond.end56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %maxx, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %for.body60, label %for.end69

for.body60:                                       ; preds = %for.cond58
  %49 = load i16*, i16** %Picy, align 8
  %50 = load i32, i32* %width.addr, align 4
  %sub61 = sub nsw i32 %50, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %49, i64 %idxprom62
  %51 = load i16, i16* %arrayidx63, align 2
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub64 = sub nsw i32 %52, %53
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom65
  store i16 %51, i16* %arrayidx66, align 2
  br label %for.inc67

for.inc67:                                        ; preds = %for.body60
  %54 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  br label %if.end

if.else70:                                        ; preds = %if.else
  %55 = load i16*, i16** %Picy, align 8
  %56 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %55, i64 %idxprom71
  store i16* %arrayidx72, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end69
  br label %if.end73

if.end73:                                         ; preds = %if.end, %for.end37
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.else70
  %57 = load i16*, i16** %retval, align 8
  %58 = load i32, i32* %canary
  %59 = icmp eq i32 %58, 384880980
  br i1 %59, label %60, label %func_exit

60:                                               ; preds = %return, %func_exit
  ret i16* %57

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_14.3(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %x.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1010653650, i32* %canary
  %val.addr = alloca i16, align 2
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16**, i16*** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  %4 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %4
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 %idxprom2
  store i16 %0, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 1010653650
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLine16Y_11.4(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %height.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 685386209, i32* %canary
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 685386209
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %arrayidx

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_11.5(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 1163721566, i32* %canary
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16*, i16** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  store i16 %0, i16* %arrayidx, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 1163721566
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLineX.6(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1895159639, i32* %canary
  %Pic.addr = alloca i16*, align 8
  %x.addr = alloca i32, align 4
  %dummy.addr = alloca i32, align 4
  store i32 %dummy, i32* %dummy.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %3 = load i32, i32* %x.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext1
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1895159639
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %add.ptr2

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLineX.7(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %size.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 654646878, i32* %canary
  %maxx = alloca i32, align 4
  %retval = alloca i16*, align 8
  %i = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %Picy = alloca i16*, align 8
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  store i16* %add.ptr, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %13, %14
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %Picy, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom
  store i16 %19, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %size.addr, align 4
  %add24 = add nsw i32 %23, %24
  store i32 %add24, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %maxx, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %27 = load i16*, i16** %Picy, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %30, %31
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom31
  store i16 %29, i16* %arrayidx32, align 2
  br label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond25

for.end35:                                        ; preds = %for.cond25
  br label %if.end71

if.else:                                          ; preds = %cond.end12
  %33 = load i32, i32* %x.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %size.addr, align 4
  %sub36 = sub nsw i32 %34, %35
  %cmp37 = icmp sgt i32 %33, %sub36
  br i1 %cmp37, label %if.then38, label %if.else68

if.then38:                                        ; preds = %if.else
  %36 = load i32, i32* %width.addr, align 4
  store i32 %36, i32* %maxx, align 4
  %37 = load i32, i32* %x.addr, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %if.then38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %maxx, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %40 = load i16*, i16** %Picy, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i16, i16* %40, i64 %idxprom42
  %42 = load i16, i16* %arrayidx43, align 2
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub44 = sub nsw i32 %43, %44
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom45
  store i16 %42, i16* %arrayidx46, align 2
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond39

for.end49:                                        ; preds = %for.cond39
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add50 = add nsw i32 %46, %47
  store i32 %add50, i32* %maxx, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp51 = icmp sgt i32 %48, %49
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %for.end49
  %50 = load i32, i32* %width.addr, align 4
  br label %cond.end54

cond.false53:                                     ; preds = %for.end49
  %51 = load i32, i32* %x.addr, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %50, %cond.true52 ], [ %51, %cond.false53 ]
  store i32 %cond55, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %cond.end54
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %maxx, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %54 = load i16*, i16** %Picy, align 8
  %55 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %55, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i16, i16* %54, i64 %idxprom60
  %56 = load i16, i16* %arrayidx61, align 2
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %x.addr, align 4
  %sub62 = sub nsw i32 %57, %58
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom63
  store i16 %56, i16* %arrayidx64, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body58
  %59 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond56

for.end67:                                        ; preds = %for.cond56
  br label %if.end

if.else68:                                        ; preds = %if.else
  %60 = load i16*, i16** %Picy, align 8
  %61 = load i32, i32* %x.addr, align 4
  %idx.ext69 = sext i32 %61 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %60, i64 %idx.ext69
  store i16* %add.ptr70, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end, %for.end35
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.else68
  %62 = load i16*, i16** %retval, align 8
  %63 = load i32, i32* %canary
  %64 = icmp eq i32 %63, 654646878
  br i1 %64, label %65, label %func_exit

65:                                               ; preds = %return, %func_exit
  ret i16* %62

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLineX.8(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1184223480, i32* %canary
  %x.addr = alloca i32, align 4
  %dummy.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %dummy, i32* %dummy.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %3 = load i32, i32* %x.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext1
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1184223480
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %add.ptr2

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @FastPelY_14.9(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 367492881, i32* %canary
  %y.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  %width.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16**, i16*** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %0, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %3 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %3
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 %idxprom2
  %4 = load i16, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 367492881
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret i16 %4

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @FastPelY_14.10(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 754629744, i32* %canary
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16**, i16*** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %0, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %3 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %3
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 %idxprom2
  %4 = load i16, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 754629744
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret i16 %4

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLine16Y_11.11(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Picy = alloca i16*, align 8
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %maxx = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %retval = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 954756882, i32* %canary
  %i = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  store i16* %arrayidx, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %11, 16
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %12, 16
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %13 = load i32, i32* %x.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %14, %15
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Picy, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx22, align 2
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom24
  store i16 %17, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %x.addr, align 4
  %add26 = add nsw i32 %21, 16
  store i32 %add26, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %maxx, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body29, label %for.end37

for.body29:                                       ; preds = %for.cond27
  %24 = load i16*, i16** %Picy, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i16, i16* %24, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %27, %28
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom33
  store i16 %26, i16* %arrayidx34, align 2
  br label %for.inc35

for.inc35:                                        ; preds = %for.body29
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond27

for.end37:                                        ; preds = %for.cond27
  br label %if.end73

if.else:                                          ; preds = %cond.end12
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %sub38 = sub nsw i32 %31, 16
  %cmp39 = icmp sgt i32 %30, %sub38
  br i1 %cmp39, label %if.then40, label %if.else70

if.then40:                                        ; preds = %if.else
  %32 = load i32, i32* %width.addr, align 4
  store i32 %32, i32* %maxx, align 4
  %33 = load i32, i32* %x.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %maxx, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41
  %36 = load i16*, i16** %Picy, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %x.addr, align 4
  %sub46 = sub nsw i32 %39, %40
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom47
  store i16 %38, i16* %arrayidx48, align 2
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond41

for.end51:                                        ; preds = %for.cond41
  %42 = load i32, i32* %x.addr, align 4
  %add52 = add nsw i32 %42, 16
  store i32 %add52, i32* %maxx, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %for.end51
  %45 = load i32, i32* %width.addr, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %for.end51
  %46 = load i32, i32* %x.addr, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %45, %cond.true54 ], [ %46, %cond.false55 ]
  store i32 %cond57, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %cond.end56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %maxx, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %for.body60, label %for.end69

for.body60:                                       ; preds = %for.cond58
  %49 = load i16*, i16** %Picy, align 8
  %50 = load i32, i32* %width.addr, align 4
  %sub61 = sub nsw i32 %50, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %49, i64 %idxprom62
  %51 = load i16, i16* %arrayidx63, align 2
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub64 = sub nsw i32 %52, %53
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom65
  store i16 %51, i16* %arrayidx66, align 2
  br label %for.inc67

for.inc67:                                        ; preds = %for.body60
  %54 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  br label %if.end

if.else70:                                        ; preds = %if.else
  %55 = load i16*, i16** %Picy, align 8
  %56 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %55, i64 %idxprom71
  store i16* %arrayidx72, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end69
  br label %if.end73

if.end73:                                         ; preds = %if.end, %for.end37
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.else70
  %57 = load i16*, i16** %retval, align 8
  %58 = load i32, i32* %canary
  %59 = icmp eq i32 %58, 954756882
  br i1 %59, label %60, label %func_exit

60:                                               ; preds = %return, %func_exit
  ret i16* %57

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLineX.12(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1716837896, i32* %canary
  %dummy.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  store i32 %dummy, i32* %dummy.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %3 = load i32, i32* %x.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext1
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1716837896
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %add.ptr2

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLine16Y_11.13(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 2095997043, i32* %canary
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 2095997043
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %arrayidx

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLineX.14(i32 %dummy, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %dummy.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1842463279, i32* %canary
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %dummy, i32* %dummy.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  %3 = load i32, i32* %x.addr, align 4
  %idx.ext1 = sext i32 %3 to i64
  %add.ptr2 = getelementptr inbounds i16, i16* %add.ptr, i64 %idx.ext1
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1842463279
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %add.ptr2

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_11.15(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %canary = alloca i32
  store i32 159366309, i32* %canary
  %y.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  %width.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16*, i16** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  store i16 %0, i16* %arrayidx, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 159366309
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @UMVPelY_14.16(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 615882409, i32* %canary
  %height4 = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %width4 = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %retval = alloca i16, align 2
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %sub = sub nsw i32 %add, 1
  %shl = shl i32 %sub, 2
  store i32 %shl, i32* %width4, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %1, 8
  %sub2 = sub nsw i32 %add1, 1
  %shl3 = shl i32 %sub2, 2
  store i32 %shl3, i32* %height4, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %2, 16
  store i32 %add4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %3, 16
  store i32 %add5, i32* %y.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i16**, i16*** %Pic.addr, align 8
  %7 = load i32, i32* %y.addr, align 4
  %and = and i32 %7, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 %idxprom
  %8 = load i16*, i16** %arrayidx, align 8
  %9 = load i32, i32* %x.addr, align 4
  %and8 = and i32 %9, 3
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %10 = load i16, i16* %arrayidx10, align 2
  store i16 %10, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height4, align 4
  %cmp11 = icmp sgt i32 %11, %12
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %13 = load i16**, i16*** %Pic.addr, align 8
  %14 = load i32, i32* %height4, align 4
  %15 = load i32, i32* %y.addr, align 4
  %and13 = and i32 %15, 3
  %add14 = add nsw i32 %14, %and13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %13, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i32, i32* %x.addr, align 4
  %and17 = and i32 %17, 3
  %idxprom18 = sext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %16, i64 %idxprom18
  %18 = load i16, i16* %arrayidx19, align 2
  store i16 %18, i16* %retval, align 2
  br label %return

if.end20:                                         ; preds = %if.end
  %19 = load i16**, i16*** %Pic.addr, align 8
  %20 = load i32, i32* %y.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds i16*, i16** %19, i64 %idxprom21
  %21 = load i16*, i16** %arrayidx22, align 8
  %22 = load i32, i32* %x.addr, align 4
  %and23 = and i32 %22, 3
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2
  store i16 %23, i16* %retval, align 2
  br label %return

if.end26:                                         ; preds = %entry
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width4, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  %26 = load i32, i32* %y.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.then28
  %27 = load i16**, i16*** %Pic.addr, align 8
  %28 = load i32, i32* %y.addr, align 4
  %and31 = and i32 %28, 3
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds i16*, i16** %27, i64 %idxprom32
  %29 = load i16*, i16** %arrayidx33, align 8
  %30 = load i32, i32* %width4, align 4
  %31 = load i32, i32* %x.addr, align 4
  %and34 = and i32 %31, 3
  %add35 = add nsw i32 %30, %and34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %29, i64 %idxprom36
  %32 = load i16, i16* %arrayidx37, align 2
  store i16 %32, i16* %retval, align 2
  br label %return

if.end38:                                         ; preds = %if.then28
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %height4, align 4
  %cmp39 = icmp sgt i32 %33, %34
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %35 = load i16**, i16*** %Pic.addr, align 8
  %36 = load i32, i32* %height4, align 4
  %37 = load i32, i32* %y.addr, align 4
  %and41 = and i32 %37, 3
  %add42 = add nsw i32 %36, %and41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i16*, i16** %35, i64 %idxprom43
  %38 = load i16*, i16** %arrayidx44, align 8
  %39 = load i32, i32* %width4, align 4
  %40 = load i32, i32* %x.addr, align 4
  %and45 = and i32 %40, 3
  %add46 = add nsw i32 %39, %and45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i16, i16* %38, i64 %idxprom47
  %41 = load i16, i16* %arrayidx48, align 2
  store i16 %41, i16* %retval, align 2
  br label %return

if.end49:                                         ; preds = %if.end38
  %42 = load i16**, i16*** %Pic.addr, align 8
  %43 = load i32, i32* %y.addr, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds i16*, i16** %42, i64 %idxprom50
  %44 = load i16*, i16** %arrayidx51, align 8
  %45 = load i32, i32* %width4, align 4
  %46 = load i32, i32* %x.addr, align 4
  %and52 = and i32 %46, 3
  %add53 = add nsw i32 %45, %and52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom54
  %47 = load i16, i16* %arrayidx55, align 2
  store i16 %47, i16* %retval, align 2
  br label %return

if.end56:                                         ; preds = %if.end26
  %48 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end56
  %49 = load i16**, i16*** %Pic.addr, align 8
  %50 = load i32, i32* %y.addr, align 4
  %and59 = and i32 %50, 3
  %idxprom60 = sext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i16*, i16** %49, i64 %idxprom60
  %51 = load i16*, i16** %arrayidx61, align 8
  %52 = load i32, i32* %x.addr, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %51, i64 %idxprom62
  %53 = load i16, i16* %arrayidx63, align 2
  store i16 %53, i16* %retval, align 2
  br label %return

if.end64:                                         ; preds = %if.end56
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %height4, align 4
  %cmp65 = icmp sgt i32 %54, %55
  br i1 %cmp65, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end64
  %56 = load i16**, i16*** %Pic.addr, align 8
  %57 = load i32, i32* %height4, align 4
  %58 = load i32, i32* %y.addr, align 4
  %and67 = and i32 %58, 3
  %add68 = add nsw i32 %57, %and67
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i16*, i16** %56, i64 %idxprom69
  %59 = load i16*, i16** %arrayidx70, align 8
  %60 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %59, i64 %idxprom71
  %61 = load i16, i16* %arrayidx72, align 2
  store i16 %61, i16* %retval, align 2
  br label %return

if.end73:                                         ; preds = %if.end64
  %62 = load i16**, i16*** %Pic.addr, align 8
  %63 = load i32, i32* %y.addr, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds i16*, i16** %62, i64 %idxprom74
  %64 = load i16*, i16** %arrayidx75, align 8
  %65 = load i32, i32* %x.addr, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds i16, i16* %64, i64 %idxprom76
  %66 = load i16, i16* %arrayidx77, align 2
  store i16 %66, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %67 = load i16, i16* %retval, align 2
  %68 = load i32, i32* %canary
  %69 = icmp eq i32 %68, 615882409
  br i1 %69, label %70, label %func_exit

70:                                               ; preds = %return, %func_exit
  ret i16 %67

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLine16Y_11.17(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1296411335, i32* %canary
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1296411335
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %arrayidx

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @FastPelY_14.18(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  %canary = alloca i32
  store i32 1629948084, i32* %canary
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16**, i16*** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %0, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %3 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %3
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 %idxprom2
  %4 = load i16, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 1629948084
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret i16 %4

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLineX.19(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Picy = alloca i16*, align 8
  %maxx = alloca i32, align 4
  %canary = alloca i32
  store i32 955801638, i32* %canary
  %Pic.addr = alloca i16*, align 8
  %retval = alloca i16*, align 8
  %i = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  store i16* %add.ptr, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %13, %14
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %Picy, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom
  store i16 %19, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %size.addr, align 4
  %add24 = add nsw i32 %23, %24
  store i32 %add24, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %maxx, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %27 = load i16*, i16** %Picy, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %30, %31
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom31
  store i16 %29, i16* %arrayidx32, align 2
  br label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond25

for.end35:                                        ; preds = %for.cond25
  br label %if.end71

if.else:                                          ; preds = %cond.end12
  %33 = load i32, i32* %x.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %size.addr, align 4
  %sub36 = sub nsw i32 %34, %35
  %cmp37 = icmp sgt i32 %33, %sub36
  br i1 %cmp37, label %if.then38, label %if.else68

if.then38:                                        ; preds = %if.else
  %36 = load i32, i32* %width.addr, align 4
  store i32 %36, i32* %maxx, align 4
  %37 = load i32, i32* %x.addr, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %if.then38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %maxx, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %40 = load i16*, i16** %Picy, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i16, i16* %40, i64 %idxprom42
  %42 = load i16, i16* %arrayidx43, align 2
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub44 = sub nsw i32 %43, %44
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom45
  store i16 %42, i16* %arrayidx46, align 2
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond39

for.end49:                                        ; preds = %for.cond39
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add50 = add nsw i32 %46, %47
  store i32 %add50, i32* %maxx, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp51 = icmp sgt i32 %48, %49
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %for.end49
  %50 = load i32, i32* %width.addr, align 4
  br label %cond.end54

cond.false53:                                     ; preds = %for.end49
  %51 = load i32, i32* %x.addr, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %50, %cond.true52 ], [ %51, %cond.false53 ]
  store i32 %cond55, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %cond.end54
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %maxx, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %54 = load i16*, i16** %Picy, align 8
  %55 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %55, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i16, i16* %54, i64 %idxprom60
  %56 = load i16, i16* %arrayidx61, align 2
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %x.addr, align 4
  %sub62 = sub nsw i32 %57, %58
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom63
  store i16 %56, i16* %arrayidx64, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body58
  %59 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond56

for.end67:                                        ; preds = %for.cond56
  br label %if.end

if.else68:                                        ; preds = %if.else
  %60 = load i16*, i16** %Picy, align 8
  %61 = load i32, i32* %x.addr, align 4
  %idx.ext69 = sext i32 %61 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %60, i64 %idx.ext69
  store i16* %add.ptr70, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end, %for.end35
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.else68
  %62 = load i16*, i16** %retval, align 8
  %63 = load i32, i32* %canary
  %64 = icmp eq i32 %63, 955801638
  br i1 %64, label %65, label %func_exit

65:                                               ; preds = %return, %func_exit
  ret i16* %62

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLineX.20(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %i = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1004507768, i32* %canary
  %y.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %height.addr = alloca i32, align 4
  %retval = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %maxx = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Picy = alloca i16*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  store i16* %add.ptr, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %13, %14
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %Picy, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom
  store i16 %19, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %size.addr, align 4
  %add24 = add nsw i32 %23, %24
  store i32 %add24, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %maxx, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %27 = load i16*, i16** %Picy, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %30, %31
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom31
  store i16 %29, i16* %arrayidx32, align 2
  br label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond25

for.end35:                                        ; preds = %for.cond25
  br label %if.end71

if.else:                                          ; preds = %cond.end12
  %33 = load i32, i32* %x.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %size.addr, align 4
  %sub36 = sub nsw i32 %34, %35
  %cmp37 = icmp sgt i32 %33, %sub36
  br i1 %cmp37, label %if.then38, label %if.else68

if.then38:                                        ; preds = %if.else
  %36 = load i32, i32* %width.addr, align 4
  store i32 %36, i32* %maxx, align 4
  %37 = load i32, i32* %x.addr, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %if.then38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %maxx, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %40 = load i16*, i16** %Picy, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i16, i16* %40, i64 %idxprom42
  %42 = load i16, i16* %arrayidx43, align 2
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub44 = sub nsw i32 %43, %44
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom45
  store i16 %42, i16* %arrayidx46, align 2
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond39

for.end49:                                        ; preds = %for.cond39
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add50 = add nsw i32 %46, %47
  store i32 %add50, i32* %maxx, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp51 = icmp sgt i32 %48, %49
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %for.end49
  %50 = load i32, i32* %width.addr, align 4
  br label %cond.end54

cond.false53:                                     ; preds = %for.end49
  %51 = load i32, i32* %x.addr, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %50, %cond.true52 ], [ %51, %cond.false53 ]
  store i32 %cond55, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %cond.end54
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %maxx, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %54 = load i16*, i16** %Picy, align 8
  %55 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %55, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i16, i16* %54, i64 %idxprom60
  %56 = load i16, i16* %arrayidx61, align 2
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %x.addr, align 4
  %sub62 = sub nsw i32 %57, %58
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom63
  store i16 %56, i16* %arrayidx64, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body58
  %59 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond56

for.end67:                                        ; preds = %for.cond56
  br label %if.end

if.else68:                                        ; preds = %if.else
  %60 = load i16*, i16** %Picy, align 8
  %61 = load i32, i32* %x.addr, align 4
  %idx.ext69 = sext i32 %61 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %60, i64 %idx.ext69
  store i16* %add.ptr70, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end, %for.end35
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.else68
  %62 = load i16*, i16** %retval, align 8
  %63 = load i32, i32* %canary
  %64 = icmp eq i32 %63, 1004507768
  br i1 %64, label %65, label %func_exit

65:                                               ; preds = %return, %func_exit
  ret i16* %62

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @FastLine16Y_11.21(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1875999343, i32* %canary
  %width.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1875999343
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret i16* %arrayidx

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_11.22(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 250631768, i32* %canary
  %val.addr = alloca i16, align 2
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16*, i16** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  store i16 %0, i16* %arrayidx, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 250631768
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_14.23(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1563129507, i32* %canary
  %val.addr = alloca i16, align 2
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16**, i16*** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  %4 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %4
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 %idxprom2
  store i16 %0, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 1563129507
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_11.24(i16* %Pic, i32 %y, i32 %x, i16 zeroext %val, i32 %width) #0 {
entry:
  %val.addr = alloca i16, align 2
  %Pic.addr = alloca i16*, align 8
  %canary = alloca i32
  store i32 736459809, i32* %canary
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16*, i16** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  store i16 %0, i16* %arrayidx, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 736459809
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @FastPelY_14.25(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 2032101606, i32* %canary
  %width.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16**, i16*** %Pic.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %0, i64 %idxprom
  %2 = load i16*, i16** %arrayidx, align 8
  %3 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %3
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 %idxprom2
  %4 = load i16, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 2032101606
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret i16 %4

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLine16Y_11.26(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 747868370, i32* %canary
  %maxx = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %retval = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %Picy = alloca i16*, align 8
  %Pic.addr = alloca i16*, align 8
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  store i16* %arrayidx, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %11, 16
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %12, 16
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %13 = load i32, i32* %x.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %14, %15
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Picy, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx22, align 2
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom24
  store i16 %17, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %x.addr, align 4
  %add26 = add nsw i32 %21, 16
  store i32 %add26, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %maxx, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body29, label %for.end37

for.body29:                                       ; preds = %for.cond27
  %24 = load i16*, i16** %Picy, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i16, i16* %24, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %27, %28
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom33
  store i16 %26, i16* %arrayidx34, align 2
  br label %for.inc35

for.inc35:                                        ; preds = %for.body29
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond27

for.end37:                                        ; preds = %for.cond27
  br label %if.end73

if.else:                                          ; preds = %cond.end12
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %sub38 = sub nsw i32 %31, 16
  %cmp39 = icmp sgt i32 %30, %sub38
  br i1 %cmp39, label %if.then40, label %if.else70

if.then40:                                        ; preds = %if.else
  %32 = load i32, i32* %width.addr, align 4
  store i32 %32, i32* %maxx, align 4
  %33 = load i32, i32* %x.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %maxx, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41
  %36 = load i16*, i16** %Picy, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %x.addr, align 4
  %sub46 = sub nsw i32 %39, %40
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom47
  store i16 %38, i16* %arrayidx48, align 2
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond41

for.end51:                                        ; preds = %for.cond41
  %42 = load i32, i32* %x.addr, align 4
  %add52 = add nsw i32 %42, 16
  store i32 %add52, i32* %maxx, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %for.end51
  %45 = load i32, i32* %width.addr, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %for.end51
  %46 = load i32, i32* %x.addr, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %45, %cond.true54 ], [ %46, %cond.false55 ]
  store i32 %cond57, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %cond.end56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %maxx, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %for.body60, label %for.end69

for.body60:                                       ; preds = %for.cond58
  %49 = load i16*, i16** %Picy, align 8
  %50 = load i32, i32* %width.addr, align 4
  %sub61 = sub nsw i32 %50, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %49, i64 %idxprom62
  %51 = load i16, i16* %arrayidx63, align 2
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub64 = sub nsw i32 %52, %53
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom65
  store i16 %51, i16* %arrayidx66, align 2
  br label %for.inc67

for.inc67:                                        ; preds = %for.body60
  %54 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  br label %if.end

if.else70:                                        ; preds = %if.else
  %55 = load i16*, i16** %Picy, align 8
  %56 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %55, i64 %idxprom71
  store i16* %arrayidx72, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end69
  br label %if.end73

if.end73:                                         ; preds = %if.end, %for.end37
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.else70
  %57 = load i16*, i16** %retval, align 8
  %58 = load i32, i32* %canary
  %59 = icmp eq i32 %58, 747868370
  br i1 %59, label %60, label %func_exit

60:                                               ; preds = %return, %func_exit
  ret i16* %57

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLine16Y_11.27(i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %Pic.addr = alloca i16*, align 8
  %retval = alloca i16*, align 8
  %y.addr = alloca i32, align 4
  %maxx = alloca i32, align 4
  %Picy = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 1460890266, i32* %canary
  %height.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  store i16* %arrayidx, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %11, 16
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4
  %add18 = add nsw i32 %12, 16
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %13 = load i32, i32* %x.addr, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %14, %15
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i16*, i16** %Picy, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %16, i64 0
  %17 = load i16, i16* %arrayidx22, align 2
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %x.addr, align 4
  %sub23 = sub nsw i32 %18, %19
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom24
  store i16 %17, i16* %arrayidx25, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %x.addr, align 4
  %add26 = add nsw i32 %21, 16
  store i32 %add26, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc35, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %maxx, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body29, label %for.end37

for.body29:                                       ; preds = %for.cond27
  %24 = load i16*, i16** %Picy, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i16, i16* %24, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %x.addr, align 4
  %sub32 = sub nsw i32 %27, %28
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom33
  store i16 %26, i16* %arrayidx34, align 2
  br label %for.inc35

for.inc35:                                        ; preds = %for.body29
  %29 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %29, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond27

for.end37:                                        ; preds = %for.cond27
  br label %if.end73

if.else:                                          ; preds = %cond.end12
  %30 = load i32, i32* %x.addr, align 4
  %31 = load i32, i32* %width.addr, align 4
  %sub38 = sub nsw i32 %31, 16
  %cmp39 = icmp sgt i32 %30, %sub38
  br i1 %cmp39, label %if.then40, label %if.else70

if.then40:                                        ; preds = %if.else
  %32 = load i32, i32* %width.addr, align 4
  store i32 %32, i32* %maxx, align 4
  %33 = load i32, i32* %x.addr, align 4
  store i32 %33, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %maxx, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond41
  %36 = load i16*, i16** %Picy, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  %38 = load i16, i16* %arrayidx45, align 2
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %x.addr, align 4
  %sub46 = sub nsw i32 %39, %40
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom47
  store i16 %38, i16* %arrayidx48, align 2
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond41

for.end51:                                        ; preds = %for.cond41
  %42 = load i32, i32* %x.addr, align 4
  %add52 = add nsw i32 %42, 16
  store i32 %add52, i32* %maxx, align 4
  %43 = load i32, i32* %width.addr, align 4
  %44 = load i32, i32* %x.addr, align 4
  %cmp53 = icmp sgt i32 %43, %44
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %for.end51
  %45 = load i32, i32* %width.addr, align 4
  br label %cond.end56

cond.false55:                                     ; preds = %for.end51
  %46 = load i32, i32* %x.addr, align 4
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %45, %cond.true54 ], [ %46, %cond.false55 ]
  store i32 %cond57, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %cond.end56
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %maxx, align 4
  %cmp59 = icmp slt i32 %47, %48
  br i1 %cmp59, label %for.body60, label %for.end69

for.body60:                                       ; preds = %for.cond58
  %49 = load i16*, i16** %Picy, align 8
  %50 = load i32, i32* %width.addr, align 4
  %sub61 = sub nsw i32 %50, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %49, i64 %idxprom62
  %51 = load i16, i16* %arrayidx63, align 2
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub64 = sub nsw i32 %52, %53
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom65
  store i16 %51, i16* %arrayidx66, align 2
  br label %for.inc67

for.inc67:                                        ; preds = %for.body60
  %54 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  br label %if.end

if.else70:                                        ; preds = %if.else
  %55 = load i16*, i16** %Picy, align 8
  %56 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %55, i64 %idxprom71
  store i16* %arrayidx72, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end69
  br label %if.end73

if.end73:                                         ; preds = %if.end, %for.end37
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end73, %if.else70
  %57 = load i16*, i16** %retval, align 8
  %58 = load i32, i32* %canary
  %59 = icmp eq i32 %58, 1460890266
  br i1 %59, label %60, label %func_exit

60:                                               ; preds = %return, %func_exit
  ret i16* %57

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_14.28(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %val.addr = alloca i16, align 2
  %canary = alloca i32
  store i32 8022786, i32* %canary
  %y.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16**, i16*** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  %4 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %4
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 %idxprom2
  store i16 %0, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 8022786
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @UMVPelY_14.29(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %width4 = alloca i32, align 4
  %height4 = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %retval = alloca i16, align 2
  %y.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 192229949, i32* %canary
  %Pic.addr = alloca i16**, align 8
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %sub = sub nsw i32 %add, 1
  %shl = shl i32 %sub, 2
  store i32 %shl, i32* %width4, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %1, 8
  %sub2 = sub nsw i32 %add1, 1
  %shl3 = shl i32 %sub2, 2
  store i32 %shl3, i32* %height4, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %2, 16
  store i32 %add4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %3, 16
  store i32 %add5, i32* %y.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i16**, i16*** %Pic.addr, align 8
  %7 = load i32, i32* %y.addr, align 4
  %and = and i32 %7, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 %idxprom
  %8 = load i16*, i16** %arrayidx, align 8
  %9 = load i32, i32* %x.addr, align 4
  %and8 = and i32 %9, 3
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %10 = load i16, i16* %arrayidx10, align 2
  store i16 %10, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height4, align 4
  %cmp11 = icmp sgt i32 %11, %12
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %13 = load i16**, i16*** %Pic.addr, align 8
  %14 = load i32, i32* %height4, align 4
  %15 = load i32, i32* %y.addr, align 4
  %and13 = and i32 %15, 3
  %add14 = add nsw i32 %14, %and13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %13, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i32, i32* %x.addr, align 4
  %and17 = and i32 %17, 3
  %idxprom18 = sext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %16, i64 %idxprom18
  %18 = load i16, i16* %arrayidx19, align 2
  store i16 %18, i16* %retval, align 2
  br label %return

if.end20:                                         ; preds = %if.end
  %19 = load i16**, i16*** %Pic.addr, align 8
  %20 = load i32, i32* %y.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds i16*, i16** %19, i64 %idxprom21
  %21 = load i16*, i16** %arrayidx22, align 8
  %22 = load i32, i32* %x.addr, align 4
  %and23 = and i32 %22, 3
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2
  store i16 %23, i16* %retval, align 2
  br label %return

if.end26:                                         ; preds = %entry
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width4, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  %26 = load i32, i32* %y.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.then28
  %27 = load i16**, i16*** %Pic.addr, align 8
  %28 = load i32, i32* %y.addr, align 4
  %and31 = and i32 %28, 3
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds i16*, i16** %27, i64 %idxprom32
  %29 = load i16*, i16** %arrayidx33, align 8
  %30 = load i32, i32* %width4, align 4
  %31 = load i32, i32* %x.addr, align 4
  %and34 = and i32 %31, 3
  %add35 = add nsw i32 %30, %and34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %29, i64 %idxprom36
  %32 = load i16, i16* %arrayidx37, align 2
  store i16 %32, i16* %retval, align 2
  br label %return

if.end38:                                         ; preds = %if.then28
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %height4, align 4
  %cmp39 = icmp sgt i32 %33, %34
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %35 = load i16**, i16*** %Pic.addr, align 8
  %36 = load i32, i32* %height4, align 4
  %37 = load i32, i32* %y.addr, align 4
  %and41 = and i32 %37, 3
  %add42 = add nsw i32 %36, %and41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i16*, i16** %35, i64 %idxprom43
  %38 = load i16*, i16** %arrayidx44, align 8
  %39 = load i32, i32* %width4, align 4
  %40 = load i32, i32* %x.addr, align 4
  %and45 = and i32 %40, 3
  %add46 = add nsw i32 %39, %and45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i16, i16* %38, i64 %idxprom47
  %41 = load i16, i16* %arrayidx48, align 2
  store i16 %41, i16* %retval, align 2
  br label %return

if.end49:                                         ; preds = %if.end38
  %42 = load i16**, i16*** %Pic.addr, align 8
  %43 = load i32, i32* %y.addr, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds i16*, i16** %42, i64 %idxprom50
  %44 = load i16*, i16** %arrayidx51, align 8
  %45 = load i32, i32* %width4, align 4
  %46 = load i32, i32* %x.addr, align 4
  %and52 = and i32 %46, 3
  %add53 = add nsw i32 %45, %and52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom54
  %47 = load i16, i16* %arrayidx55, align 2
  store i16 %47, i16* %retval, align 2
  br label %return

if.end56:                                         ; preds = %if.end26
  %48 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end56
  %49 = load i16**, i16*** %Pic.addr, align 8
  %50 = load i32, i32* %y.addr, align 4
  %and59 = and i32 %50, 3
  %idxprom60 = sext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i16*, i16** %49, i64 %idxprom60
  %51 = load i16*, i16** %arrayidx61, align 8
  %52 = load i32, i32* %x.addr, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %51, i64 %idxprom62
  %53 = load i16, i16* %arrayidx63, align 2
  store i16 %53, i16* %retval, align 2
  br label %return

if.end64:                                         ; preds = %if.end56
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %height4, align 4
  %cmp65 = icmp sgt i32 %54, %55
  br i1 %cmp65, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end64
  %56 = load i16**, i16*** %Pic.addr, align 8
  %57 = load i32, i32* %height4, align 4
  %58 = load i32, i32* %y.addr, align 4
  %and67 = and i32 %58, 3
  %add68 = add nsw i32 %57, %and67
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i16*, i16** %56, i64 %idxprom69
  %59 = load i16*, i16** %arrayidx70, align 8
  %60 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %59, i64 %idxprom71
  %61 = load i16, i16* %arrayidx72, align 2
  store i16 %61, i16* %retval, align 2
  br label %return

if.end73:                                         ; preds = %if.end64
  %62 = load i16**, i16*** %Pic.addr, align 8
  %63 = load i32, i32* %y.addr, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds i16*, i16** %62, i64 %idxprom74
  %64 = load i16*, i16** %arrayidx75, align 8
  %65 = load i32, i32* %x.addr, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds i16, i16* %64, i64 %idxprom76
  %66 = load i16, i16* %arrayidx77, align 2
  store i16 %66, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %67 = load i16, i16* %retval, align 2
  %68 = load i32, i32* %canary
  %69 = icmp eq i32 %68, 192229949
  br i1 %69, label %70, label %func_exit

70:                                               ; preds = %return, %func_exit
  ret i16 %67

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @UMVPelY_14.30(i16** %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %retval = alloca i16, align 2
  %width4 = alloca i32, align 4
  %Pic.addr = alloca i16**, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2138270704, i32* %canary
  %height4 = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %0, 8
  %sub = sub nsw i32 %add, 1
  %shl = shl i32 %sub, 2
  store i32 %shl, i32* %width4, align 4
  %1 = load i32, i32* %height.addr, align 4
  %add1 = add nsw i32 %1, 8
  %sub2 = sub nsw i32 %add1, 1
  %shl3 = shl i32 %sub2, 2
  store i32 %shl3, i32* %height4, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add4 = add nsw i32 %2, 16
  store i32 %add4, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %add5 = add nsw i32 %3, 16
  store i32 %add5, i32* %y.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i16**, i16*** %Pic.addr, align 8
  %7 = load i32, i32* %y.addr, align 4
  %and = and i32 %7, 3
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i16*, i16** %6, i64 %idxprom
  %8 = load i16*, i16** %arrayidx, align 8
  %9 = load i32, i32* %x.addr, align 4
  %and8 = and i32 %9, 3
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %8, i64 %idxprom9
  %10 = load i16, i16* %arrayidx10, align 2
  store i16 %10, i16* %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %y.addr, align 4
  %12 = load i32, i32* %height4, align 4
  %cmp11 = icmp sgt i32 %11, %12
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %13 = load i16**, i16*** %Pic.addr, align 8
  %14 = load i32, i32* %height4, align 4
  %15 = load i32, i32* %y.addr, align 4
  %and13 = and i32 %15, 3
  %add14 = add nsw i32 %14, %and13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %13, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i32, i32* %x.addr, align 4
  %and17 = and i32 %17, 3
  %idxprom18 = sext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %16, i64 %idxprom18
  %18 = load i16, i16* %arrayidx19, align 2
  store i16 %18, i16* %retval, align 2
  br label %return

if.end20:                                         ; preds = %if.end
  %19 = load i16**, i16*** %Pic.addr, align 8
  %20 = load i32, i32* %y.addr, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds i16*, i16** %19, i64 %idxprom21
  %21 = load i16*, i16** %arrayidx22, align 8
  %22 = load i32, i32* %x.addr, align 4
  %and23 = and i32 %22, 3
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2
  store i16 %23, i16* %retval, align 2
  br label %return

if.end26:                                         ; preds = %entry
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %width4, align 4
  %cmp27 = icmp sgt i32 %24, %25
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  %26 = load i32, i32* %y.addr, align 4
  %cmp29 = icmp slt i32 %26, 0
  br i1 %cmp29, label %if.then30, label %if.end38

if.then30:                                        ; preds = %if.then28
  %27 = load i16**, i16*** %Pic.addr, align 8
  %28 = load i32, i32* %y.addr, align 4
  %and31 = and i32 %28, 3
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds i16*, i16** %27, i64 %idxprom32
  %29 = load i16*, i16** %arrayidx33, align 8
  %30 = load i32, i32* %width4, align 4
  %31 = load i32, i32* %x.addr, align 4
  %and34 = and i32 %31, 3
  %add35 = add nsw i32 %30, %and34
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %29, i64 %idxprom36
  %32 = load i16, i16* %arrayidx37, align 2
  store i16 %32, i16* %retval, align 2
  br label %return

if.end38:                                         ; preds = %if.then28
  %33 = load i32, i32* %y.addr, align 4
  %34 = load i32, i32* %height4, align 4
  %cmp39 = icmp sgt i32 %33, %34
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end38
  %35 = load i16**, i16*** %Pic.addr, align 8
  %36 = load i32, i32* %height4, align 4
  %37 = load i32, i32* %y.addr, align 4
  %and41 = and i32 %37, 3
  %add42 = add nsw i32 %36, %and41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i16*, i16** %35, i64 %idxprom43
  %38 = load i16*, i16** %arrayidx44, align 8
  %39 = load i32, i32* %width4, align 4
  %40 = load i32, i32* %x.addr, align 4
  %and45 = and i32 %40, 3
  %add46 = add nsw i32 %39, %and45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i16, i16* %38, i64 %idxprom47
  %41 = load i16, i16* %arrayidx48, align 2
  store i16 %41, i16* %retval, align 2
  br label %return

if.end49:                                         ; preds = %if.end38
  %42 = load i16**, i16*** %Pic.addr, align 8
  %43 = load i32, i32* %y.addr, align 4
  %idxprom50 = sext i32 %43 to i64
  %arrayidx51 = getelementptr inbounds i16*, i16** %42, i64 %idxprom50
  %44 = load i16*, i16** %arrayidx51, align 8
  %45 = load i32, i32* %width4, align 4
  %46 = load i32, i32* %x.addr, align 4
  %and52 = and i32 %46, 3
  %add53 = add nsw i32 %45, %and52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom54
  %47 = load i16, i16* %arrayidx55, align 2
  store i16 %47, i16* %retval, align 2
  br label %return

if.end56:                                         ; preds = %if.end26
  %48 = load i32, i32* %y.addr, align 4
  %cmp57 = icmp slt i32 %48, 0
  br i1 %cmp57, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end56
  %49 = load i16**, i16*** %Pic.addr, align 8
  %50 = load i32, i32* %y.addr, align 4
  %and59 = and i32 %50, 3
  %idxprom60 = sext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds i16*, i16** %49, i64 %idxprom60
  %51 = load i16*, i16** %arrayidx61, align 8
  %52 = load i32, i32* %x.addr, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %51, i64 %idxprom62
  %53 = load i16, i16* %arrayidx63, align 2
  store i16 %53, i16* %retval, align 2
  br label %return

if.end64:                                         ; preds = %if.end56
  %54 = load i32, i32* %y.addr, align 4
  %55 = load i32, i32* %height4, align 4
  %cmp65 = icmp sgt i32 %54, %55
  br i1 %cmp65, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end64
  %56 = load i16**, i16*** %Pic.addr, align 8
  %57 = load i32, i32* %height4, align 4
  %58 = load i32, i32* %y.addr, align 4
  %and67 = and i32 %58, 3
  %add68 = add nsw i32 %57, %and67
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i16*, i16** %56, i64 %idxprom69
  %59 = load i16*, i16** %arrayidx70, align 8
  %60 = load i32, i32* %x.addr, align 4
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %59, i64 %idxprom71
  %61 = load i16, i16* %arrayidx72, align 2
  store i16 %61, i16* %retval, align 2
  br label %return

if.end73:                                         ; preds = %if.end64
  %62 = load i16**, i16*** %Pic.addr, align 8
  %63 = load i32, i32* %y.addr, align 4
  %idxprom74 = sext i32 %63 to i64
  %arrayidx75 = getelementptr inbounds i16*, i16** %62, i64 %idxprom74
  %64 = load i16*, i16** %arrayidx75, align 8
  %65 = load i32, i32* %x.addr, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds i16, i16* %64, i64 %idxprom76
  %66 = load i16, i16* %arrayidx77, align 2
  store i16 %66, i16* %retval, align 2
  br label %return

return:                                           ; preds = %if.end73, %if.then66, %if.then58, %if.end49, %if.then40, %if.then30, %if.end20, %if.then12, %if.then7
  %67 = load i16, i16* %retval, align 2
  %68 = load i32, i32* %canary
  %69 = icmp eq i32 %68, 2138270704
  br i1 %69, label %70, label %func_exit

70:                                               ; preds = %return, %func_exit
  ret i16 %67

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PutPel_14.31(i16** %Pic, i32 %y, i32 %x, i16 zeroext %val) #0 {
entry:
  %val.addr = alloca i16, align 2
  %canary = alloca i32
  store i32 116303640, i32* %canary
  %Pic.addr = alloca i16**, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i16** %Pic, i16*** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i16 %val, i16* %val.addr, align 2
  %0 = load i16, i16* %val.addr, align 2
  %1 = load i16**, i16*** %Pic.addr, align 8
  %2 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 16, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  %4 = load i32, i32* %x.addr, align 4
  %add1 = add nsw i32 16, %4
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 %idxprom2
  store i16 %0, i16* %arrayidx3, align 2
  %5 = load i32, i32* %canary
  %6 = icmp eq i32 %5, 116303640
  br i1 %6, label %7, label %func_exit

7:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @UMVLineX.32(i32 %size, i16* %Pic, i32 %y, i32 %x, i32 %height, i32 %width) #0 {
entry:
  %canary = alloca i32
  store i32 2120576204, i32* %canary
  %y.addr = alloca i32, align 4
  %maxx = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %Pic.addr = alloca i16*, align 8
  %Picy = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %retval = alloca i16*, align 8
  %i = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i16* %Pic, i16** %Pic.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  %0 = load i16*, i16** %Pic.addr, align 8
  %1 = load i32, i32* %height.addr, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %sub, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub1, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp sgt i32 0, %cond
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end12

cond.false4:                                      ; preds = %cond.end
  %5 = load i32, i32* %height.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %6 = load i32, i32* %y.addr, align 4
  %cmp6 = icmp slt i32 %sub5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false4
  %7 = load i32, i32* %height.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  br label %cond.end10

cond.false9:                                      ; preds = %cond.false4
  %8 = load i32, i32* %y.addr, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi i32 [ %sub8, %cond.true7 ], [ %8, %cond.false9 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end10, %cond.true3
  %cond13 = phi i32 [ 0, %cond.true3 ], [ %cond11, %cond.end10 ]
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %cond13, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i16, i16* %0, i64 %idx.ext
  store i16* %add.ptr, i16** %Picy, align 8
  %10 = load i32, i32* %x.addr, align 4
  %cmp14 = icmp slt i32 %10, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %11, %12
  %cmp15 = icmp slt i32 0, %add
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.then
  br label %cond.end19

cond.false17:                                     ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %size.addr, align 4
  %add18 = add nsw i32 %13, %14
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false17, %cond.true16
  %cond20 = phi i32 [ 0, %cond.true16 ], [ %add18, %cond.false17 ]
  store i32 %cond20, i32* %maxx, align 4
  %15 = load i32, i32* %x.addr, align 4
  store i32 %15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %maxx, align 4
  %cmp21 = icmp slt i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i16*, i16** %Picy, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx, align 2
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %x.addr, align 4
  %sub22 = sub nsw i32 %20, %21
  %idxprom = sext i32 %sub22 to i64
  %arrayidx23 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom
  store i16 %19, i16* %arrayidx23, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %x.addr, align 4
  %24 = load i32, i32* %size.addr, align 4
  %add24 = add nsw i32 %23, %24
  store i32 %add24, i32* %maxx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %maxx, align 4
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body27, label %for.end35

for.body27:                                       ; preds = %for.cond25
  %27 = load i16*, i16** %Picy, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom28
  %29 = load i16, i16* %arrayidx29, align 2
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %30, %31
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom31
  store i16 %29, i16* %arrayidx32, align 2
  br label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond25

for.end35:                                        ; preds = %for.cond25
  br label %if.end71

if.else:                                          ; preds = %cond.end12
  %33 = load i32, i32* %x.addr, align 4
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %size.addr, align 4
  %sub36 = sub nsw i32 %34, %35
  %cmp37 = icmp sgt i32 %33, %sub36
  br i1 %cmp37, label %if.then38, label %if.else68

if.then38:                                        ; preds = %if.else
  %36 = load i32, i32* %width.addr, align 4
  store i32 %36, i32* %maxx, align 4
  %37 = load i32, i32* %x.addr, align 4
  store i32 %37, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %if.then38
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %maxx, align 4
  %cmp40 = icmp slt i32 %38, %39
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %40 = load i16*, i16** %Picy, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i16, i16* %40, i64 %idxprom42
  %42 = load i16, i16* %arrayidx43, align 2
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub44 = sub nsw i32 %43, %44
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom45
  store i16 %42, i16* %arrayidx46, align 2
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond39

for.end49:                                        ; preds = %for.cond39
  %46 = load i32, i32* %x.addr, align 4
  %47 = load i32, i32* %size.addr, align 4
  %add50 = add nsw i32 %46, %47
  store i32 %add50, i32* %maxx, align 4
  %48 = load i32, i32* %width.addr, align 4
  %49 = load i32, i32* %x.addr, align 4
  %cmp51 = icmp sgt i32 %48, %49
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %for.end49
  %50 = load i32, i32* %width.addr, align 4
  br label %cond.end54

cond.false53:                                     ; preds = %for.end49
  %51 = load i32, i32* %x.addr, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %cond.true52
  %cond55 = phi i32 [ %50, %cond.true52 ], [ %51, %cond.false53 ]
  store i32 %cond55, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %cond.end54
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %maxx, align 4
  %cmp57 = icmp slt i32 %52, %53
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %54 = load i16*, i16** %Picy, align 8
  %55 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %55, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i16, i16* %54, i64 %idxprom60
  %56 = load i16, i16* %arrayidx61, align 2
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %x.addr, align 4
  %sub62 = sub nsw i32 %57, %58
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [16 x i16], [16 x i16]* @line, i64 0, i64 %idxprom63
  store i16 %56, i16* %arrayidx64, align 2
  br label %for.inc65

for.inc65:                                        ; preds = %for.body58
  %59 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %59, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond56

for.end67:                                        ; preds = %for.cond56
  br label %if.end

if.else68:                                        ; preds = %if.else
  %60 = load i16*, i16** %Picy, align 8
  %61 = load i32, i32* %x.addr, align 4
  %idx.ext69 = sext i32 %61 to i64
  %add.ptr70 = getelementptr inbounds i16, i16* %60, i64 %idx.ext69
  store i16* %add.ptr70, i16** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end67
  br label %if.end71

if.end71:                                         ; preds = %if.end, %for.end35
  store i16* getelementptr inbounds ([16 x i16], [16 x i16]* @line, i64 0, i64 0), i16** %retval, align 8
  br label %return

return:                                           ; preds = %if.end71, %if.else68
  %62 = load i16*, i16** %retval, align 8
  %63 = load i32, i32* %canary
  %64 = icmp eq i32 %63, 2120576204
  br i1 %64, label %65, label %func_exit

65:                                               ; preds = %return, %func_exit
  ret i16* %62

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %65
}

declare void @detect_breach()

declare i32 @get_rand()

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"}