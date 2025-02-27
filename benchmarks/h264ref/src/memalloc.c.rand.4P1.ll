; ModuleID = 'memalloc.c.rand.4P1.bc'
source_filename = "memalloc.c"
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

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@errortext = common dso_local global [300 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1
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
define dso_local i32 @init_top_bot_planes(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_init_top_bot_planes.4, label %ctrl0

func_init_top_bot_planes.4:                       ; preds = %rand_bb
  %2 = call i32 @init_top_bot_planes.4(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField)
  ret i32 %2

func_init_top_bot_planes.5:                       ; preds = %ctrl0
  %3 = call i32 @init_top_bot_planes.5(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField)
  ret i32 %3

func_init_top_bot_planes.7:                       ; preds = %ctrl1
  %4 = call i32 @init_top_bot_planes.7(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField)
  ret i32 %4

func_init_top_bot_planes.12:                      ; preds = %ctrl1
  %5 = call i32 @init_top_bot_planes.12(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_init_top_bot_planes.5, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_init_top_bot_planes.7, label %func_init_top_bot_planes.12
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @no_mem_exit(i8* %where) #0 {
entry:
  %where.addr = alloca i8*, align 8
  store i8* %where, i8** %where.addr, align 8
  %0 = load i8*, i8** %where.addr, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* %0) #3
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 100)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_top_bot_planes(i16** %imgTopField, i16** %imgBotField) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_top_bot_planes.1, label %func_free_top_bot_planes.18

func_free_top_bot_planes.1:                       ; preds = %rand_bb
  call void @free_top_bot_planes.1(i16** %imgTopField, i16** %imgBotField)
  ret void

func_free_top_bot_planes.18:                      ; preds = %rand_bb
  call void @free_top_bot_planes.18(i16** %imgTopField, i16** %imgBotField)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dpel(i16*** %array2D, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem2Dpel.25, label %ctrl0

func_get_mem2Dpel.25:                             ; preds = %rand_bb
  %2 = call i32 @get_mem2Dpel.25(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem2Dpel.65:                             ; preds = %ctrl0
  %3 = call i32 @get_mem2Dpel.65(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem2Dpel.69:                             ; preds = %ctrl1
  %4 = call i32 @get_mem2Dpel.69(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem2Dpel.72:                             ; preds = %ctrl1
  %5 = call i32 @get_mem2Dpel.72(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem2Dpel.65, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem2Dpel.69, label %func_get_mem2Dpel.72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dpel(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem3Dpel.16, label %ctrl0

func_get_mem3Dpel.16:                             ; preds = %rand_bb
  %2 = call i32 @get_mem3Dpel.16(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem3Dpel.23:                             ; preds = %ctrl0
  %3 = call i32 @get_mem3Dpel.23(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem3Dpel.46:                             ; preds = %ctrl1
  %4 = call i32 @get_mem3Dpel.46(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem3Dpel.52:                             ; preds = %ctrl1
  %5 = call i32 @get_mem3Dpel.52(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem3Dpel.23, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem3Dpel.46, label %func_get_mem3Dpel.52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem2Dpel(i16** %array2D) #0 {
entry:
  %array2D.addr = alloca i16**, align 8
  store i16** %array2D, i16*** %array2D.addr, align 8
  %0 = load i16**, i16*** %array2D.addr, align 8
  %tobool = icmp ne i16** %0, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 0
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool1 = icmp ne i16* %2, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %3, i64 0
  %4 = load i16*, i16** %arrayidx3, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = load i16**, i16*** %array2D.addr, align 8
  %7 = bitcast i16** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 100)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

declare dso_local void @error(i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dpel(i16*** %array3D, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem3Dpel.43, label %ctrl0

func_free_mem3Dpel.43:                            ; preds = %rand_bb
  call void @free_mem3Dpel.43(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dpel.57:                            ; preds = %ctrl0
  call void @free_mem3Dpel.57(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dpel.73:                            ; preds = %ctrl1
  call void @free_mem3Dpel.73(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dpel.75:                            ; preds = %ctrl1
  call void @free_mem3Dpel.75(i16*** %array3D, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem3Dpel.57, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem3Dpel.73, label %func_free_mem3Dpel.75
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2D(i8*** %array2D, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem2D.36, label %ctrl0

func_get_mem2D.36:                                ; preds = %rand_bb
  %2 = call i32 @get_mem2D.36(i8*** %array2D, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem2D.41:                                ; preds = %ctrl0
  %3 = call i32 @get_mem2D.41(i8*** %array2D, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem2D.60:                                ; preds = %ctrl1
  %4 = call i32 @get_mem2D.60(i8*** %array2D, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem2D.66:                                ; preds = %ctrl1
  %5 = call i32 @get_mem2D.66(i8*** %array2D, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem2D.41, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem2D.60, label %func_get_mem2D.66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint(i32*** %array2D, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem2Dint.11, label %ctrl0

func_get_mem2Dint.11:                             ; preds = %rand_bb
  %2 = call i32 @get_mem2Dint.11(i32*** %array2D, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem2Dint.37:                             ; preds = %ctrl0
  %3 = call i32 @get_mem2Dint.37(i32*** %array2D, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem2Dint.38:                             ; preds = %ctrl1
  %4 = call i32 @get_mem2Dint.38(i32*** %array2D, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem2Dint.40:                             ; preds = %ctrl1
  %5 = call i32 @get_mem2Dint.40(i32*** %array2D, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem2Dint.37, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem2Dint.38, label %func_get_mem2Dint.40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint64(i64*** %array2D, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem2Dint64.3, label %ctrl0

func_get_mem2Dint64.3:                            ; preds = %rand_bb
  %2 = call i32 @get_mem2Dint64.3(i64*** %array2D, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem2Dint64.28:                           ; preds = %ctrl0
  %3 = call i32 @get_mem2Dint64.28(i64*** %array2D, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem2Dint64.42:                           ; preds = %ctrl1
  %4 = call i32 @get_mem2Dint64.42(i64*** %array2D, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem2Dint64.44:                           ; preds = %ctrl1
  %5 = call i32 @get_mem2Dint64.44(i64*** %array2D, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem2Dint64.28, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem2Dint64.42, label %func_get_mem2Dint64.44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3D(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem3D.2, label %ctrl0

func_get_mem3D.2:                                 ; preds = %rand_bb
  %2 = call i32 @get_mem3D.2(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem3D.48:                                ; preds = %ctrl0
  %3 = call i32 @get_mem3D.48(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem3D.64:                                ; preds = %ctrl1
  %4 = call i32 @get_mem3D.64(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem3D.67:                                ; preds = %ctrl1
  %5 = call i32 @get_mem3D.67(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem3D.48, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem3D.64, label %func_get_mem3D.67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem3Dint.21, label %ctrl0

func_get_mem3Dint.21:                             ; preds = %rand_bb
  %2 = call i32 @get_mem3Dint.21(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem3Dint.51:                             ; preds = %ctrl0
  %3 = call i32 @get_mem3Dint.51(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem3Dint.56:                             ; preds = %ctrl1
  %4 = call i32 @get_mem3Dint.56(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem3Dint.61:                             ; preds = %ctrl1
  %5 = call i32 @get_mem3Dint.61(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem3Dint.51, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem3Dint.56, label %func_get_mem3Dint.61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint64(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem3Dint64.6, label %ctrl0

func_get_mem3Dint64.6:                            ; preds = %rand_bb
  %2 = call i32 @get_mem3Dint64.6(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem3Dint64.24:                           ; preds = %ctrl0
  %3 = call i32 @get_mem3Dint64.24(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem3Dint64.59:                           ; preds = %ctrl1
  %4 = call i32 @get_mem3Dint64.59(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem3Dint64.80:                           ; preds = %ctrl1
  %5 = call i32 @get_mem3Dint64.80(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem3Dint64.24, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem3Dint64.59, label %func_get_mem3Dint64.80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dint(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem4Dint.8, label %ctrl0

func_get_mem4Dint.8:                              ; preds = %rand_bb
  %2 = call i32 @get_mem4Dint.8(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem4Dint.26:                             ; preds = %ctrl0
  %3 = call i32 @get_mem4Dint.26(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem4Dint.34:                             ; preds = %ctrl1
  %4 = call i32 @get_mem4Dint.34(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem4Dint.39:                             ; preds = %ctrl1
  %5 = call i32 @get_mem4Dint.39(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem4Dint.26, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem4Dint.34, label %func_get_mem4Dint.39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem2D(i8** %array2D) #0 {
entry:
  %array2D.addr = alloca i8**, align 8
  store i8** %array2D, i8*** %array2D.addr, align 8
  %0 = load i8**, i8*** %array2D.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i8**, i8*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %4) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %5 = load i8**, i8*** %array2D.addr, align 8
  %6 = bitcast i8** %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 100)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem2Dint(i32** %array2D) #0 {
entry:
  %array2D.addr = alloca i32**, align 8
  store i32** %array2D, i32*** %array2D.addr, align 8
  %0 = load i32**, i32*** %array2D.addr, align 8
  %tobool = icmp ne i32** %0, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %1, i64 0
  %2 = load i32*, i32** %arrayidx, align 8
  %tobool1 = icmp ne i32* %2, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i32**, i32*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %3, i64 0
  %4 = load i32*, i32** %arrayidx3, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = load i32**, i32*** %array2D.addr, align 8
  %7 = bitcast i32** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 100)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem2Dint64(i64** %array2D) #0 {
entry:
  %array2D.addr = alloca i64**, align 8
  store i64** %array2D, i64*** %array2D.addr, align 8
  %0 = load i64**, i64*** %array2D.addr, align 8
  %tobool = icmp ne i64** %0, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i64**, i64*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %1, i64 0
  %2 = load i64*, i64** %arrayidx, align 8
  %tobool1 = icmp ne i64* %2, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i64**, i64*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i64*, i64** %3, i64 0
  %4 = load i64*, i64** %arrayidx3, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = load i64**, i64*** %array2D.addr, align 8
  %7 = bitcast i64** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 100)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3D(i8*** %array3D, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem3D.49, label %ctrl0

func_free_mem3D.49:                               ; preds = %rand_bb
  call void @free_mem3D.49(i8*** %array3D, i32 %frames)
  ret void

func_free_mem3D.53:                               ; preds = %ctrl0
  call void @free_mem3D.53(i8*** %array3D, i32 %frames)
  ret void

func_free_mem3D.62:                               ; preds = %ctrl1
  call void @free_mem3D.62(i8*** %array3D, i32 %frames)
  ret void

func_free_mem3D.74:                               ; preds = %ctrl1
  call void @free_mem3D.74(i8*** %array3D, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem3D.53, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem3D.62, label %func_free_mem3D.74
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint(i32*** %array3D, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem3Dint.17, label %ctrl0

func_free_mem3Dint.17:                            ; preds = %rand_bb
  call void @free_mem3Dint.17(i32*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint.20:                            ; preds = %ctrl0
  call void @free_mem3Dint.20(i32*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint.35:                            ; preds = %ctrl1
  call void @free_mem3Dint.35(i32*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint.50:                            ; preds = %ctrl1
  call void @free_mem3Dint.50(i32*** %array3D, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem3Dint.20, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem3Dint.35, label %func_free_mem3Dint.50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint64(i64*** %array3D, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem3Dint64.19, label %ctrl0

func_free_mem3Dint64.19:                          ; preds = %rand_bb
  call void @free_mem3Dint64.19(i64*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint64.27:                          ; preds = %ctrl0
  call void @free_mem3Dint64.27(i64*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint64.32:                          ; preds = %ctrl1
  call void @free_mem3Dint64.32(i64*** %array3D, i32 %frames)
  ret void

func_free_mem3Dint64.33:                          ; preds = %ctrl1
  call void @free_mem3Dint64.33(i64*** %array3D, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem3Dint64.27, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem3Dint64.32, label %func_free_mem3Dint64.33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dint(i32**** %array4D, i32 %idx, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem4Dint.22, label %ctrl0

func_free_mem4Dint.22:                            ; preds = %rand_bb
  call void @free_mem4Dint.22(i32**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dint.29:                            ; preds = %ctrl0
  call void @free_mem4Dint.29(i32**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dint.68:                            ; preds = %ctrl1
  call void @free_mem4Dint.68(i32**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dint.78:                            ; preds = %ctrl1
  call void @free_mem4Dint.78(i32**** %array4D, i32 %idx, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem4Dint.29, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem4Dint.68, label %func_free_mem4Dint.78
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dshort(i16*** %array2D, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem2Dshort.10, label %ctrl0

func_get_mem2Dshort.10:                           ; preds = %rand_bb
  %2 = call i32 @get_mem2Dshort.10(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem2Dshort.30:                           ; preds = %ctrl0
  %3 = call i32 @get_mem2Dshort.30(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem2Dshort.31:                           ; preds = %ctrl1
  %4 = call i32 @get_mem2Dshort.31(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem2Dshort.54:                           ; preds = %ctrl1
  %5 = call i32 @get_mem2Dshort.54(i16*** %array2D, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem2Dshort.30, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem2Dshort.31, label %func_get_mem2Dshort.54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dshort(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem3Dshort.9, label %ctrl0

func_get_mem3Dshort.9:                            ; preds = %rand_bb
  %2 = call i32 @get_mem3Dshort.9(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem3Dshort.14:                           ; preds = %ctrl0
  %3 = call i32 @get_mem3Dshort.14(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem3Dshort.55:                           ; preds = %ctrl1
  %4 = call i32 @get_mem3Dshort.55(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem3Dshort.70:                           ; preds = %ctrl1
  %5 = call i32 @get_mem3Dshort.70(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem3Dshort.14, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem3Dshort.55, label %func_get_mem3Dshort.70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dshort(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_get_mem4Dshort.45, label %ctrl0

func_get_mem4Dshort.45:                           ; preds = %rand_bb
  %2 = call i32 @get_mem4Dshort.45(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %2

func_get_mem4Dshort.71:                           ; preds = %ctrl0
  %3 = call i32 @get_mem4Dshort.71(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %3

func_get_mem4Dshort.77:                           ; preds = %ctrl1
  %4 = call i32 @get_mem4Dshort.77(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %4

func_get_mem4Dshort.79:                           ; preds = %ctrl1
  %5 = call i32 @get_mem4Dshort.79(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_get_mem4Dshort.71, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_get_mem4Dshort.77, label %func_get_mem4Dshort.79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem2Dshort(i16** %array2D) #0 {
entry:
  %array2D.addr = alloca i16**, align 8
  store i16** %array2D, i16*** %array2D.addr, align 8
  %0 = load i16**, i16*** %array2D.addr, align 8
  %tobool = icmp ne i16** %0, null
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 0
  %2 = load i16*, i16** %arrayidx, align 8
  %tobool1 = icmp ne i16* %2, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i16**, i16*** %array2D.addr, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %3, i64 0
  %4 = load i16*, i16** %arrayidx3, align 8
  %5 = bitcast i16* %4 to i8*
  call void @free(i8* %5) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = load i16**, i16*** %array2D.addr, align 8
  %7 = bitcast i16** %6 to i8*
  call void @free(i8* %7) #3
  br label %if.end5

if.else4:                                         ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i32 100)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dshort(i16*** %array3D, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem3Dshort.15, label %ctrl0

func_free_mem3Dshort.15:                          ; preds = %rand_bb
  call void @free_mem3Dshort.15(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dshort.47:                          ; preds = %ctrl0
  call void @free_mem3Dshort.47(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dshort.58:                          ; preds = %ctrl1
  call void @free_mem3Dshort.58(i16*** %array3D, i32 %frames)
  ret void

func_free_mem3Dshort.82:                          ; preds = %ctrl1
  call void @free_mem3Dshort.82(i16*** %array3D, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem3Dshort.47, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem3Dshort.58, label %func_free_mem3Dshort.82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dshort(i16**** %array4D, i32 %idx, i32 %frames) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_free_mem4Dshort.13, label %ctrl0

func_free_mem4Dshort.13:                          ; preds = %rand_bb
  call void @free_mem4Dshort.13(i16**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dshort.63:                          ; preds = %ctrl0
  call void @free_mem4Dshort.63(i16**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dshort.76:                          ; preds = %ctrl1
  call void @free_mem4Dshort.76(i16**** %array4D, i32 %idx, i32 %frames)
  ret void

func_free_mem4Dshort.81:                          ; preds = %ctrl1
  call void @free_mem4Dshort.81(i16**** %array4D, i32 %idx, i32 %frames)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_free_mem4Dshort.63, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_free_mem4Dshort.76, label %func_free_mem4Dshort.81
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_top_bot_planes.1(i16** %imgTopField, i16** %imgBotField) #0 {
entry:
  %imgTopField.addr = alloca i16**, align 8
  %canary = alloca i32
  store i32 480682720, i32* %canary
  %imgBotField.addr = alloca i16**, align 8
  store i16** %imgTopField, i16*** %imgTopField.addr, align 8
  store i16** %imgBotField, i16*** %imgBotField.addr, align 8
  %0 = load i16**, i16*** %imgTopField.addr, align 8
  %1 = bitcast i16** %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i16**, i16*** %imgBotField.addr, align 8
  %3 = bitcast i16** %2 to i8*
  call void @free(i8* %3) #3
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 480682720
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3D.2(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 721607041, i32* %canary
  %rows.addr = alloca i32, align 4
  %array3D.addr = alloca i8****, align 8
  store i8**** %array3D, i8***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8***
  %2 = load i8****, i8***** %array3D.addr, align 8
  store i8*** %1, i8**** %2, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8****, i8***** %array3D.addr, align 8
  %6 = load i8***, i8**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2D(i8*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 721607041
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %mul5

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint64.3(i64*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %i = alloca i32, align 4
  %array2D.addr = alloca i64***, align 8
  %canary = alloca i32
  store i32 146135131, i32* %canary
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  store i64*** %array2D, i64**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64**
  %2 = load i64***, i64**** %array2D.addr, align 8
  store i64** %1, i64*** %2, align 8
  %cmp = icmp eq i64** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64***, i64**** %array2D.addr, align 8
  %7 = load i64**, i64*** %6, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 0
  store i64* %5, i64** %arrayidx, align 8
  %cmp4 = icmp eq i64* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64***, i64**** %array2D.addr, align 8
  %11 = load i64**, i64*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i64*, i64** %11, i64 %idxprom
  %13 = load i64*, i64** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.ext
  %15 = load i64***, i64**** %array2D.addr, align 8
  %16 = load i64**, i64*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i64*, i64** %16, i64 %idxprom11
  store i64* %add.ptr, i64** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 146135131
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_top_bot_planes.4(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
entry:
  %imgTopField.addr = alloca i16***, align 8
  %imgBotField.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 1398231427, i32* %canary
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %imgFrame.addr = alloca i16**, align 8
  store i16** %imgFrame, i16*** %imgFrame.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i16*** %imgTopField, i16**** %imgTopField.addr, align 8
  store i16*** %imgBotField, i16**** %imgBotField.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %imgTopField.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %div2 = sdiv i32 %3, 2
  %conv3 = sext i32 %div2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 8) #3
  %4 = bitcast i8* %call4 to i16**
  %5 = load i16***, i16**** %imgBotField.addr, align 8
  store i16** %4, i16*** %5, align 8
  %cmp5 = icmp eq i16** %4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %div9 = sdiv i32 %7, 2
  %cmp10 = icmp slt i32 %6, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16**, i16*** %imgFrame.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16*, i16** %8, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  %11 = load i16***, i16**** %imgTopField.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i16*, i16** %12, i64 %idxprom12
  store i16* %10, i16** %arrayidx13, align 8
  %14 = load i16**, i16*** %imgFrame.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %15
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %14, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i16***, i16**** %imgBotField.addr, align 8
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i16*, i16** %18, i64 %idxprom17
  store i16* %16, i16** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %rows.addr, align 4
  %conv19 = sext i32 %21 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  %22 = load i32, i32* %canary
  %23 = icmp eq i32 %22, 1398231427
  br i1 %23, label %24, label %func_exit

24:                                               ; preds = %for.end, %func_exit
  ret i32 %conv21

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_top_bot_planes.5(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %imgBotField.addr = alloca i16***, align 8
  %canary = alloca i32
  store i32 1918555880, i32* %canary
  %i = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %imgFrame.addr = alloca i16**, align 8
  %imgTopField.addr = alloca i16***, align 8
  store i16** %imgFrame, i16*** %imgFrame.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i16*** %imgTopField, i16**** %imgTopField.addr, align 8
  store i16*** %imgBotField, i16**** %imgBotField.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %imgTopField.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %div2 = sdiv i32 %3, 2
  %conv3 = sext i32 %div2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 8) #3
  %4 = bitcast i8* %call4 to i16**
  %5 = load i16***, i16**** %imgBotField.addr, align 8
  store i16** %4, i16*** %5, align 8
  %cmp5 = icmp eq i16** %4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %div9 = sdiv i32 %7, 2
  %cmp10 = icmp slt i32 %6, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16**, i16*** %imgFrame.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16*, i16** %8, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  %11 = load i16***, i16**** %imgTopField.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i16*, i16** %12, i64 %idxprom12
  store i16* %10, i16** %arrayidx13, align 8
  %14 = load i16**, i16*** %imgFrame.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %15
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %14, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i16***, i16**** %imgBotField.addr, align 8
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i16*, i16** %18, i64 %idxprom17
  store i16* %16, i16** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %rows.addr, align 4
  %conv19 = sext i32 %21 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  %22 = load i32, i32* %canary
  %23 = icmp eq i32 %22, 1918555880
  br i1 %23, label %24, label %func_exit

24:                                               ; preds = %for.end, %func_exit
  ret i32 %conv21

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint64.6(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 798097475, i32* %canary
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %array3D.addr = alloca i64****, align 8
  %j = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i64**** %array3D, i64***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64***
  %2 = load i64****, i64***** %array3D.addr, align 8
  store i64*** %1, i64**** %2, align 8
  %cmp = icmp eq i64*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64****, i64***** %array3D.addr, align 8
  %6 = load i64***, i64**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i64**, i64*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 798097475
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_top_bot_planes.7(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %imgTopField.addr = alloca i16***, align 8
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1307640472, i32* %canary
  %imgBotField.addr = alloca i16***, align 8
  %imgFrame.addr = alloca i16**, align 8
  %i = alloca i32, align 4
  store i16** %imgFrame, i16*** %imgFrame.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i16*** %imgTopField, i16**** %imgTopField.addr, align 8
  store i16*** %imgBotField, i16**** %imgBotField.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %imgTopField.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %div2 = sdiv i32 %3, 2
  %conv3 = sext i32 %div2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 8) #3
  %4 = bitcast i8* %call4 to i16**
  %5 = load i16***, i16**** %imgBotField.addr, align 8
  store i16** %4, i16*** %5, align 8
  %cmp5 = icmp eq i16** %4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %div9 = sdiv i32 %7, 2
  %cmp10 = icmp slt i32 %6, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16**, i16*** %imgFrame.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16*, i16** %8, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  %11 = load i16***, i16**** %imgTopField.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i16*, i16** %12, i64 %idxprom12
  store i16* %10, i16** %arrayidx13, align 8
  %14 = load i16**, i16*** %imgFrame.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %15
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %14, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i16***, i16**** %imgBotField.addr, align 8
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i16*, i16** %18, i64 %idxprom17
  store i16* %16, i16** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %rows.addr, align 4
  %conv19 = sext i32 %21 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  %22 = load i32, i32* %canary
  %23 = icmp eq i32 %22, 1307640472
  br i1 %23, label %24, label %func_exit

24:                                               ; preds = %for.end, %func_exit
  ret i32 %conv21

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dint.8(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 739897204, i32* %canary
  %j = alloca i32, align 4
  %array4D.addr = alloca i32*****, align 8
  %rows.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i32***** %array4D, i32****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32****
  %2 = load i32*****, i32****** %array4D.addr, align 8
  store i32**** %1, i32***** %2, align 8
  %cmp = icmp eq i32**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*****, i32****** %array4D.addr, align 8
  %6 = load i32****, i32***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32***, i32**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dint(i32**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 739897204
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dshort.9(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  %canary = alloca i32
  store i32 370159010, i32* %canary
  %rows.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 370159010
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dshort.10(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %i = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %array2D.addr = alloca i16***, align 8
  %canary = alloca i32
  store i32 2061696828, i32* %canary
  %rows.addr = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 2061696828
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint.11(i32*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i32***, align 8
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2121109172, i32* %canary
  %i = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32***, i32**** %array2D.addr, align 8
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32*, i32** %11, i64 %idxprom
  %13 = load i32*, i32** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %15 = load i32***, i32**** %array2D.addr, align 8
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 %idxprom11
  store i32* %add.ptr, i32** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 2121109172
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_top_bot_planes.12(i16** %imgFrame, i32 %rows, i32 %columns, i16*** %imgTopField, i16*** %imgBotField) #0 {
entry:
  %i = alloca i32, align 4
  %imgTopField.addr = alloca i16***, align 8
  %canary = alloca i32
  store i32 1360459095, i32* %canary
  %imgBotField.addr = alloca i16***, align 8
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %imgFrame.addr = alloca i16**, align 8
  store i16** %imgFrame, i16*** %imgFrame.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store i16*** %imgTopField, i16**** %imgTopField.addr, align 8
  store i16*** %imgBotField, i16**** %imgBotField.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sext i32 %div to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %imgTopField.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %div2 = sdiv i32 %3, 2
  %conv3 = sext i32 %div2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 8) #3
  %4 = bitcast i8* %call4 to i16**
  %5 = load i16***, i16**** %imgBotField.addr, align 8
  store i16** %4, i16*** %5, align 8
  %cmp5 = icmp eq i16** %4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %rows.addr, align 4
  %div9 = sdiv i32 %7, 2
  %cmp10 = icmp slt i32 %6, %div9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16**, i16*** %imgFrame.addr, align 8
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i16*, i16** %8, i64 %idxprom
  %10 = load i16*, i16** %arrayidx, align 8
  %11 = load i16***, i16**** %imgTopField.addr, align 8
  %12 = load i16**, i16*** %11, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i16*, i16** %12, i64 %idxprom12
  store i16* %10, i16** %arrayidx13, align 8
  %14 = load i16**, i16*** %imgFrame.addr, align 8
  %15 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %15
  %add = add nsw i32 %mul14, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i16*, i16** %14, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %17 = load i16***, i16**** %imgBotField.addr, align 8
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i16*, i16** %18, i64 %idxprom17
  store i16* %16, i16** %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %rows.addr, align 4
  %conv19 = sext i32 %21 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  %22 = load i32, i32* %canary
  %23 = icmp eq i32 %22, 1360459095
  br i1 %23, label %24, label %func_exit

24:                                               ; preds = %for.end, %func_exit
  ret i32 %conv21

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dshort.13(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %array4D.addr = alloca i16****, align 8
  %canary = alloca i32
  store i32 932895755, i32* %canary
  %frames.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16****, i16***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16***, i16**** %3, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dshort(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 932895755
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dshort.14(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1853226428, i32* %canary
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1853226428
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dshort.15(i16*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 165513724, i32* %canary
  %array3D.addr = alloca i16***, align 8
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dshort(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 165513724
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dpel.16(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i16****, align 8
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1355042136, i32* %canary
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1355042136
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint.17(i32*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2146258060, i32* %canary
  %i = alloca i32, align 4
  %array3D.addr = alloca i32***, align 8
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32***, i32**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32**, i32*** %3, i64 %idxprom
  %5 = load i32**, i32*** %arrayidx, align 8
  call void @free_mem2Dint(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %array3D.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 2146258060
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_top_bot_planes.18(i16** %imgTopField, i16** %imgBotField) #0 {
entry:
  %canary = alloca i32
  store i32 1766222118, i32* %canary
  %imgBotField.addr = alloca i16**, align 8
  %imgTopField.addr = alloca i16**, align 8
  store i16** %imgTopField, i16*** %imgTopField.addr, align 8
  store i16** %imgBotField, i16*** %imgBotField.addr, align 8
  %0 = load i16**, i16*** %imgTopField.addr, align 8
  %1 = bitcast i16** %0 to i8*
  call void @free(i8* %1) #3
  %2 = load i16**, i16*** %imgBotField.addr, align 8
  %3 = bitcast i16** %2 to i8*
  call void @free(i8* %3) #3
  %4 = load i32, i32* %canary
  %5 = icmp eq i32 %4, 1766222118
  br i1 %5, label %6, label %func_exit

6:                                                ; preds = %entry, %func_exit
  ret void

func_exit:                                        ; preds = %entry
  call void @detect_breach()
  br label %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint64.19(i64*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i64***, align 8
  %canary = alloca i32
  store i32 82572673, i32* %canary
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i64*** %array3D, i64**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i64***, i64**** %array3D.addr, align 8
  %tobool = icmp ne i64*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64***, i64**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64**, i64*** %3, i64 %idxprom
  %5 = load i64**, i64*** %arrayidx, align 8
  call void @free_mem2Dint64(i64** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64***, i64**** %array3D.addr, align 8
  %8 = bitcast i64*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 82572673
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint.20(i32*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i32***, align 8
  %canary = alloca i32
  store i32 1765115102, i32* %canary
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32***, i32**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32**, i32*** %3, i64 %idxprom
  %5 = load i32**, i32*** %arrayidx, align 8
  call void @free_mem2Dint(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %array3D.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1765115102
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint.21(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 256980089, i32* %canary
  %array3D.addr = alloca i32****, align 8
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32****, i32***** %array3D.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32**, i32*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint(i32*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 256980089
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dint.22(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %j = alloca i32, align 4
  %array4D.addr = alloca i32****, align 8
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1697682425, i32* %canary
  %idx.addr = alloca i32, align 4
  store i32**** %array4D, i32***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32****, i32***** %array4D.addr, align 8
  %tobool = icmp ne i32**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32****, i32***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dint(i32*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32****, i32***** %array4D.addr, align 8
  %9 = bitcast i32**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 1697682425
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dpel.23(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 2132806376, i32* %canary
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 2132806376
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint64.24(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1243903260, i32* %canary
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i64****, align 8
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i64**** %array3D, i64***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64***
  %2 = load i64****, i64***** %array3D.addr, align 8
  store i64*** %1, i64**** %2, align 8
  %cmp = icmp eq i64*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64****, i64***** %array3D.addr, align 8
  %6 = load i64***, i64**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i64**, i64*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1243903260
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dpel.25(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %array2D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 2090966744, i32* %canary
  %columns.addr = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 2090966744
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dint.26(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2091068973, i32* %canary
  %idx.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %array4D.addr = alloca i32*****, align 8
  store i32***** %array4D, i32****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32****
  %2 = load i32*****, i32****** %array4D.addr, align 8
  store i32**** %1, i32***** %2, align 8
  %cmp = icmp eq i32**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*****, i32****** %array4D.addr, align 8
  %6 = load i32****, i32***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32***, i32**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dint(i32**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 2091068973
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint64.27(i64*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 985357907, i32* %canary
  %array3D.addr = alloca i64***, align 8
  store i64*** %array3D, i64**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i64***, i64**** %array3D.addr, align 8
  %tobool = icmp ne i64*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64***, i64**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64**, i64*** %3, i64 %idxprom
  %5 = load i64**, i64*** %arrayidx, align 8
  call void @free_mem2Dint64(i64** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64***, i64**** %array3D.addr, align 8
  %8 = bitcast i64*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 985357907
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint64.28(i64*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %array2D.addr = alloca i64***, align 8
  %canary = alloca i32
  store i32 1075787717, i32* %canary
  %i = alloca i32, align 4
  store i64*** %array2D, i64**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64**
  %2 = load i64***, i64**** %array2D.addr, align 8
  store i64** %1, i64*** %2, align 8
  %cmp = icmp eq i64** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64***, i64**** %array2D.addr, align 8
  %7 = load i64**, i64*** %6, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 0
  store i64* %5, i64** %arrayidx, align 8
  %cmp4 = icmp eq i64* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64***, i64**** %array2D.addr, align 8
  %11 = load i64**, i64*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i64*, i64** %11, i64 %idxprom
  %13 = load i64*, i64** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.ext
  %15 = load i64***, i64**** %array2D.addr, align 8
  %16 = load i64**, i64*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i64*, i64** %16, i64 %idxprom11
  store i64* %add.ptr, i64** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1075787717
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dint.29(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %j = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 628025973, i32* %canary
  %idx.addr = alloca i32, align 4
  %array4D.addr = alloca i32****, align 8
  store i32**** %array4D, i32***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32****, i32***** %array4D.addr, align 8
  %tobool = icmp ne i32**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32****, i32***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dint(i32*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32****, i32***** %array4D.addr, align 8
  %9 = bitcast i32**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 628025973
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dshort.30(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1316912512, i32* %canary
  %array2D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1316912512
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dshort.31(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 1700358705, i32* %canary
  %columns.addr = alloca i32, align 4
  %array2D.addr = alloca i16***, align 8
  %rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1700358705
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint64.32(i64*** %array3D, i32 %frames) #0 {
entry:
  %i = alloca i32, align 4
  %array3D.addr = alloca i64***, align 8
  %canary = alloca i32
  store i32 724716052, i32* %canary
  %frames.addr = alloca i32, align 4
  store i64*** %array3D, i64**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i64***, i64**** %array3D.addr, align 8
  %tobool = icmp ne i64*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64***, i64**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64**, i64*** %3, i64 %idxprom
  %5 = load i64**, i64*** %arrayidx, align 8
  call void @free_mem2Dint64(i64** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64***, i64**** %array3D.addr, align 8
  %8 = bitcast i64*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 724716052
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint64.33(i64*** %array3D, i32 %frames) #0 {
entry:
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 1961462308, i32* %canary
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i64***, align 8
  store i64*** %array3D, i64**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i64***, i64**** %array3D.addr, align 8
  %tobool = icmp ne i64*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64***, i64**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64**, i64*** %3, i64 %idxprom
  %5 = load i64**, i64*** %arrayidx, align 8
  call void @free_mem2Dint64(i64** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64***, i64**** %array3D.addr, align 8
  %8 = bitcast i64*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1961462308
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dint.34(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2131609781, i32* %canary
  %idx.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %array4D.addr = alloca i32*****, align 8
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i32***** %array4D, i32****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32****
  %2 = load i32*****, i32****** %array4D.addr, align 8
  store i32**** %1, i32***** %2, align 8
  %cmp = icmp eq i32**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*****, i32****** %array4D.addr, align 8
  %6 = load i32****, i32***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32***, i32**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dint(i32**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 2131609781
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint.35(i32*** %array3D, i32 %frames) #0 {
entry:
  %i = alloca i32, align 4
  %array3D.addr = alloca i32***, align 8
  %canary = alloca i32
  store i32 2013066232, i32* %canary
  %frames.addr = alloca i32, align 4
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32***, i32**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32**, i32*** %3, i64 %idxprom
  %5 = load i32**, i32*** %arrayidx, align 8
  call void @free_mem2Dint(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %array3D.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 2013066232
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2D.36(i8*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1060845782, i32* %canary
  %array2D.addr = alloca i8***, align 8
  %i = alloca i32, align 4
  store i8*** %array2D, i8**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8**
  %2 = load i8***, i8**** %array2D.addr, align 8
  store i8** %1, i8*** %2, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %columns.addr, align 4
  %4 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  %5 = load i8***, i8**** %array2D.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %call3, i8** %arrayidx, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8***, i8**** %array2D.addr, align 8
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx10, align 8
  %13 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8***, i8**** %array2D.addr, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  store i8* %add.ptr, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %rows.addr, align 4
  %19 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %18, %19
  %20 = load i32, i32* %canary
  %21 = icmp eq i32 %20, 1060845782
  br i1 %21, label %22, label %func_exit

22:                                               ; preds = %for.end, %func_exit
  ret i32 %mul13

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint.37(i32*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 745692564, i32* %canary
  %array2D.addr = alloca i32***, align 8
  %rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32***, i32**** %array2D.addr, align 8
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32*, i32** %11, i64 %idxprom
  %13 = load i32*, i32** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %15 = load i32***, i32**** %array2D.addr, align 8
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 %idxprom11
  store i32* %add.ptr, i32** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 745692564
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint.38(i32*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 551189326, i32* %canary
  %rows.addr = alloca i32, align 4
  %array2D.addr = alloca i32***, align 8
  %i = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32***, i32**** %array2D.addr, align 8
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32*, i32** %11, i64 %idxprom
  %13 = load i32*, i32** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %15 = load i32***, i32**** %array2D.addr, align 8
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 %idxprom11
  store i32* %add.ptr, i32** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 551189326
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dint.39(i32***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %idx.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1296301982, i32* %canary
  %array4D.addr = alloca i32*****, align 8
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32***** %array4D, i32****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32****
  %2 = load i32*****, i32****** %array4D.addr, align 8
  store i32**** %1, i32***** %2, align 8
  %cmp = icmp eq i32**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*****, i32****** %array4D.addr, align 8
  %6 = load i32****, i32***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32***, i32**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dint(i32**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 1296301982
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint.40(i32*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1456355401, i32* %canary
  %array2D.addr = alloca i32***, align 8
  %i = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  store i32*** %array2D, i32**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32**
  %2 = load i32***, i32**** %array2D.addr, align 8
  store i32** %1, i32*** %2, align 8
  %cmp = icmp eq i32** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #3
  %5 = bitcast i8* %call3 to i32*
  %6 = load i32***, i32**** %array2D.addr, align 8
  %7 = load i32**, i32*** %6, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 0
  store i32* %5, i32** %arrayidx, align 8
  %cmp4 = icmp eq i32* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32***, i32**** %array2D.addr, align 8
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32*, i32** %11, i64 %idxprom
  %13 = load i32*, i32** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i32, i32* %13, i64 %idx.ext
  %15 = load i32***, i32**** %array2D.addr, align 8
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %16, i64 %idxprom11
  store i32* %add.ptr, i32** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 4
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1456355401
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2D.41(i8*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %i = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %array2D.addr = alloca i8***, align 8
  %canary = alloca i32
  store i32 355985033, i32* %canary
  %columns.addr = alloca i32, align 4
  store i8*** %array2D, i8**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8**
  %2 = load i8***, i8**** %array2D.addr, align 8
  store i8** %1, i8*** %2, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %columns.addr, align 4
  %4 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  %5 = load i8***, i8**** %array2D.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %call3, i8** %arrayidx, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8***, i8**** %array2D.addr, align 8
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx10, align 8
  %13 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8***, i8**** %array2D.addr, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  store i8* %add.ptr, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %rows.addr, align 4
  %19 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %18, %19
  %20 = load i32, i32* %canary
  %21 = icmp eq i32 %20, 355985033
  br i1 %21, label %22, label %func_exit

22:                                               ; preds = %for.end, %func_exit
  ret i32 %mul13

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint64.42(i64*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %array2D.addr = alloca i64***, align 8
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1885165107, i32* %canary
  %i = alloca i32, align 4
  store i64*** %array2D, i64**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64**
  %2 = load i64***, i64**** %array2D.addr, align 8
  store i64** %1, i64*** %2, align 8
  %cmp = icmp eq i64** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64***, i64**** %array2D.addr, align 8
  %7 = load i64**, i64*** %6, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 0
  store i64* %5, i64** %arrayidx, align 8
  %cmp4 = icmp eq i64* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64***, i64**** %array2D.addr, align 8
  %11 = load i64**, i64*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i64*, i64** %11, i64 %idxprom
  %13 = load i64*, i64** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.ext
  %15 = load i64***, i64**** %array2D.addr, align 8
  %16 = load i64**, i64*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i64*, i64** %16, i64 %idxprom11
  store i64* %add.ptr, i64** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1885165107
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dpel.43(i16*** %array3D, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 1139869775, i32* %canary
  %array3D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dpel(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1139869775
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dint64.44(i64*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i64***, align 8
  %canary = alloca i32
  store i32 500086376, i32* %canary
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i64*** %array2D, i64**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64**
  %2 = load i64***, i64**** %array2D.addr, align 8
  store i64** %1, i64*** %2, align 8
  %cmp = icmp eq i64** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 8) #3
  %5 = bitcast i8* %call3 to i64*
  %6 = load i64***, i64**** %array2D.addr, align 8
  %7 = load i64**, i64*** %6, align 8
  %arrayidx = getelementptr inbounds i64*, i64** %7, i64 0
  store i64* %5, i64** %arrayidx, align 8
  %cmp4 = icmp eq i64* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64***, i64**** %array2D.addr, align 8
  %11 = load i64**, i64*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i64*, i64** %11, i64 %idxprom
  %13 = load i64*, i64** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i64, i64* %13, i64 %idx.ext
  %15 = load i64***, i64**** %array2D.addr, align 8
  %16 = load i64**, i64*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i64*, i64** %16, i64 %idxprom11
  store i64* %add.ptr, i64** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 8
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 500086376
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dshort.45(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array4D.addr = alloca i16*****, align 8
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 878179272, i32* %canary
  %idx.addr = alloca i32, align 4
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 878179272
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dpel.46(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 1318727247, i32* %canary
  %rows.addr = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1318727247
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dshort.47(i16*** %array3D, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 230767813, i32* %canary
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dshort(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 230767813
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3D.48(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %j = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %array3D.addr = alloca i8****, align 8
  %canary = alloca i32
  store i32 1415372133, i32* %canary
  %rows.addr = alloca i32, align 4
  store i8**** %array3D, i8***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8***
  %2 = load i8****, i8***** %array3D.addr, align 8
  store i8*** %1, i8**** %2, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8****, i8***** %array3D.addr, align 8
  %6 = load i8***, i8**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2D(i8*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1415372133
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %mul5

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3D.49(i8*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i8***, align 8
  %canary = alloca i32
  store i32 1805412425, i32* %canary
  %i = alloca i32, align 4
  store i8*** %array3D, i8**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i8***, i8**** %array3D.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8***, i8**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %3, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  call void @free_mem2D(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %array3D.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1805412425
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dint.50(i32*** %array3D, i32 %frames) #0 {
entry:
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 481346861, i32* %canary
  %array3D.addr = alloca i32***, align 8
  store i32*** %array3D, i32**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32***, i32**** %array3D.addr, align 8
  %tobool = icmp ne i32*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32***, i32**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32**, i32*** %3, i64 %idxprom
  %5 = load i32**, i32*** %arrayidx, align 8
  call void @free_mem2Dint(i32** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32***, i32**** %array3D.addr, align 8
  %8 = bitcast i32*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 481346861
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint.51(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1221924384, i32* %canary
  %array3D.addr = alloca i32****, align 8
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32****, i32***** %array3D.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32**, i32*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint(i32*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1221924384
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dpel.52(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 402165152, i32* %canary
  %j = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  %columns.addr = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dpel(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 402165152
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3D.53(i8*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i8***, align 8
  %canary = alloca i32
  store i32 685371559, i32* %canary
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i8*** %array3D, i8**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i8***, i8**** %array3D.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8***, i8**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %3, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  call void @free_mem2D(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %array3D.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 685371559
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dshort.54(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 999949955, i32* %canary
  %array2D.addr = alloca i16***, align 8
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 999949955
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dshort.55(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 581514867, i32* %canary
  %array3D.addr = alloca i16****, align 8
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 581514867
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint.56(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 1988875668, i32* %canary
  %array3D.addr = alloca i32****, align 8
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32****, i32***** %array3D.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32**, i32*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint(i32*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1988875668
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dpel.57(i16*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 2131391344, i32* %canary
  %array3D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dpel(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 2131391344
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dshort.58(i16*** %array3D, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 1417660167, i32* %canary
  %i = alloca i32, align 4
  %array3D.addr = alloca i16***, align 8
  %frames.addr = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dshort(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1417660167
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint64.59(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 357506379, i32* %canary
  %j = alloca i32, align 4
  %array3D.addr = alloca i64****, align 8
  store i64**** %array3D, i64***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64***
  %2 = load i64****, i64***** %array3D.addr, align 8
  store i64*** %1, i64**** %2, align 8
  %cmp = icmp eq i64*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64****, i64***** %array3D.addr, align 8
  %6 = load i64***, i64**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i64**, i64*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 357506379
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2D.60(i8*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1269549851, i32* %canary
  %i = alloca i32, align 4
  %array2D.addr = alloca i8***, align 8
  store i8*** %array2D, i8**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8**
  %2 = load i8***, i8**** %array2D.addr, align 8
  store i8** %1, i8*** %2, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %columns.addr, align 4
  %4 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  %5 = load i8***, i8**** %array2D.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %call3, i8** %arrayidx, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8***, i8**** %array2D.addr, align 8
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx10, align 8
  %13 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8***, i8**** %array2D.addr, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  store i8* %add.ptr, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %rows.addr, align 4
  %19 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %18, %19
  %20 = load i32, i32* %canary
  %21 = icmp eq i32 %20, 1269549851
  br i1 %21, label %22, label %func_exit

22:                                               ; preds = %for.end, %func_exit
  ret i32 %mul13

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint.61(i32**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i32****, align 8
  %canary = alloca i32
  store i32 1846329302, i32* %canary
  %j = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i32**** %array3D, i32***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i32***
  %2 = load i32****, i32***** %array3D.addr, align 8
  store i32*** %1, i32**** %2, align 8
  %cmp = icmp eq i32*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32****, i32***** %array3D.addr, align 8
  %6 = load i32***, i32**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32**, i32*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint(i32*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 4
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1846329302
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3D.62(i8*** %array3D, i32 %frames) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 156169411, i32* %canary
  %array3D.addr = alloca i8***, align 8
  store i8*** %array3D, i8**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i8***, i8**** %array3D.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8***, i8**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %3, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  call void @free_mem2D(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %array3D.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 156169411
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dshort.63(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %array4D.addr = alloca i16****, align 8
  %canary = alloca i32
  store i32 1828983843, i32* %canary
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16****, i16***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16***, i16**** %3, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dshort(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 1828983843
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3D.64(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %j = alloca i32, align 4
  %array3D.addr = alloca i8****, align 8
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1249779962, i32* %canary
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i8**** %array3D, i8***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8***
  %2 = load i8****, i8***** %array3D.addr, align 8
  store i8*** %1, i8**** %2, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8****, i8***** %array3D.addr, align 8
  %6 = load i8***, i8**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2D(i8*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1249779962
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %mul5

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dpel.65(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 851899951, i32* %canary
  %i = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %array2D.addr = alloca i16***, align 8
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 851899951
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2D.66(i8*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %array2D.addr = alloca i8***, align 8
  %rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 1446517933, i32* %canary
  %columns.addr = alloca i32, align 4
  store i8*** %array2D, i8**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8**
  %2 = load i8***, i8**** %array2D.addr, align 8
  store i8** %1, i8*** %2, align 8
  %cmp = icmp eq i8** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %columns.addr, align 4
  %4 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 1) #3
  %5 = load i8***, i8**** %array2D.addr, align 8
  %6 = load i8**, i8*** %5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %call3, i8** %arrayidx, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8***, i8**** %array2D.addr, align 8
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx10, align 8
  %13 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  %14 = load i8***, i8**** %array2D.addr, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8*, i8** %15, i64 %idxprom11
  store i8* %add.ptr, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %rows.addr, align 4
  %19 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %18, %19
  %20 = load i32, i32* %canary
  %21 = icmp eq i32 %20, 1446517933
  br i1 %21, label %22, label %func_exit

22:                                               ; preds = %for.end, %func_exit
  ret i32 %mul13

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3D.67(i8**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %array3D.addr = alloca i8****, align 8
  %columns.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 987502827, i32* %canary
  %rows.addr = alloca i32, align 4
  store i8**** %array3D, i8***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i8***
  %2 = load i8****, i8***** %array3D.addr, align 8
  store i8*** %1, i8**** %2, align 8
  %cmp = icmp eq i8*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8****, i8***** %array3D.addr, align 8
  %6 = load i8***, i8**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8**, i8*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2D(i8*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 987502827
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %mul5

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dint.68(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %idx.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 676704689, i32* %canary
  %frames.addr = alloca i32, align 4
  %array4D.addr = alloca i32****, align 8
  %j = alloca i32, align 4
  store i32**** %array4D, i32***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32****, i32***** %array4D.addr, align 8
  %tobool = icmp ne i32**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32****, i32***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dint(i32*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32****, i32***** %array4D.addr, align 8
  %9 = bitcast i32**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 676704689
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dpel.69(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %canary = alloca i32
  store i32 1664953579, i32* %canary
  %array2D.addr = alloca i16***, align 8
  %i = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 1664953579
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dshort.70(i16**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %array3D.addr = alloca i16****, align 8
  %canary = alloca i32
  store i32 1589344732, i32* %canary
  %columns.addr = alloca i32, align 4
  store i16**** %array3D, i16***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16***
  %2 = load i16****, i16***** %array3D.addr, align 8
  store i16*** %1, i16**** %2, align 8
  %cmp = icmp eq i16*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16****, i16***** %array3D.addr, align 8
  %6 = load i16***, i16**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16**, i16*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dshort(i16*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 1589344732
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dshort.71(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %j = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1780400761, i32* %canary
  %idx.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %array4D.addr = alloca i16*****, align 8
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 1780400761
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem2Dpel.72(i16*** %array2D, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 612256215, i32* %canary
  %columns.addr = alloca i32, align 4
  %array2D.addr = alloca i16***, align 8
  store i16*** %array2D, i16**** %array2D.addr, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16**
  %2 = load i16***, i16**** %array2D.addr, align 8
  store i16** %1, i16*** %2, align 8
  %cmp = icmp eq i16** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rows.addr, align 4
  %4 = load i32, i32* %columns.addr, align 4
  %mul = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 2) #3
  %5 = bitcast i8* %call3 to i16*
  %6 = load i16***, i16**** %array2D.addr, align 8
  %7 = load i16**, i16*** %6, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %7, i64 0
  store i16* %5, i16** %arrayidx, align 8
  %cmp4 = icmp eq i16* %5, null
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @no_mem_exit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16***, i16**** %array2D.addr, align 8
  %11 = load i16**, i16*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i16*, i16** %11, i64 %idxprom
  %13 = load i16*, i16** %arrayidx10, align 8
  %14 = load i32, i32* %columns.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i16, i16* %13, i64 %idx.ext
  %15 = load i16***, i16**** %array2D.addr, align 8
  %16 = load i16**, i16*** %15, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i16*, i16** %16, i64 %idxprom11
  store i16* %add.ptr, i16** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %columns.addr, align 4
  %mul13 = mul nsw i32 %19, %20
  %conv14 = sext i32 %mul13 to i64
  %mul15 = mul i64 %conv14, 2
  %conv16 = trunc i64 %mul15 to i32
  %21 = load i32, i32* %canary
  %22 = icmp eq i32 %21, 612256215
  br i1 %22, label %23, label %func_exit

23:                                               ; preds = %for.end, %func_exit
  ret i32 %conv16

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dpel.73(i16*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i16***, align 8
  %canary = alloca i32
  store i32 1696578595, i32* %canary
  %frames.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dpel(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 1696578595
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3D.74(i8*** %array3D, i32 %frames) #0 {
entry:
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 434337909, i32* %canary
  %array3D.addr = alloca i8***, align 8
  %frames.addr = alloca i32, align 4
  store i8*** %array3D, i8**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i8***, i8**** %array3D.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8***, i8**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8**, i8*** %3, i64 %idxprom
  %5 = load i8**, i8*** %arrayidx, align 8
  call void @free_mem2D(i8** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8***, i8**** %array3D.addr, align 8
  %8 = bitcast i8*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 434337909
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dpel.75(i16*** %array3D, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 2081812218, i32* %canary
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %array3D.addr = alloca i16***, align 8
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dpel(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 2081812218
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dshort.76(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 1527288079, i32* %canary
  %j = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %array4D.addr = alloca i16****, align 8
  %idx.addr = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16****, i16***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16***, i16**** %3, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dshort(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 1527288079
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dshort.77(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %array4D.addr = alloca i16*****, align 8
  %canary = alloca i32
  store i32 701807734, i32* %canary
  %columns.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 701807734
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dint.78(i32**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %j = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1835678857, i32* %canary
  %array4D.addr = alloca i32****, align 8
  store i32**** %array4D, i32***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i32****, i32***** %array4D.addr, align 8
  %tobool = icmp ne i32**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32****, i32***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32***, i32**** %3, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dint(i32*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32****, i32***** %array4D.addr, align 8
  %9 = bitcast i32**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 1835678857
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem4Dshort.79(i16***** %array4D, i32 %idx, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %j = alloca i32, align 4
  %canary = alloca i32
  store i32 1594084065, i32* %canary
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %array4D.addr = alloca i16*****, align 8
  %idx.addr = alloca i32, align 4
  store i16***** %array4D, i16****** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %idx.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i16****
  %2 = load i16*****, i16****** %array4D.addr, align 8
  store i16**** %1, i16***** %2, align 8
  %cmp = icmp eq i16**** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %idx.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*****, i16****** %array4D.addr, align 8
  %6 = load i16****, i16***** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i16***, i16**** %6, i64 %idx.ext
  %8 = load i32, i32* %frames.addr, align 4
  %9 = load i32, i32* %rows.addr, align 4
  %10 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem3Dshort(i16**** %add.ptr, i32 %8, i32 %9, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %idx.addr, align 4
  %13 = load i32, i32* %frames.addr, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* %rows.addr, align 4
  %mul5 = mul nsw i32 %mul, %14
  %15 = load i32, i32* %columns.addr, align 4
  %mul6 = mul nsw i32 %mul5, %15
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 2
  %conv9 = trunc i64 %mul8 to i32
  %16 = load i32, i32* %canary
  %17 = icmp eq i32 %16, 1594084065
  br i1 %17, label %18, label %func_exit

18:                                               ; preds = %for.end, %func_exit
  ret i32 %conv9

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem3Dint64.80(i64**** %array3D, i32 %frames, i32 %rows, i32 %columns) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %array3D.addr = alloca i64****, align 8
  %canary = alloca i32
  store i32 2033664695, i32* %canary
  %frames.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  store i64**** %array3D, i64***** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  %0 = load i32, i32* %frames.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to i64***
  %2 = load i64****, i64***** %array3D.addr, align 8
  store i64*** %1, i64**** %2, align 8
  %cmp = icmp eq i64*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %frames.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64****, i64***** %array3D.addr, align 8
  %6 = load i64***, i64**** %5, align 8
  %7 = load i32, i32* %j, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i64**, i64*** %6, i64 %idx.ext
  %8 = load i32, i32* %rows.addr, align 4
  %9 = load i32, i32* %columns.addr, align 4
  %call4 = call i32 @get_mem2Dint64(i64*** %add.ptr, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %frames.addr, align 4
  %12 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %columns.addr, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv6 = sext i32 %mul5 to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  %14 = load i32, i32* %canary
  %15 = icmp eq i32 %14, 2033664695
  br i1 %15, label %16, label %func_exit

16:                                               ; preds = %for.end, %func_exit
  ret i32 %conv8

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem4Dshort.81(i16**** %array4D, i32 %idx, i32 %frames) #0 {
entry:
  %canary = alloca i32
  store i32 943075644, i32* %canary
  %idx.addr = alloca i32, align 4
  %array4D.addr = alloca i16****, align 8
  %frames.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i16**** %array4D, i16***** %array4D.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16****, i16***** %array4D.addr, align 8
  %tobool = icmp ne i16**** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %idx.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16****, i16***** %array4D.addr, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16***, i16**** %3, i64 %idxprom
  %5 = load i16***, i16**** %arrayidx, align 8
  %6 = load i32, i32* %frames.addr, align 4
  call void @free_mem3Dshort(i16*** %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16****, i16***** %array4D.addr, align 8
  %9 = bitcast i16**** %8 to i8*
  call void @free(i8* %9) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %10 = load i32, i32* %canary
  %11 = icmp eq i32 %10, 943075644
  br i1 %11, label %12, label %func_exit

12:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mem3Dshort.82(i16*** %array3D, i32 %frames) #0 {
entry:
  %array3D.addr = alloca i16***, align 8
  %canary = alloca i32
  store i32 546473899, i32* %canary
  %i = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i16*** %array3D, i16**** %array3D.addr, align 8
  store i32 %frames, i32* %frames.addr, align 4
  %0 = load i16***, i16**** %array3D.addr, align 8
  %tobool = icmp ne i16*** %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %frames.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i16***, i16**** %array3D.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16**, i16*** %3, i64 %idxprom
  %5 = load i16**, i16*** %arrayidx, align 8
  call void @free_mem2Dshort(i16** %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i16***, i16**** %array3D.addr, align 8
  %8 = bitcast i16*** %7 to i8*
  call void @free(i8* %8) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 100)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %9 = load i32, i32* %canary
  %10 = icmp eq i32 %9, 546473899
  br i1 %10, label %11, label %func_exit

11:                                               ; preds = %if.end, %func_exit
  ret void

func_exit:                                        ; preds = %if.end
  call void @detect_breach()
  br label %11
}

declare void @detect_breach()

declare i32 @get_rand()

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"}
