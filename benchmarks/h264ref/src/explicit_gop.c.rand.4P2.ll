; ModuleID = 'explicit_gop.c.rand.4P2.bc'
source_filename = "explicit_gop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
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
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.decoded_picture_buffer = type { %struct.frame_store**, %struct.frame_store**, %struct.frame_store**, i32, i32, i32, i32, i32, i32, i32, %struct.frame_store* }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture* }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@input = external dso_local global %struct.InputParameters*, align 8
@gop_structure = common dso_local global %struct.GOP_DATA* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"create_pyramid:curGOPLevelfrm\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"create_pyramid:curGOPLeveldist\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"init_gop_structure: gop_structure\00", align 1
@errortext = common dso_local global [300 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [84 x i8] c"Slice Type invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"Invalid Frame Order value. Frame position needs to be in [0,%d] range.\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Frame Order value %d in frame %d already used for enhancement frame %d.\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"Slice Type needs to be followed by Display Order. Please check configuration file.\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"Reference_IDC invalid in ExplicitPyramidFormat param. Please check configuration file.\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Invalid QP value. Please check configuration file.\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"Reference_IDC needs to be followed by QP. Please check configuration file.\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"Total number of frames in Enhancement GOP need to be fewer or equal to FrameSkip parameter.\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"ExplicitPyramidFormat is empty. Please check configuration file.\00", align 1
@img = external dso_local global %struct.ImageParameters*, align 8
@start_frame_no_in_this_IGOP = external dso_local global i32, align 4
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@start_tr_in_this_IGOP = external dso_local global i32, align 4
@dpb = external dso_local global %struct.decoded_picture_buffer, align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"poc_based_ref_management: tmp_drpm\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"poc_based_ref_management: tmp_drpm2\00", align 1
@top_pic = common dso_local global %struct.Picture* null, align 8
@bottom_pic = common dso_local global %struct.Picture* null, align 8
@frame_pic = common dso_local global %struct.Picture* null, align 8
@frame_pic2 = common dso_local global %struct.Picture* null, align 8
@frame_pic3 = common dso_local global %struct.Picture* null, align 8
@imgY_org = common dso_local global i16** null, align 8
@imgUV_org = common dso_local global i16*** null, align 8
@img4Y_tmp = common dso_local global i32** null, align 8
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
define dso_local void @create_pyramid() #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_create_pyramid.3, label %ctrl0

func_create_pyramid.3:                            ; preds = %rand_bb
  call void @create_pyramid.3()
  ret void

func_create_pyramid.5:                            ; preds = %ctrl0
  call void @create_pyramid.5()
  ret void

func_create_pyramid.10:                           ; preds = %ctrl1
  call void @create_pyramid.10()
  ret void

func_create_pyramid.16:                           ; preds = %ctrl1
  call void @create_pyramid.16()
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_create_pyramid.5, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_create_pyramid.10, label %func_create_pyramid.16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local void @no_mem_exit(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gop_pyramid(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_gop_pyramid.4, label %ctrl0

func_gop_pyramid.4:                               ; preds = %rand_bb
  call void @gop_pyramid.4(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure)
  ret void

func_gop_pyramid.9:                               ; preds = %ctrl0
  call void @gop_pyramid.9(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure)
  ret void

func_gop_pyramid.11:                              ; preds = %ctrl1
  call void @gop_pyramid.11(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure)
  ret void

func_gop_pyramid.14:                              ; preds = %ctrl1
  call void @gop_pyramid.14(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_gop_pyramid.9, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_gop_pyramid.11, label %func_gop_pyramid.14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_gop_structure() #0 {
entry:
  %max_gopsize = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 55
  %1 = load i32, i32* %PyramidCoding, align 8
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 34
  %3 = load i32, i32* %successive_Bframe, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 5
  %5 = load i32, i32* %jumpd, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %max_gopsize, align 4
  %6 = load i32, i32* %max_gopsize, align 4
  %cmp1 = icmp sgt i32 10, %6
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  %7 = load i32, i32* %max_gopsize, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ 10, %cond.true2 ], [ %7, %cond.false3 ]
  %conv = sext i32 %cond5 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 24) #5
  %8 = bitcast i8* %call to %struct.GOP_DATA*
  store %struct.GOP_DATA* %8, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %cmp6 = icmp eq %struct.GOP_DATA* null, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end4
  call void @no_mem_exit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_gop_structure() #0 {
entry:
  %0 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %tobool = icmp ne %struct.GOP_DATA* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %2 = bitcast %struct.GOP_DATA* %1 to i8*
  call void @free(i8* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_gop_structure() #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_interpret_gop_structure.7, label %ctrl0

func_interpret_gop_structure.7:                   ; preds = %rand_bb
  call void @interpret_gop_structure.7()
  ret void

func_interpret_gop_structure.8:                   ; preds = %ctrl0
  call void @interpret_gop_structure.8()
  ret void

func_interpret_gop_structure.12:                  ; preds = %ctrl1
  call void @interpret_gop_structure.12()
  ret void

func_interpret_gop_structure.13:                  ; preds = %ctrl1
  call void @interpret_gop_structure.13()
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_interpret_gop_structure.8, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_interpret_gop_structure.12, label %func_interpret_gop_structure.13
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local void @error(i8*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_enhancement_layer() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end276

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 0
  %3 = load i32, i32* %number, align 8
  %4 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub = sub nsw i32 %3, %4
  %cmp1 = icmp sgt i32 %sub, 0
  br i1 %cmp1, label %if.then, label %if.end276

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 6
  store i32 1, i32* %type, align 8
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 99
  %7 = load i32, i32* %NumFramesInELSubSeq, align 8
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 86
  store i32 0, i32* %layer, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %layer4 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 86
  store i32 1, i32* %layer4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 54
  %11 = load i32, i32* %BRefPictures, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %if.end
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 55
  %13 = load i32, i32* %PyramidCoding, align 8
  %cmp7 = icmp eq i32 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 105
  %15 = load i32, i32* %frame_num, align 8
  %inc = add i32 %15, 1
  store i32 %inc, i32* %frame_num, align 8
  %16 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add = add i32 %16, 4
  %shl = shl i32 1, %add
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 105
  %18 = load i32, i32* %frame_num9, align 8
  %rem = urem i32 %18, %shl
  store i32 %rem, i32* %frame_num9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true6, %if.end
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc, align 8
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding11 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 55
  %21 = load i32, i32* %PyramidCoding11, align 8
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then12, label %if.else153

if.then12:                                        ; preds = %if.end10
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 67
  store i32 1, i32* %b_frame_to_code, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 67
  %24 = load i32, i32* %b_frame_to_code13, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe14 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 34
  %26 = load i32, i32* %successive_Bframe14, align 4
  %cmp15 = icmp sle i32 %24, %26
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc16, align 8
  %28 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 67
  %30 = load i32, i32* %b_frame_to_code17, align 4
  %sub18 = sub nsw i32 %30, 1
  %idxprom = sext i32 %sub18 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %28, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  %31 = load i32, i32* %slice_type, align 4
  %32 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %32, i32 0, i32 6
  store i32 %31, i32* %type19, align 8
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code20 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 67
  %35 = load i32, i32* %b_frame_to_code20, align 4
  %sub21 = sub nsw i32 %35, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom22
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx23, i32 0, i32 2
  %36 = load i32, i32* %reference_idc, align 4
  %cmp24 = icmp eq i32 %36, 2
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %for.body
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc26 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 113
  store i32 1, i32* %nal_reference_idc26, align 8
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 105
  %39 = load i32, i32* %frame_num27, align 8
  %inc28 = add i32 %39, 1
  store i32 %inc28, i32* %frame_num27, align 8
  %40 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add29 = add i32 %40, 4
  %shl30 = shl i32 1, %add29
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 105
  %42 = load i32, i32* %frame_num31, align 8
  %rem32 = urem i32 %42, %shl30
  store i32 %rem32, i32* %frame_num31, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %for.body
  %43 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %43, i32 0, i32 5
  %44 = load i32, i32* %jumpd, align 4
  %add34 = add nsw i32 %44, 1
  %conv = sitofp i32 %add34 to double
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe35 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe35, align 4
  %conv36 = sitofp i32 %46 to double
  %add37 = fadd double %conv36, 1.000000e+00
  %div = fdiv double %conv, %add37
  %47 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %47, i32 0, i32 65
  store double %div, double* %b_interval, align 8
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding38 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 55
  %49 = load i32, i32* %PyramidCoding38, align 8
  %cmp39 = icmp eq i32 %49, 3
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end33
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end33
  %51 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %51, i32 0, i32 31
  %52 = load i32, i32* %intra_period, align 8
  %tobool44 = icmp ne i32 %52, 0
  br i1 %tobool44, label %land.lhs.true45, label %if.else66

land.lhs.true45:                                  ; preds = %if.end43
  %53 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %53, i32 0, i32 32
  %54 = load i32, i32* %idr_enable, align 4
  %tobool46 = icmp ne i32 %54, 0
  br i1 %tobool46, label %if.then47, label %if.else66

if.then47:                                        ; preds = %land.lhs.true45
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number48 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 0
  %56 = load i32, i32* %number48, align 8
  %57 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub49 = sub nsw i32 %56, %57
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 31
  %59 = load i32, i32* %intra_period50, align 8
  %rem51 = srem i32 %sub49, %59
  %sub52 = sub nsw i32 %rem51, 1
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 5
  %61 = load i32, i32* %jumpd53, align 4
  %add54 = add nsw i32 %61, 1
  %mul = mul nsw i32 %sub52, %add54
  %62 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %62, i32 0, i32 65
  %63 = load double, double* %b_interval55, align 8
  %64 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 67
  %66 = load i32, i32* %b_frame_to_code56, align 4
  %sub57 = sub nsw i32 %66, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %64, i64 %idxprom58
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx59, i32 0, i32 1
  %67 = load i32, i32* %display_no, align 4
  %add60 = add nsw i32 1, %67
  %conv61 = sitofp i32 %add60 to double
  %mul62 = fmul double %63, %conv61
  %conv63 = fptosi double %mul62 to i32
  %add64 = add nsw i32 %mul, %conv63
  %mul65 = mul nsw i32 2, %add64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 101
  store i32 %mul65, i32* %toppoc, align 8
  br label %if.end86

if.else66:                                        ; preds = %land.lhs.true45, %if.end43
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number67 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 0
  %70 = load i32, i32* %number67, align 8
  %71 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub68 = sub nsw i32 %70, %71
  %sub69 = sub nsw i32 %sub68, 1
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd70 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 5
  %73 = load i32, i32* %jumpd70, align 4
  %add71 = add nsw i32 %73, 1
  %mul72 = mul nsw i32 %sub69, %add71
  %74 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %74, i32 0, i32 65
  %75 = load double, double* %b_interval73, align 8
  %76 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 67
  %78 = load i32, i32* %b_frame_to_code74, align 4
  %sub75 = sub nsw i32 %78, 1
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %76, i64 %idxprom76
  %display_no78 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx77, i32 0, i32 1
  %79 = load i32, i32* %display_no78, align 4
  %add79 = add nsw i32 1, %79
  %conv80 = sitofp i32 %add79 to double
  %mul81 = fmul double %75, %conv80
  %conv82 = fptosi double %mul81 to i32
  %add83 = add nsw i32 %mul72, %conv82
  %mul84 = mul nsw i32 2, %add83
  %80 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc85 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %80, i32 0, i32 101
  store i32 %mul84, i32* %toppoc85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else66, %if.then47
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 67
  %82 = load i32, i32* %b_frame_to_code87, align 4
  %cmp88 = icmp eq i32 %82, 1
  br i1 %cmp88, label %if.then90, label %if.else101

if.then90:                                        ; preds = %if.end86
  %83 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc91 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %83, i32 0, i32 101
  %84 = load i32, i32* %toppoc91, align 8
  %85 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number92 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 0
  %87 = load i32, i32* %number92, align 8
  %88 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub93 = sub nsw i32 %87, %88
  %89 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd94 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %89, i32 0, i32 5
  %90 = load i32, i32* %jumpd94, align 4
  %add95 = add nsw i32 %90, 1
  %mul96 = mul nsw i32 %sub93, %add95
  %add97 = add nsw i32 %85, %mul96
  %mul98 = mul nsw i32 2, %add97
  %sub99 = sub nsw i32 %84, %mul98
  %91 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %91, i32 0, i32 99
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt, i64 0, i64 0
  store i32 %sub99, i32* %arrayidx100, align 4
  br label %if.end126

if.else101:                                       ; preds = %if.end86
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 101
  %93 = load i32, i32* %toppoc102, align 8
  %94 = load i32, i32* @start_tr_in_this_IGOP, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 0
  %96 = load i32, i32* %number103, align 8
  %97 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub104 = sub nsw i32 %96, %97
  %sub105 = sub nsw i32 %sub104, 1
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd106 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 5
  %99 = load i32, i32* %jumpd106, align 4
  %add107 = add nsw i32 %99, 1
  %mul108 = mul nsw i32 %sub105, %add107
  %add109 = add nsw i32 %94, %mul108
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 65
  %101 = load double, double* %b_interval110, align 8
  %mul111 = fmul double 2.000000e+00, %101
  %102 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 67
  %104 = load i32, i32* %b_frame_to_code112, align 4
  %sub113 = sub nsw i32 %104, 2
  %idxprom114 = sext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %102, i64 %idxprom114
  %display_no116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx115, i32 0, i32 1
  %105 = load i32, i32* %display_no116, align 4
  %add117 = add nsw i32 1, %105
  %conv118 = sitofp i32 %add117 to double
  %mul119 = fmul double %mul111, %conv118
  %conv120 = fptosi double %mul119 to i32
  %add121 = add nsw i32 %add109, %conv120
  %mul122 = mul nsw i32 2, %add121
  %sub123 = sub nsw i32 %93, %mul122
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 99
  %arrayidx125 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt124, i64 0, i64 0
  store i32 %sub123, i32* %arrayidx125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else101, %if.then90
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 91
  %108 = load i32, i32* %PicInterlace, align 8
  %cmp127 = icmp eq i32 %108, 0
  br i1 %cmp127, label %land.lhs.true129, label %if.else134

land.lhs.true129:                                 ; preds = %if.end126
  %109 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %109, i32 0, i32 92
  %110 = load i32, i32* %MbInterlace, align 4
  %cmp130 = icmp eq i32 %110, 0
  br i1 %cmp130, label %if.then132, label %if.else134

if.then132:                                       ; preds = %land.lhs.true129
  %111 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %111, i32 0, i32 101
  %112 = load i32, i32* %toppoc133, align 8
  %113 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %113, i32 0, i32 102
  store i32 %112, i32* %bottompoc, align 4
  br label %if.end138

if.else134:                                       ; preds = %land.lhs.true129, %if.end126
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc135 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 101
  %115 = load i32, i32* %toppoc135, align 8
  %add136 = add nsw i32 %115, 1
  %116 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %116, i32 0, i32 102
  store i32 %add136, i32* %bottompoc137, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %if.then132
  %117 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %117, i32 0, i32 101
  %118 = load i32, i32* %toppoc139, align 8
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc140 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 102
  %120 = load i32, i32* %bottompoc140, align 4
  %cmp141 = icmp slt i32 %118, %120
  br i1 %cmp141, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end138
  %121 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %121, i32 0, i32 101
  %122 = load i32, i32* %toppoc143, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end138
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 102
  %124 = load i32, i32* %bottompoc144, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %122, %cond.true ], [ %124, %cond.false ]
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 103
  store i32 %cond, i32* %framepoc, align 8
  %126 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt145 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %126, i32 0, i32 99
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt145, i64 0, i64 1
  store i32 0, i32* %arrayidx146, align 4
  %call = call i32 (...) @encode_one_frame()
  %127 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %127, i32 0, i32 125
  %128 = load i32, i32* %ReportFrameStats, align 4
  %tobool147 = icmp ne i32 %128, 0
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %cond.end
  call void (...) @report_frame_statistic()
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end149
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code150 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 67
  %130 = load i32, i32* %b_frame_to_code150, align 4
  %inc151 = add nsw i32 %130, 1
  store i32 %inc151, i32* %b_frame_to_code150, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 67
  store i32 0, i32* %b_frame_to_code152, align 4
  br label %if.end275

if.else153:                                       ; preds = %if.end10
  %132 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code154 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %132, i32 0, i32 67
  store i32 1, i32* %b_frame_to_code154, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc271, %if.else153
  %133 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code156 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %133, i32 0, i32 67
  %134 = load i32, i32* %b_frame_to_code156, align 4
  %135 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe157 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %135, i32 0, i32 34
  %136 = load i32, i32* %successive_Bframe157, align 4
  %cmp158 = icmp sle i32 %134, %136
  br i1 %cmp158, label %for.body160, label %for.end274

for.body160:                                      ; preds = %for.cond155
  %137 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc161 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %137, i32 0, i32 113
  store i32 0, i32* %nal_reference_idc161, align 8
  %138 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures162 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %138, i32 0, i32 54
  %139 = load i32, i32* %BRefPictures162, align 4
  %cmp163 = icmp eq i32 %139, 1
  br i1 %cmp163, label %if.then165, label %if.end173

if.then165:                                       ; preds = %for.body160
  %140 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %nal_reference_idc166 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %140, i32 0, i32 113
  store i32 1, i32* %nal_reference_idc166, align 8
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 105
  %142 = load i32, i32* %frame_num167, align 8
  %inc168 = add i32 %142, 1
  store i32 %inc168, i32* %frame_num167, align 8
  %143 = load i32, i32* @log2_max_frame_num_minus4, align 4
  %add169 = add i32 %143, 4
  %shl170 = shl i32 1, %add169
  %144 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %frame_num171 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %144, i32 0, i32 105
  %145 = load i32, i32* %frame_num171, align 8
  %rem172 = urem i32 %145, %shl170
  store i32 %rem172, i32* %frame_num171, align 8
  br label %if.end173

if.end173:                                        ; preds = %if.then165, %for.body160
  %146 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd174 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %146, i32 0, i32 5
  %147 = load i32, i32* %jumpd174, align 4
  %add175 = add nsw i32 %147, 1
  %conv176 = sitofp i32 %add175 to double
  %148 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe177 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %148, i32 0, i32 34
  %149 = load i32, i32* %successive_Bframe177, align 4
  %conv178 = sitofp i32 %149 to double
  %add179 = fadd double %conv178, 1.000000e+00
  %div180 = fdiv double %conv176, %add179
  %150 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %150, i32 0, i32 65
  store double %div180, double* %b_interval181, align 8
  %151 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding182 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %151, i32 0, i32 55
  %152 = load i32, i32* %PyramidCoding182, align 8
  %cmp183 = icmp eq i32 %152, 3
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %if.end173
  %153 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %153, i32 0, i32 65
  store double 1.000000e+00, double* %b_interval186, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.end173
  %154 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period188 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %154, i32 0, i32 31
  %155 = load i32, i32* %intra_period188, align 8
  %tobool189 = icmp ne i32 %155, 0
  br i1 %tobool189, label %land.lhs.true190, label %if.else210

land.lhs.true190:                                 ; preds = %if.end187
  %156 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %idr_enable191 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %156, i32 0, i32 32
  %157 = load i32, i32* %idr_enable191, align 4
  %tobool192 = icmp ne i32 %157, 0
  br i1 %tobool192, label %if.then193, label %if.else210

if.then193:                                       ; preds = %land.lhs.true190
  %158 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %158, i32 0, i32 0
  %159 = load i32, i32* %number194, align 8
  %160 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub195 = sub nsw i32 %159, %160
  %161 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %intra_period196 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %161, i32 0, i32 31
  %162 = load i32, i32* %intra_period196, align 8
  %rem197 = srem i32 %sub195, %162
  %sub198 = sub nsw i32 %rem197, 1
  %163 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd199 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %163, i32 0, i32 5
  %164 = load i32, i32* %jumpd199, align 4
  %add200 = add nsw i32 %164, 1
  %mul201 = mul nsw i32 %sub198, %add200
  %165 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval202 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %165, i32 0, i32 65
  %166 = load double, double* %b_interval202, align 8
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 67
  %168 = load i32, i32* %b_frame_to_code203, align 4
  %conv204 = sitofp i32 %168 to double
  %mul205 = fmul double %166, %conv204
  %conv206 = fptosi double %mul205 to i32
  %add207 = add nsw i32 %mul201, %conv206
  %mul208 = mul nsw i32 2, %add207
  %169 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc209 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %169, i32 0, i32 101
  store i32 %mul208, i32* %toppoc209, align 8
  br label %if.end225

if.else210:                                       ; preds = %land.lhs.true190, %if.end187
  %170 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %number211 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %170, i32 0, i32 0
  %171 = load i32, i32* %number211, align 8
  %172 = load i32, i32* @start_frame_no_in_this_IGOP, align 4
  %sub212 = sub nsw i32 %171, %172
  %sub213 = sub nsw i32 %sub212, 1
  %173 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd214 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %173, i32 0, i32 5
  %174 = load i32, i32* %jumpd214, align 4
  %add215 = add nsw i32 %174, 1
  %mul216 = mul nsw i32 %sub213, %add215
  %175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_interval217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %175, i32 0, i32 65
  %176 = load double, double* %b_interval217, align 8
  %177 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %177, i32 0, i32 67
  %178 = load i32, i32* %b_frame_to_code218, align 4
  %conv219 = sitofp i32 %178 to double
  %mul220 = fmul double %176, %conv219
  %conv221 = fptosi double %mul220 to i32
  %add222 = add nsw i32 %mul216, %conv221
  %mul223 = mul nsw i32 2, %add222
  %179 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %179, i32 0, i32 101
  store i32 %mul223, i32* %toppoc224, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.else210, %if.then193
  %180 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PicInterlace226 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %180, i32 0, i32 91
  %181 = load i32, i32* %PicInterlace226, align 8
  %cmp227 = icmp eq i32 %181, 0
  br i1 %cmp227, label %land.lhs.true229, label %if.else236

land.lhs.true229:                                 ; preds = %if.end225
  %182 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %MbInterlace230 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %182, i32 0, i32 92
  %183 = load i32, i32* %MbInterlace230, align 4
  %cmp231 = icmp eq i32 %183, 0
  br i1 %cmp231, label %if.then233, label %if.else236

if.then233:                                       ; preds = %land.lhs.true229
  %184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %184, i32 0, i32 101
  %185 = load i32, i32* %toppoc234, align 8
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc235 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 102
  store i32 %185, i32* %bottompoc235, align 4
  br label %if.end240

if.else236:                                       ; preds = %land.lhs.true229, %if.end225
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc237 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 101
  %188 = load i32, i32* %toppoc237, align 8
  %add238 = add nsw i32 %188, 1
  %189 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %189, i32 0, i32 102
  store i32 %add238, i32* %bottompoc239, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.else236, %if.then233
  %190 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %190, i32 0, i32 101
  %191 = load i32, i32* %toppoc241, align 8
  %192 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc242 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %192, i32 0, i32 102
  %193 = load i32, i32* %bottompoc242, align 4
  %cmp243 = icmp slt i32 %191, %193
  br i1 %cmp243, label %cond.true245, label %cond.false247

cond.true245:                                     ; preds = %if.end240
  %194 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %toppoc246 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %194, i32 0, i32 101
  %195 = load i32, i32* %toppoc246, align 8
  br label %cond.end249

cond.false247:                                    ; preds = %if.end240
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bottompoc248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 102
  %197 = load i32, i32* %bottompoc248, align 4
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false247, %cond.true245
  %cond250 = phi i32 [ %195, %cond.true245 ], [ %197, %cond.false247 ]
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %framepoc251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 103
  store i32 %cond250, i32* %framepoc251, align 8
  %199 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BRefPictures252 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %199, i32 0, i32 54
  %200 = load i32, i32* %BRefPictures252, align 4
  %tobool253 = icmp ne i32 %200, 0
  br i1 %tobool253, label %if.else260, label %if.then254

if.then254:                                       ; preds = %cond.end249
  %201 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code255 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %201, i32 0, i32 67
  %202 = load i32, i32* %b_frame_to_code255, align 4
  %sub256 = sub nsw i32 %202, 1
  %mul257 = mul nsw i32 2, %sub256
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 99
  %arrayidx259 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt258, i64 0, i64 0
  store i32 %mul257, i32* %arrayidx259, align 4
  br label %if.end263

if.else260:                                       ; preds = %cond.end249
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 99
  %arrayidx262 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt261, i64 0, i64 0
  store i32 -2, i32* %arrayidx262, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.else260, %if.then254
  %205 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %delta_pic_order_cnt264 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %205, i32 0, i32 99
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %delta_pic_order_cnt264, i64 0, i64 1
  store i32 0, i32* %arrayidx265, align 4
  %call266 = call i32 (...) @encode_one_frame()
  %206 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ReportFrameStats267 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %206, i32 0, i32 125
  %207 = load i32, i32* %ReportFrameStats267, align 4
  %tobool268 = icmp ne i32 %207, 0
  br i1 %tobool268, label %if.then269, label %if.end270

if.then269:                                       ; preds = %if.end263
  call void (...) @report_frame_statistic()
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %if.end263
  br label %for.inc271

for.inc271:                                       ; preds = %if.end270
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code272 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 67
  %209 = load i32, i32* %b_frame_to_code272, align 4
  %inc273 = add nsw i32 %209, 1
  store i32 %inc273, i32* %b_frame_to_code272, align 4
  br label %for.cond155

for.end274:                                       ; preds = %for.cond155
  br label %if.end275

if.end275:                                        ; preds = %for.end274, %for.end
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %land.lhs.true, %entry
  %210 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %b_frame_to_code277 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %210, i32 0, i32 67
  store i32 0, i32* %b_frame_to_code277, align 4
  ret void
}

declare dso_local i32 @encode_one_frame(...) #2

declare dso_local void @report_frame_statistic(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poc_based_ref_management(i32 %current_pic_num) #0 {
rand_bb:
  %0 = call i32 @get_rand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_poc_based_ref_management.1, label %ctrl0

func_poc_based_ref_management.1:                  ; preds = %rand_bb
  call void @poc_based_ref_management.1(i32 %current_pic_num)
  ret void

func_poc_based_ref_management.2:                  ; preds = %ctrl0
  call void @poc_based_ref_management.2(i32 %current_pic_num)
  ret void

func_poc_based_ref_management.6:                  ; preds = %ctrl1
  call void @poc_based_ref_management.6(i32 %current_pic_num)
  ret void

func_poc_based_ref_management.15:                 ; preds = %ctrl1
  call void @poc_based_ref_management.15(i32 %current_pic_num)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_poc_based_ref_management.2, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_poc_based_ref_management.6, label %func_poc_based_ref_management.15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poc_based_ref_management.1(i32 %current_pic_num) #0 {
entry:
  %current_pic_num.addr = alloca i32, align 4
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  %min_poc = alloca i32, align 4
  %canary = alloca i32
  store i32 834721183, i32* %canary
  %pic_num = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %i = alloca i32, align 4
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %6, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %14, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %land.lhs.true8
  %19 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %19, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %25 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %24, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 8
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #5
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 8
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then2, %if.then
  %42 = load i32, i32* %canary
  %43 = icmp eq i32 %42, 834721183
  br i1 %43, label %44, label %func_exit

44:                                               ; preds = %return, %func_exit
  ret void

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poc_based_ref_management.2(i32 %current_pic_num) #0 {
entry:
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 632897955, i32* %canary
  %pic_num = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %current_pic_num.addr = alloca i32, align 4
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  %min_poc = alloca i32, align 4
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %6, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %14, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %land.lhs.true8
  %19 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %19, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %25 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %24, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 8
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #5
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 8
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then2, %if.then
  %42 = load i32, i32* %canary
  %43 = icmp eq i32 %42, 632897955
  br i1 %43, label %44, label %func_exit

44:                                               ; preds = %return, %func_exit
  ret void

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_pyramid.3() #0 {
entry:
  %prvlevelrefs = alloca i32, align 4
  %i28 = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %curGOPLeveldist = alloca i32*, align 8
  %curlevel = alloca i32, align 4
  %levelrefs = alloca i32, align 4
  %centerB = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tempnum = alloca i32, align 4
  %canary = alloca i32
  store i32 1042719095, i32* %canary
  %Bframes = alloca i32, align 4
  %GOPlevels = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom7
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %16 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %16, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %18, i64 %idxprom11
  %slice_type13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 0
  store i32 1, i32* %slice_type13, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %20, %21
  %mul14 = mul nsw i32 %sub, 2
  %22 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %22, i64 %idxprom15
  %display_no17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx16, i32 0, i32 1
  store i32 %mul14, i32* %display_no17, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom18
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 4
  store i32 1, i32* %pyramid_layer20, align 4
  %26 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %26, i64 %idxprom21
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %reference_idc23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end200

if.else24:                                        ; preds = %entry
  store i32 0, i32* %GOPlevels, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 34
  %30 = load i32, i32* %successive_Bframe25, align 4
  store i32 %30, i32* %Bframes, align 4
  %31 = load i32, i32* %GOPlevels, align 4
  store i32 %31, i32* %curlevel, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %successive_Bframe26, align 4
  store i32 %33, i32* %prvlevelrefs, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %successive_Bframe27, align 4
  store i32 %35, i32* %levelrefs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else24
  %36 = load i32, i32* %Bframes, align 4
  %cmp29 = icmp sgt i32 %36, 2
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Bframes, align 4
  %div30 = sdiv i32 %37, 2
  store i32 %div30, i32* %Bframes, align 4
  %38 = load i32, i32* %GOPlevels, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %GOPlevels, align 4
  store i32 %39, i32* %curlevel, align 4
  %40 = load i32, i32* %GOPlevels, align 4
  %add32 = add nsw i32 %40, 1
  %conv = sext i32 %add32 to i64
  %mul33 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul33) #5
  %41 = bitcast i8* %call to i32*
  store i32* %41, i32** %curGOPLevelfrm, align 8
  %cmp34 = icmp eq i32* null, %41
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  %42 = load i32, i32* %GOPlevels, align 4
  %add38 = add nsw i32 %42, 1
  %conv39 = sext i32 %add38 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @malloc(i64 %mul40) #5
  %43 = bitcast i8* %call41 to i32*
  store i32* %43, i32** %curGOPLeveldist, align 8
  %cmp42 = icmp eq i32* null, %43
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end37
  store i32 0, i32* %i28, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %if.end45
  %44 = load i32, i32* %i28, align 4
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe47, align 4
  %cmp48 = icmp slt i32 %44, %46
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond46
  %47 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %48 = load i32, i32* %i28, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %47, i64 %idxprom51
  %display_no53 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx52, i32 0, i32 1
  store i32 0, i32* %display_no53, align 4
  %49 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %50 = load i32, i32* %i28, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %49, i64 %idxprom54
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %slice_type56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %51 = load i32, i32* %i28, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i28, align 4
  br label %for.cond46

for.end59:                                        ; preds = %for.cond46
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %for.end59
  %52 = load i32, i32* %levelrefs, align 4
  %cmp61 = icmp sgt i32 %52, 2
  br i1 %cmp61, label %while.body63, label %while.end72

while.body63:                                     ; preds = %while.cond60
  %53 = load i32, i32* %levelrefs, align 4
  %div64 = sdiv i32 %53, 2
  store i32 %div64, i32* %levelrefs, align 4
  %54 = load i32, i32* %prvlevelrefs, align 4
  %55 = load i32, i32* %levelrefs, align 4
  %sub65 = sub nsw i32 %54, %55
  %56 = load i32*, i32** %curGOPLevelfrm, align 8
  %57 = load i32, i32* %curlevel, align 4
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %56, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx67, align 4
  %58 = load i32, i32* %levelrefs, align 4
  %59 = load i32, i32* %levelrefs, align 4
  %rem = srem i32 %59, 2
  %add68 = add nsw i32 %58, %rem
  %60 = load i32*, i32** %curGOPLeveldist, align 8
  %61 = load i32, i32* %GOPlevels, align 4
  %62 = load i32, i32* %curlevel, align 4
  %sub69 = sub nsw i32 %61, %62
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32, i32* %60, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4
  %63 = load i32, i32* %levelrefs, align 4
  store i32 %63, i32* %prvlevelrefs, align 4
  %64 = load i32, i32* %curlevel, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %curlevel, align 4
  br label %while.cond60

while.end72:                                      ; preds = %while.cond60
  %65 = load i32, i32* %levelrefs, align 4
  %66 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %arrayidx73, align 4
  %67 = load i32, i32* %levelrefs, align 4
  %68 = load i32, i32* %levelrefs, align 4
  %rem74 = srem i32 %68, 2
  %add75 = add nsw i32 %67, %rem74
  %69 = load i32*, i32** %curGOPLeveldist, align 8
  %70 = load i32, i32* %GOPlevels, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %69, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc89, %while.end72
  %71 = load i32, i32* %j, align 4
  %72 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %71, %73
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond78
  %74 = load i32, i32* %GOPlevels, align 4
  %75 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %75, 1
  %76 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx84, align 4
  %mul85 = mul nsw i32 %add83, %77
  %sub86 = sub nsw i32 %mul85, 1
  %78 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %79, 1
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  call void @gop_pyramid(i32 %74, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %80)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %81 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond78

for.end91:                                        ; preds = %for.cond78
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 34
  %83 = load i32, i32* %successive_Bframe92, align 4
  store i32 %83, i32* %j, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc197, %for.end91
  %84 = load i32, i32* %j, align 4
  %cmp94 = icmp sgt i32 %84, 0
  br i1 %cmp94, label %for.body96, label %for.end199

for.body96:                                       ; preds = %for.cond93
  store i32 1, i32* %i28, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc194, %for.body96
  %85 = load i32, i32* %i28, align 4
  %86 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body100, label %for.end196

for.body100:                                      ; preds = %for.cond97
  %87 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %88 = load i32, i32* %i28, align 4
  %idxprom101 = sext i32 %88 to i64
  %arrayidx102 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %87, i64 %idxprom101
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx102, i32 0, i32 4
  %89 = load i32, i32* %pyramid_layer103, align 4
  %90 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %91 = load i32, i32* %i28, align 4
  %sub104 = sub nsw i32 %91, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %90, i64 %idxprom105
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx106, i32 0, i32 4
  %92 = load i32, i32* %pyramid_layer107, align 4
  %cmp108 = icmp sgt i32 %89, %92
  br i1 %cmp108, label %if.then110, label %if.end193

if.then110:                                       ; preds = %for.body100
  %93 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %94 = load i32, i32* %i28, align 4
  %sub111 = sub nsw i32 %94, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %93, i64 %idxprom112
  %display_no114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx113, i32 0, i32 1
  %95 = load i32, i32* %display_no114, align 4
  store i32 %95, i32* %tempnum, align 4
  %96 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %97 = load i32, i32* %i28, align 4
  %idxprom115 = sext i32 %97 to i64
  %arrayidx116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %96, i64 %idxprom115
  %display_no117 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx116, i32 0, i32 1
  %98 = load i32, i32* %display_no117, align 4
  %99 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %100 = load i32, i32* %i28, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %99, i64 %idxprom119
  %display_no121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx120, i32 0, i32 1
  store i32 %98, i32* %display_no121, align 4
  %101 = load i32, i32* %tempnum, align 4
  %102 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %103 = load i32, i32* %i28, align 4
  %idxprom122 = sext i32 %103 to i64
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %102, i64 %idxprom122
  %display_no124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 1
  store i32 %101, i32* %display_no124, align 4
  %104 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %105 = load i32, i32* %i28, align 4
  %sub125 = sub nsw i32 %105, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %104, i64 %idxprom126
  %pyramid_layer128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx127, i32 0, i32 4
  %106 = load i32, i32* %pyramid_layer128, align 4
  store i32 %106, i32* %tempnum, align 4
  %107 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %108 = load i32, i32* %i28, align 4
  %idxprom129 = sext i32 %108 to i64
  %arrayidx130 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %107, i64 %idxprom129
  %pyramid_layer131 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx130, i32 0, i32 4
  %109 = load i32, i32* %pyramid_layer131, align 4
  %110 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %111 = load i32, i32* %i28, align 4
  %sub132 = sub nsw i32 %111, 1
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %110, i64 %idxprom133
  %pyramid_layer135 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx134, i32 0, i32 4
  store i32 %109, i32* %pyramid_layer135, align 4
  %112 = load i32, i32* %tempnum, align 4
  %113 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %114 = load i32, i32* %i28, align 4
  %idxprom136 = sext i32 %114 to i64
  %arrayidx137 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %113, i64 %idxprom136
  %pyramid_layer138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx137, i32 0, i32 4
  store i32 %112, i32* %pyramid_layer138, align 4
  %115 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %116 = load i32, i32* %i28, align 4
  %sub139 = sub nsw i32 %116, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %115, i64 %idxprom140
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx141, i32 0, i32 2
  %117 = load i32, i32* %reference_idc142, align 4
  store i32 %117, i32* %tempnum, align 4
  %118 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %119 = load i32, i32* %i28, align 4
  %idxprom143 = sext i32 %119 to i64
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %118, i64 %idxprom143
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx144, i32 0, i32 2
  %120 = load i32, i32* %reference_idc145, align 4
  %121 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %122 = load i32, i32* %i28, align 4
  %sub146 = sub nsw i32 %122, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %121, i64 %idxprom147
  %reference_idc149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 2
  store i32 %120, i32* %reference_idc149, align 4
  %123 = load i32, i32* %tempnum, align 4
  %124 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %125 = load i32, i32* %i28, align 4
  %idxprom150 = sext i32 %125 to i64
  %arrayidx151 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %124, i64 %idxprom150
  %reference_idc152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx151, i32 0, i32 2
  store i32 %123, i32* %reference_idc152, align 4
  %126 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %127 = load i32, i32* %i28, align 4
  %sub153 = sub nsw i32 %127, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %126, i64 %idxprom154
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx155, i32 0, i32 0
  %128 = load i32, i32* %slice_type156, align 4
  store i32 %128, i32* %tempnum, align 4
  %129 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %130 = load i32, i32* %i28, align 4
  %idxprom157 = sext i32 %130 to i64
  %arrayidx158 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %129, i64 %idxprom157
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx158, i32 0, i32 0
  %131 = load i32, i32* %slice_type159, align 4
  %132 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %133 = load i32, i32* %i28, align 4
  %sub160 = sub nsw i32 %133, 1
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %132, i64 %idxprom161
  %slice_type163 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx162, i32 0, i32 0
  store i32 %131, i32* %slice_type163, align 4
  %134 = load i32, i32* %tempnum, align 4
  %135 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %136 = load i32, i32* %i28, align 4
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %135, i64 %idxprom164
  %slice_type166 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx165, i32 0, i32 0
  store i32 %134, i32* %slice_type166, align 4
  %137 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %138 = load i32, i32* %i28, align 4
  %sub167 = sub nsw i32 %138, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %137, i64 %idxprom168
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx169, i32 0, i32 3
  %139 = load i32, i32* %slice_qp, align 4
  store i32 %139, i32* %tempnum, align 4
  %140 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %141 = load i32, i32* %i28, align 4
  %idxprom170 = sext i32 %141 to i64
  %arrayidx171 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %140, i64 %idxprom170
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx171, i32 0, i32 3
  %142 = load i32, i32* %slice_qp172, align 4
  %143 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %144 = load i32, i32* %i28, align 4
  %sub173 = sub nsw i32 %144, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %143, i64 %idxprom174
  %slice_qp176 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx175, i32 0, i32 3
  store i32 %142, i32* %slice_qp176, align 4
  %145 = load i32, i32* %tempnum, align 4
  %146 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %147 = load i32, i32* %i28, align 4
  %idxprom177 = sext i32 %147 to i64
  %arrayidx178 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %146, i64 %idxprom177
  %slice_qp179 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx178, i32 0, i32 3
  store i32 %145, i32* %slice_qp179, align 4
  %148 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %149 = load i32, i32* %i28, align 4
  %sub180 = sub nsw i32 %149, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %148, i64 %idxprom181
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx182, i32 0, i32 5
  %150 = load i32, i32* %pyramidPocDelta, align 4
  store i32 %150, i32* %tempnum, align 4
  %151 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %152 = load i32, i32* %i28, align 4
  %idxprom183 = sext i32 %152 to i64
  %arrayidx184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %151, i64 %idxprom183
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx184, i32 0, i32 5
  %153 = load i32, i32* %pyramidPocDelta185, align 4
  %154 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %155 = load i32, i32* %i28, align 4
  %sub186 = sub nsw i32 %155, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %154, i64 %idxprom187
  %pyramidPocDelta189 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx188, i32 0, i32 5
  store i32 %153, i32* %pyramidPocDelta189, align 4
  %156 = load i32, i32* %tempnum, align 4
  %157 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %158 = load i32, i32* %i28, align 4
  %idxprom190 = sext i32 %158 to i64
  %arrayidx191 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %157, i64 %idxprom190
  %pyramidPocDelta192 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx191, i32 0, i32 5
  store i32 %156, i32* %pyramidPocDelta192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then110, %for.body100
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193
  %159 = load i32, i32* %i28, align 4
  %inc195 = add nsw i32 %159, 1
  store i32 %inc195, i32* %i28, align 4
  br label %for.cond97

for.end196:                                       ; preds = %for.cond97
  br label %for.inc197

for.inc197:                                       ; preds = %for.end196
  %160 = load i32, i32* %j, align 4
  %dec198 = add nsw i32 %160, -1
  store i32 %dec198, i32* %j, align 4
  br label %for.cond93

for.end199:                                       ; preds = %for.cond93
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %for.end
  %161 = load i32, i32* %canary
  %162 = icmp eq i32 %161, 1042719095
  br i1 %162, label %163, label %func_exit

163:                                              ; preds = %if.end200, %func_exit
  ret void

func_exit:                                        ; preds = %if.end200
  call void @detect_breach()
  br label %163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gop_pyramid.4(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %frm_no.addr = alloca i32, align 4
  %pyramid_structure.addr = alloca %struct.GOP_DATA*, align 8
  %canary = alloca i32
  store i32 507356661, i32* %canary
  %level.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %frm_no, i32* %frm_no.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store %struct.GOP_DATA* %pyramid_structure, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %frm_no.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %frm_no.addr, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 34
  %4 = load i32, i32* %successive_Bframe, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %6 = load i32, i32* %frm_no.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %5, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %display_no, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %9 = load i32, i32* %frm_no.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom6
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx7, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %10 = load i32, i32* %frm_no.addr, align 4
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %12 = load i32, i32* %frm_no.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom8
  %display_no10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx9, i32 0, i32 1
  store i32 %10, i32* %display_no10, align 4
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %14 = load i32, i32* %frm_no.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom11
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %16 = load i32, i32* %frm_no.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom13
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.then
  br label %if.end42

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %frm_no.addr, align 4
  %cmp15 = icmp sge i32 %17, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end32

land.lhs.true16:                                  ; preds = %if.else
  %18 = load i32, i32* %frm_no.addr, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %successive_Bframe17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true16
  %21 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %22 = load i32, i32* %frm_no.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %21, i64 %idxprom20
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx21, i32 0, i32 0
  store i32 1, i32* %slice_type22, align 4
  %23 = load i32, i32* %frm_no.addr, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %25 = load i32, i32* %frm_no.addr, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom23
  %display_no25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx24, i32 0, i32 1
  store i32 %23, i32* %display_no25, align 4
  %26 = load i32, i32* %level.addr, align 4
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %28 = load i32, i32* %frm_no.addr, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom26
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx27, i32 0, i32 4
  store i32 %26, i32* %pyramid_layer28, align 4
  %29 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %30 = load i32, i32* %frm_no.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %29, i64 %idxprom29
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %reference_idc31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %31 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %frm_no.addr, align 4
  %33 = load i32, i32* %frames.addr, align 4
  %add = add nsw i32 %33, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %32, %div
  %34 = load i32, i32* %frames.addr, align 4
  %add34 = add nsw i32 %34, 1
  %div35 = sdiv i32 %add34, 2
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div35, %struct.GOP_DATA* %35)
  %36 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %36, 1
  %37 = load i32, i32* %frm_no.addr, align 4
  %38 = load i32, i32* %frames.addr, align 4
  %add37 = add nsw i32 %38, 1
  %div38 = sdiv i32 %add37, 2
  %add39 = add nsw i32 %37, %div38
  %39 = load i32, i32* %frames.addr, align 4
  %add40 = add nsw i32 %39, 1
  %div41 = sdiv i32 %add40, 2
  %40 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub36, i32 %add39, i32 %div41, %struct.GOP_DATA* %40)
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.end
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 507356661
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %if.end42, %func_exit
  ret void

func_exit:                                        ; preds = %if.end42
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_pyramid.5() #0 {
entry:
  %Bframes = alloca i32, align 4
  %i28 = alloca i32, align 4
  %centerB = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %tempnum = alloca i32, align 4
  %canary = alloca i32
  store i32 1474764789, i32* %canary
  %GOPlevels = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %curlevel = alloca i32, align 4
  %levelrefs = alloca i32, align 4
  %curGOPLeveldist = alloca i32*, align 8
  %prvlevelrefs = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom7
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %16 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %16, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %18, i64 %idxprom11
  %slice_type13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 0
  store i32 1, i32* %slice_type13, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %20, %21
  %mul14 = mul nsw i32 %sub, 2
  %22 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %22, i64 %idxprom15
  %display_no17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx16, i32 0, i32 1
  store i32 %mul14, i32* %display_no17, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom18
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 4
  store i32 1, i32* %pyramid_layer20, align 4
  %26 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %26, i64 %idxprom21
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %reference_idc23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end200

if.else24:                                        ; preds = %entry
  store i32 0, i32* %GOPlevels, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 34
  %30 = load i32, i32* %successive_Bframe25, align 4
  store i32 %30, i32* %Bframes, align 4
  %31 = load i32, i32* %GOPlevels, align 4
  store i32 %31, i32* %curlevel, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %successive_Bframe26, align 4
  store i32 %33, i32* %prvlevelrefs, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %successive_Bframe27, align 4
  store i32 %35, i32* %levelrefs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else24
  %36 = load i32, i32* %Bframes, align 4
  %cmp29 = icmp sgt i32 %36, 2
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Bframes, align 4
  %div30 = sdiv i32 %37, 2
  store i32 %div30, i32* %Bframes, align 4
  %38 = load i32, i32* %GOPlevels, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %GOPlevels, align 4
  store i32 %39, i32* %curlevel, align 4
  %40 = load i32, i32* %GOPlevels, align 4
  %add32 = add nsw i32 %40, 1
  %conv = sext i32 %add32 to i64
  %mul33 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul33) #5
  %41 = bitcast i8* %call to i32*
  store i32* %41, i32** %curGOPLevelfrm, align 8
  %cmp34 = icmp eq i32* null, %41
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  %42 = load i32, i32* %GOPlevels, align 4
  %add38 = add nsw i32 %42, 1
  %conv39 = sext i32 %add38 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @malloc(i64 %mul40) #5
  %43 = bitcast i8* %call41 to i32*
  store i32* %43, i32** %curGOPLeveldist, align 8
  %cmp42 = icmp eq i32* null, %43
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end37
  store i32 0, i32* %i28, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %if.end45
  %44 = load i32, i32* %i28, align 4
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe47, align 4
  %cmp48 = icmp slt i32 %44, %46
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond46
  %47 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %48 = load i32, i32* %i28, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %47, i64 %idxprom51
  %display_no53 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx52, i32 0, i32 1
  store i32 0, i32* %display_no53, align 4
  %49 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %50 = load i32, i32* %i28, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %49, i64 %idxprom54
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %slice_type56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %51 = load i32, i32* %i28, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i28, align 4
  br label %for.cond46

for.end59:                                        ; preds = %for.cond46
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %for.end59
  %52 = load i32, i32* %levelrefs, align 4
  %cmp61 = icmp sgt i32 %52, 2
  br i1 %cmp61, label %while.body63, label %while.end72

while.body63:                                     ; preds = %while.cond60
  %53 = load i32, i32* %levelrefs, align 4
  %div64 = sdiv i32 %53, 2
  store i32 %div64, i32* %levelrefs, align 4
  %54 = load i32, i32* %prvlevelrefs, align 4
  %55 = load i32, i32* %levelrefs, align 4
  %sub65 = sub nsw i32 %54, %55
  %56 = load i32*, i32** %curGOPLevelfrm, align 8
  %57 = load i32, i32* %curlevel, align 4
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %56, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx67, align 4
  %58 = load i32, i32* %levelrefs, align 4
  %59 = load i32, i32* %levelrefs, align 4
  %rem = srem i32 %59, 2
  %add68 = add nsw i32 %58, %rem
  %60 = load i32*, i32** %curGOPLeveldist, align 8
  %61 = load i32, i32* %GOPlevels, align 4
  %62 = load i32, i32* %curlevel, align 4
  %sub69 = sub nsw i32 %61, %62
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32, i32* %60, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4
  %63 = load i32, i32* %levelrefs, align 4
  store i32 %63, i32* %prvlevelrefs, align 4
  %64 = load i32, i32* %curlevel, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %curlevel, align 4
  br label %while.cond60

while.end72:                                      ; preds = %while.cond60
  %65 = load i32, i32* %levelrefs, align 4
  %66 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %arrayidx73, align 4
  %67 = load i32, i32* %levelrefs, align 4
  %68 = load i32, i32* %levelrefs, align 4
  %rem74 = srem i32 %68, 2
  %add75 = add nsw i32 %67, %rem74
  %69 = load i32*, i32** %curGOPLeveldist, align 8
  %70 = load i32, i32* %GOPlevels, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %69, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc89, %while.end72
  %71 = load i32, i32* %j, align 4
  %72 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %71, %73
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond78
  %74 = load i32, i32* %GOPlevels, align 4
  %75 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %75, 1
  %76 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx84, align 4
  %mul85 = mul nsw i32 %add83, %77
  %sub86 = sub nsw i32 %mul85, 1
  %78 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %79, 1
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  call void @gop_pyramid(i32 %74, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %80)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %81 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond78

for.end91:                                        ; preds = %for.cond78
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 34
  %83 = load i32, i32* %successive_Bframe92, align 4
  store i32 %83, i32* %j, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc197, %for.end91
  %84 = load i32, i32* %j, align 4
  %cmp94 = icmp sgt i32 %84, 0
  br i1 %cmp94, label %for.body96, label %for.end199

for.body96:                                       ; preds = %for.cond93
  store i32 1, i32* %i28, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc194, %for.body96
  %85 = load i32, i32* %i28, align 4
  %86 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body100, label %for.end196

for.body100:                                      ; preds = %for.cond97
  %87 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %88 = load i32, i32* %i28, align 4
  %idxprom101 = sext i32 %88 to i64
  %arrayidx102 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %87, i64 %idxprom101
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx102, i32 0, i32 4
  %89 = load i32, i32* %pyramid_layer103, align 4
  %90 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %91 = load i32, i32* %i28, align 4
  %sub104 = sub nsw i32 %91, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %90, i64 %idxprom105
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx106, i32 0, i32 4
  %92 = load i32, i32* %pyramid_layer107, align 4
  %cmp108 = icmp sgt i32 %89, %92
  br i1 %cmp108, label %if.then110, label %if.end193

if.then110:                                       ; preds = %for.body100
  %93 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %94 = load i32, i32* %i28, align 4
  %sub111 = sub nsw i32 %94, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %93, i64 %idxprom112
  %display_no114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx113, i32 0, i32 1
  %95 = load i32, i32* %display_no114, align 4
  store i32 %95, i32* %tempnum, align 4
  %96 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %97 = load i32, i32* %i28, align 4
  %idxprom115 = sext i32 %97 to i64
  %arrayidx116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %96, i64 %idxprom115
  %display_no117 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx116, i32 0, i32 1
  %98 = load i32, i32* %display_no117, align 4
  %99 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %100 = load i32, i32* %i28, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %99, i64 %idxprom119
  %display_no121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx120, i32 0, i32 1
  store i32 %98, i32* %display_no121, align 4
  %101 = load i32, i32* %tempnum, align 4
  %102 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %103 = load i32, i32* %i28, align 4
  %idxprom122 = sext i32 %103 to i64
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %102, i64 %idxprom122
  %display_no124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 1
  store i32 %101, i32* %display_no124, align 4
  %104 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %105 = load i32, i32* %i28, align 4
  %sub125 = sub nsw i32 %105, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %104, i64 %idxprom126
  %pyramid_layer128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx127, i32 0, i32 4
  %106 = load i32, i32* %pyramid_layer128, align 4
  store i32 %106, i32* %tempnum, align 4
  %107 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %108 = load i32, i32* %i28, align 4
  %idxprom129 = sext i32 %108 to i64
  %arrayidx130 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %107, i64 %idxprom129
  %pyramid_layer131 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx130, i32 0, i32 4
  %109 = load i32, i32* %pyramid_layer131, align 4
  %110 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %111 = load i32, i32* %i28, align 4
  %sub132 = sub nsw i32 %111, 1
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %110, i64 %idxprom133
  %pyramid_layer135 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx134, i32 0, i32 4
  store i32 %109, i32* %pyramid_layer135, align 4
  %112 = load i32, i32* %tempnum, align 4
  %113 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %114 = load i32, i32* %i28, align 4
  %idxprom136 = sext i32 %114 to i64
  %arrayidx137 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %113, i64 %idxprom136
  %pyramid_layer138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx137, i32 0, i32 4
  store i32 %112, i32* %pyramid_layer138, align 4
  %115 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %116 = load i32, i32* %i28, align 4
  %sub139 = sub nsw i32 %116, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %115, i64 %idxprom140
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx141, i32 0, i32 2
  %117 = load i32, i32* %reference_idc142, align 4
  store i32 %117, i32* %tempnum, align 4
  %118 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %119 = load i32, i32* %i28, align 4
  %idxprom143 = sext i32 %119 to i64
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %118, i64 %idxprom143
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx144, i32 0, i32 2
  %120 = load i32, i32* %reference_idc145, align 4
  %121 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %122 = load i32, i32* %i28, align 4
  %sub146 = sub nsw i32 %122, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %121, i64 %idxprom147
  %reference_idc149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 2
  store i32 %120, i32* %reference_idc149, align 4
  %123 = load i32, i32* %tempnum, align 4
  %124 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %125 = load i32, i32* %i28, align 4
  %idxprom150 = sext i32 %125 to i64
  %arrayidx151 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %124, i64 %idxprom150
  %reference_idc152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx151, i32 0, i32 2
  store i32 %123, i32* %reference_idc152, align 4
  %126 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %127 = load i32, i32* %i28, align 4
  %sub153 = sub nsw i32 %127, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %126, i64 %idxprom154
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx155, i32 0, i32 0
  %128 = load i32, i32* %slice_type156, align 4
  store i32 %128, i32* %tempnum, align 4
  %129 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %130 = load i32, i32* %i28, align 4
  %idxprom157 = sext i32 %130 to i64
  %arrayidx158 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %129, i64 %idxprom157
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx158, i32 0, i32 0
  %131 = load i32, i32* %slice_type159, align 4
  %132 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %133 = load i32, i32* %i28, align 4
  %sub160 = sub nsw i32 %133, 1
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %132, i64 %idxprom161
  %slice_type163 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx162, i32 0, i32 0
  store i32 %131, i32* %slice_type163, align 4
  %134 = load i32, i32* %tempnum, align 4
  %135 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %136 = load i32, i32* %i28, align 4
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %135, i64 %idxprom164
  %slice_type166 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx165, i32 0, i32 0
  store i32 %134, i32* %slice_type166, align 4
  %137 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %138 = load i32, i32* %i28, align 4
  %sub167 = sub nsw i32 %138, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %137, i64 %idxprom168
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx169, i32 0, i32 3
  %139 = load i32, i32* %slice_qp, align 4
  store i32 %139, i32* %tempnum, align 4
  %140 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %141 = load i32, i32* %i28, align 4
  %idxprom170 = sext i32 %141 to i64
  %arrayidx171 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %140, i64 %idxprom170
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx171, i32 0, i32 3
  %142 = load i32, i32* %slice_qp172, align 4
  %143 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %144 = load i32, i32* %i28, align 4
  %sub173 = sub nsw i32 %144, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %143, i64 %idxprom174
  %slice_qp176 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx175, i32 0, i32 3
  store i32 %142, i32* %slice_qp176, align 4
  %145 = load i32, i32* %tempnum, align 4
  %146 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %147 = load i32, i32* %i28, align 4
  %idxprom177 = sext i32 %147 to i64
  %arrayidx178 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %146, i64 %idxprom177
  %slice_qp179 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx178, i32 0, i32 3
  store i32 %145, i32* %slice_qp179, align 4
  %148 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %149 = load i32, i32* %i28, align 4
  %sub180 = sub nsw i32 %149, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %148, i64 %idxprom181
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx182, i32 0, i32 5
  %150 = load i32, i32* %pyramidPocDelta, align 4
  store i32 %150, i32* %tempnum, align 4
  %151 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %152 = load i32, i32* %i28, align 4
  %idxprom183 = sext i32 %152 to i64
  %arrayidx184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %151, i64 %idxprom183
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx184, i32 0, i32 5
  %153 = load i32, i32* %pyramidPocDelta185, align 4
  %154 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %155 = load i32, i32* %i28, align 4
  %sub186 = sub nsw i32 %155, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %154, i64 %idxprom187
  %pyramidPocDelta189 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx188, i32 0, i32 5
  store i32 %153, i32* %pyramidPocDelta189, align 4
  %156 = load i32, i32* %tempnum, align 4
  %157 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %158 = load i32, i32* %i28, align 4
  %idxprom190 = sext i32 %158 to i64
  %arrayidx191 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %157, i64 %idxprom190
  %pyramidPocDelta192 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx191, i32 0, i32 5
  store i32 %156, i32* %pyramidPocDelta192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then110, %for.body100
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193
  %159 = load i32, i32* %i28, align 4
  %inc195 = add nsw i32 %159, 1
  store i32 %inc195, i32* %i28, align 4
  br label %for.cond97

for.end196:                                       ; preds = %for.cond97
  br label %for.inc197

for.inc197:                                       ; preds = %for.end196
  %160 = load i32, i32* %j, align 4
  %dec198 = add nsw i32 %160, -1
  store i32 %dec198, i32* %j, align 4
  br label %for.cond93

for.end199:                                       ; preds = %for.cond93
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %for.end
  %161 = load i32, i32* %canary
  %162 = icmp eq i32 %161, 1474764789
  br i1 %162, label %163, label %func_exit

163:                                              ; preds = %if.end200, %func_exit
  ret void

func_exit:                                        ; preds = %if.end200
  call void @detect_breach()
  br label %163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poc_based_ref_management.6(i32 %current_pic_num) #0 {
entry:
  %current_pic_num.addr = alloca i32, align 4
  %min_poc = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %canary = alloca i32
  store i32 1662852531, i32* %canary
  %pic_num = alloca i32, align 4
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %6, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %14, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %land.lhs.true8
  %19 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %19, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %25 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %24, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 8
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #5
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 8
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then2, %if.then
  %42 = load i32, i32* %canary
  %43 = icmp eq i32 %42, 1662852531
  br i1 %43, label %44, label %func_exit

44:                                               ; preds = %return, %func_exit
  ret void

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_gop_structure.7() #0 {
entry:
  %order_read = alloca i32, align 4
  %i = alloca i32, align 4
  %qp_read = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %qp = alloca i32, align 4
  %canary = alloca i32
  store i32 1685583781, i32* %canary
  %coded_frame = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %display_no = alloca i32, align 4
  %k = alloca i32, align 4
  %nLength = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 56
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else169

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 56
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat7, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %11 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end165

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then22, label %if.else61

if.then22:                                        ; preds = %if.else
  %call23 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call23, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 56
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat24, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay25, i64 %idx.ext
  %18 = load i8, i8* %add.ptr, align 1
  %conv26 = sext i8 %18 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %15, i64 %idxprom27
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then30, label %if.else58

if.then30:                                        ; preds = %if.then22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 56
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat31, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %display_no) #5
  %22 = load i32, i32* %display_no, align 4
  %23 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %24 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %23, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then43, label %if.end

if.then43:                                        ; preds = %lor.lhs.false, %if.then30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %for.body49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i32 %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %for.body49
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond46

for.end:                                          ; preds = %for.cond46
  br label %if.end60

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %for.end
  br label %if.end164

if.else61:                                        ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then64, label %if.end163

if.then64:                                        ; preds = %if.else61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.then64
  %call67 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call67, align 8
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 56
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat68, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idx.ext70 = sext i32 %45 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70
  %46 = load i8, i8* %add.ptr71, align 1
  %conv72 = sext i8 %46 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %43, i64 %idxprom73
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else93, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 56
  %49 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat79, i64 0, i64 %idxprom80
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ]

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %51 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %52 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %51, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %sw.epilog92

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %53 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %54 = load i32, i32* %coded_frame, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %53, i64 %idxprom87
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx88, i32 0, i32 2
  store i32 2, i32* %reference_idc89, align 4
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb86, %sw.bb83
  store i32 1, i32* %stored_read, align 4
  br label %if.end162

if.else93:                                        ; preds = %land.lhs.true, %if.then64
  %55 = load i32, i32* %stored_read, align 4
  %cmp94 = icmp eq i32 %55, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.else130

land.lhs.true96:                                  ; preds = %if.else93
  %56 = load i32, i32* %qp_read, align 4
  %cmp97 = icmp eq i32 %56, 0
  br i1 %cmp97, label %if.then99, label %if.else130

if.then99:                                        ; preds = %land.lhs.true96
  %call100 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call100, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 56
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat101, i64 0, i64 0
  %59 = load i32, i32* %i, align 4
  %idx.ext103 = sext i32 %59 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %arraydecay102, i64 %idx.ext103
  %60 = load i8, i8* %add.ptr104, align 1
  %conv105 = sext i8 %60 to i32
  %idxprom106 = sext i32 %conv105 to i64
  %arrayidx107 = getelementptr inbounds i16, i16* %57, i64 %idxprom106
  %61 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.else127

if.then111:                                       ; preds = %if.then99
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 56
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat112, i64 0, i64 0
  %63 = load i32, i32* %i, align 4
  %idx.ext114 = sext i32 %63 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay113, i64 %idx.ext114
  %call116 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %qp) #5
  %64 = load i32, i32* %qp, align 4
  %65 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %66 = load i32, i32* %coded_frame, align 4
  %idxprom117 = sext i32 %66 to i64
  %arrayidx118 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %65, i64 %idxprom117
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx118, i32 0, i32 3
  store i32 %64, i32* %slice_qp, align 4
  store i32 1, i32* %qp_read, align 4
  %67 = load i32, i32* %qp, align 4
  %cmp119 = icmp slt i32 %67, 0
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.then111
  %68 = load i32, i32* %qp, align 4
  %cmp122 = icmp sgt i32 %68, 51
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %lor.lhs.false121, %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %lor.lhs.false121
  br label %if.end129

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.end126
  br label %if.end161

if.else130:                                       ; preds = %land.lhs.true96, %if.else93
  %69 = load i32, i32* %stored_read, align 4
  %cmp131 = icmp eq i32 %69, 1
  br i1 %cmp131, label %land.lhs.true133, label %if.end160

land.lhs.true133:                                 ; preds = %if.else130
  %70 = load i32, i32* %qp_read, align 4
  %cmp134 = icmp eq i32 %70, 1
  br i1 %cmp134, label %land.lhs.true136, label %if.end160

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %call137 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call137, align 8
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat138 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 56
  %arraydecay139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat138, i64 0, i64 0
  %73 = load i32, i32* %i, align 4
  %idx.ext140 = sext i32 %73 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %arraydecay139, i64 %idx.ext140
  %74 = load i8, i8* %add.ptr141, align 1
  %conv142 = sext i8 %74 to i32
  %idxprom143 = sext i32 %conv142 to i64
  %arrayidx144 = getelementptr inbounds i16, i16* %71, i64 %idxprom143
  %75 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %75 to i32
  %and146 = and i32 %conv145, 2048
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end160, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true136
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nLength, align 4
  %sub149 = sub nsw i32 %77, 2
  %cmp150 = icmp slt i32 %76, %sub149
  br i1 %cmp150, label %if.then152, label %if.end160

if.then152:                                       ; preds = %land.lhs.true148
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  %79 = load i32, i32* %coded_frame, align 4
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, i32* %coded_frame, align 4
  %80 = load i32, i32* %coded_frame, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %jumpd154, align 4
  %cmp155 = icmp sge i32 %80, %82
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.then152
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true148, %land.lhs.true136, %land.lhs.true133, %if.else130
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end129
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %sw.epilog92
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else61
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end60
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %sw.epilog
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %83 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %83, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end168:                                       ; preds = %for.cond
  br label %if.end171

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %for.end168
  %84 = load i32, i32* %coded_frame, align 4
  %add = add nsw i32 %84, 1
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4
  %86 = load i32, i32* %canary
  %87 = icmp eq i32 %86, 1685583781
  br i1 %87, label %88, label %func_exit

88:                                               ; preds = %if.end171, %func_exit
  ret void

func_exit:                                        ; preds = %if.end171
  call void @detect_breach()
  br label %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_gop_structure.8() #0 {
entry:
  %qp = alloca i32, align 4
  %nLength = alloca i32, align 4
  %qp_read = alloca i32, align 4
  %canary = alloca i32
  store i32 513635029, i32* %canary
  %display_no = alloca i32, align 4
  %i = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %order_read = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %coded_frame = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 56
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else169

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 56
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat7, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %11 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end165

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then22, label %if.else61

if.then22:                                        ; preds = %if.else
  %call23 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call23, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 56
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat24, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay25, i64 %idx.ext
  %18 = load i8, i8* %add.ptr, align 1
  %conv26 = sext i8 %18 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %15, i64 %idxprom27
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then30, label %if.else58

if.then30:                                        ; preds = %if.then22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 56
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat31, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %display_no) #5
  %22 = load i32, i32* %display_no, align 4
  %23 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %24 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %23, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then43, label %if.end

if.then43:                                        ; preds = %lor.lhs.false, %if.then30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %for.body49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i32 %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %for.body49
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond46

for.end:                                          ; preds = %for.cond46
  br label %if.end60

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %for.end
  br label %if.end164

if.else61:                                        ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then64, label %if.end163

if.then64:                                        ; preds = %if.else61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.then64
  %call67 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call67, align 8
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 56
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat68, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idx.ext70 = sext i32 %45 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70
  %46 = load i8, i8* %add.ptr71, align 1
  %conv72 = sext i8 %46 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %43, i64 %idxprom73
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else93, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 56
  %49 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat79, i64 0, i64 %idxprom80
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ]

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %51 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %52 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %51, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %sw.epilog92

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %53 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %54 = load i32, i32* %coded_frame, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %53, i64 %idxprom87
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx88, i32 0, i32 2
  store i32 2, i32* %reference_idc89, align 4
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb86, %sw.bb83
  store i32 1, i32* %stored_read, align 4
  br label %if.end162

if.else93:                                        ; preds = %land.lhs.true, %if.then64
  %55 = load i32, i32* %stored_read, align 4
  %cmp94 = icmp eq i32 %55, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.else130

land.lhs.true96:                                  ; preds = %if.else93
  %56 = load i32, i32* %qp_read, align 4
  %cmp97 = icmp eq i32 %56, 0
  br i1 %cmp97, label %if.then99, label %if.else130

if.then99:                                        ; preds = %land.lhs.true96
  %call100 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call100, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 56
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat101, i64 0, i64 0
  %59 = load i32, i32* %i, align 4
  %idx.ext103 = sext i32 %59 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %arraydecay102, i64 %idx.ext103
  %60 = load i8, i8* %add.ptr104, align 1
  %conv105 = sext i8 %60 to i32
  %idxprom106 = sext i32 %conv105 to i64
  %arrayidx107 = getelementptr inbounds i16, i16* %57, i64 %idxprom106
  %61 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.else127

if.then111:                                       ; preds = %if.then99
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 56
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat112, i64 0, i64 0
  %63 = load i32, i32* %i, align 4
  %idx.ext114 = sext i32 %63 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay113, i64 %idx.ext114
  %call116 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %qp) #5
  %64 = load i32, i32* %qp, align 4
  %65 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %66 = load i32, i32* %coded_frame, align 4
  %idxprom117 = sext i32 %66 to i64
  %arrayidx118 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %65, i64 %idxprom117
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx118, i32 0, i32 3
  store i32 %64, i32* %slice_qp, align 4
  store i32 1, i32* %qp_read, align 4
  %67 = load i32, i32* %qp, align 4
  %cmp119 = icmp slt i32 %67, 0
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.then111
  %68 = load i32, i32* %qp, align 4
  %cmp122 = icmp sgt i32 %68, 51
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %lor.lhs.false121, %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %lor.lhs.false121
  br label %if.end129

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.end126
  br label %if.end161

if.else130:                                       ; preds = %land.lhs.true96, %if.else93
  %69 = load i32, i32* %stored_read, align 4
  %cmp131 = icmp eq i32 %69, 1
  br i1 %cmp131, label %land.lhs.true133, label %if.end160

land.lhs.true133:                                 ; preds = %if.else130
  %70 = load i32, i32* %qp_read, align 4
  %cmp134 = icmp eq i32 %70, 1
  br i1 %cmp134, label %land.lhs.true136, label %if.end160

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %call137 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call137, align 8
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat138 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 56
  %arraydecay139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat138, i64 0, i64 0
  %73 = load i32, i32* %i, align 4
  %idx.ext140 = sext i32 %73 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %arraydecay139, i64 %idx.ext140
  %74 = load i8, i8* %add.ptr141, align 1
  %conv142 = sext i8 %74 to i32
  %idxprom143 = sext i32 %conv142 to i64
  %arrayidx144 = getelementptr inbounds i16, i16* %71, i64 %idxprom143
  %75 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %75 to i32
  %and146 = and i32 %conv145, 2048
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end160, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true136
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nLength, align 4
  %sub149 = sub nsw i32 %77, 2
  %cmp150 = icmp slt i32 %76, %sub149
  br i1 %cmp150, label %if.then152, label %if.end160

if.then152:                                       ; preds = %land.lhs.true148
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  %79 = load i32, i32* %coded_frame, align 4
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, i32* %coded_frame, align 4
  %80 = load i32, i32* %coded_frame, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %jumpd154, align 4
  %cmp155 = icmp sge i32 %80, %82
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.then152
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true148, %land.lhs.true136, %land.lhs.true133, %if.else130
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end129
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %sw.epilog92
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else61
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end60
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %sw.epilog
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %83 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %83, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end168:                                       ; preds = %for.cond
  br label %if.end171

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %for.end168
  %84 = load i32, i32* %coded_frame, align 4
  %add = add nsw i32 %84, 1
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4
  %86 = load i32, i32* %canary
  %87 = icmp eq i32 %86, 513635029
  br i1 %87, label %88, label %func_exit

88:                                               ; preds = %if.end171, %func_exit
  ret void

func_exit:                                        ; preds = %if.end171
  call void @detect_breach()
  br label %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gop_pyramid.9(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %frames.addr = alloca i32, align 4
  %pyramid_structure.addr = alloca %struct.GOP_DATA*, align 8
  %canary = alloca i32
  store i32 81645261, i32* %canary
  %level.addr = alloca i32, align 4
  %frm_no.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %frm_no, i32* %frm_no.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store %struct.GOP_DATA* %pyramid_structure, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %frm_no.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %frm_no.addr, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 34
  %4 = load i32, i32* %successive_Bframe, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %6 = load i32, i32* %frm_no.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %5, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %display_no, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %9 = load i32, i32* %frm_no.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom6
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx7, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %10 = load i32, i32* %frm_no.addr, align 4
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %12 = load i32, i32* %frm_no.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom8
  %display_no10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx9, i32 0, i32 1
  store i32 %10, i32* %display_no10, align 4
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %14 = load i32, i32* %frm_no.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom11
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %16 = load i32, i32* %frm_no.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom13
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.then
  br label %if.end42

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %frm_no.addr, align 4
  %cmp15 = icmp sge i32 %17, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end32

land.lhs.true16:                                  ; preds = %if.else
  %18 = load i32, i32* %frm_no.addr, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %successive_Bframe17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true16
  %21 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %22 = load i32, i32* %frm_no.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %21, i64 %idxprom20
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx21, i32 0, i32 0
  store i32 1, i32* %slice_type22, align 4
  %23 = load i32, i32* %frm_no.addr, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %25 = load i32, i32* %frm_no.addr, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom23
  %display_no25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx24, i32 0, i32 1
  store i32 %23, i32* %display_no25, align 4
  %26 = load i32, i32* %level.addr, align 4
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %28 = load i32, i32* %frm_no.addr, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom26
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx27, i32 0, i32 4
  store i32 %26, i32* %pyramid_layer28, align 4
  %29 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %30 = load i32, i32* %frm_no.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %29, i64 %idxprom29
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %reference_idc31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %31 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %frm_no.addr, align 4
  %33 = load i32, i32* %frames.addr, align 4
  %add = add nsw i32 %33, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %32, %div
  %34 = load i32, i32* %frames.addr, align 4
  %add34 = add nsw i32 %34, 1
  %div35 = sdiv i32 %add34, 2
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div35, %struct.GOP_DATA* %35)
  %36 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %36, 1
  %37 = load i32, i32* %frm_no.addr, align 4
  %38 = load i32, i32* %frames.addr, align 4
  %add37 = add nsw i32 %38, 1
  %div38 = sdiv i32 %add37, 2
  %add39 = add nsw i32 %37, %div38
  %39 = load i32, i32* %frames.addr, align 4
  %add40 = add nsw i32 %39, 1
  %div41 = sdiv i32 %add40, 2
  %40 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub36, i32 %add39, i32 %div41, %struct.GOP_DATA* %40)
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.end
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 81645261
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %if.end42, %func_exit
  ret void

func_exit:                                        ; preds = %if.end42
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_pyramid.10() #0 {
entry:
  %Bframes = alloca i32, align 4
  %curGOPLeveldist = alloca i32*, align 8
  %tempnum = alloca i32, align 4
  %curlevel = alloca i32, align 4
  %prvlevelrefs = alloca i32, align 4
  %i28 = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 1265064829, i32* %canary
  %centerB = alloca i32, align 4
  %levelrefs = alloca i32, align 4
  %j = alloca i32, align 4
  %GOPlevels = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom7
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %16 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %16, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %18, i64 %idxprom11
  %slice_type13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 0
  store i32 1, i32* %slice_type13, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %20, %21
  %mul14 = mul nsw i32 %sub, 2
  %22 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %22, i64 %idxprom15
  %display_no17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx16, i32 0, i32 1
  store i32 %mul14, i32* %display_no17, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom18
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 4
  store i32 1, i32* %pyramid_layer20, align 4
  %26 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %26, i64 %idxprom21
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %reference_idc23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end200

if.else24:                                        ; preds = %entry
  store i32 0, i32* %GOPlevels, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 34
  %30 = load i32, i32* %successive_Bframe25, align 4
  store i32 %30, i32* %Bframes, align 4
  %31 = load i32, i32* %GOPlevels, align 4
  store i32 %31, i32* %curlevel, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %successive_Bframe26, align 4
  store i32 %33, i32* %prvlevelrefs, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %successive_Bframe27, align 4
  store i32 %35, i32* %levelrefs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else24
  %36 = load i32, i32* %Bframes, align 4
  %cmp29 = icmp sgt i32 %36, 2
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Bframes, align 4
  %div30 = sdiv i32 %37, 2
  store i32 %div30, i32* %Bframes, align 4
  %38 = load i32, i32* %GOPlevels, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %GOPlevels, align 4
  store i32 %39, i32* %curlevel, align 4
  %40 = load i32, i32* %GOPlevels, align 4
  %add32 = add nsw i32 %40, 1
  %conv = sext i32 %add32 to i64
  %mul33 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul33) #5
  %41 = bitcast i8* %call to i32*
  store i32* %41, i32** %curGOPLevelfrm, align 8
  %cmp34 = icmp eq i32* null, %41
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  %42 = load i32, i32* %GOPlevels, align 4
  %add38 = add nsw i32 %42, 1
  %conv39 = sext i32 %add38 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @malloc(i64 %mul40) #5
  %43 = bitcast i8* %call41 to i32*
  store i32* %43, i32** %curGOPLeveldist, align 8
  %cmp42 = icmp eq i32* null, %43
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end37
  store i32 0, i32* %i28, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %if.end45
  %44 = load i32, i32* %i28, align 4
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe47, align 4
  %cmp48 = icmp slt i32 %44, %46
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond46
  %47 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %48 = load i32, i32* %i28, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %47, i64 %idxprom51
  %display_no53 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx52, i32 0, i32 1
  store i32 0, i32* %display_no53, align 4
  %49 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %50 = load i32, i32* %i28, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %49, i64 %idxprom54
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %slice_type56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %51 = load i32, i32* %i28, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i28, align 4
  br label %for.cond46

for.end59:                                        ; preds = %for.cond46
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %for.end59
  %52 = load i32, i32* %levelrefs, align 4
  %cmp61 = icmp sgt i32 %52, 2
  br i1 %cmp61, label %while.body63, label %while.end72

while.body63:                                     ; preds = %while.cond60
  %53 = load i32, i32* %levelrefs, align 4
  %div64 = sdiv i32 %53, 2
  store i32 %div64, i32* %levelrefs, align 4
  %54 = load i32, i32* %prvlevelrefs, align 4
  %55 = load i32, i32* %levelrefs, align 4
  %sub65 = sub nsw i32 %54, %55
  %56 = load i32*, i32** %curGOPLevelfrm, align 8
  %57 = load i32, i32* %curlevel, align 4
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %56, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx67, align 4
  %58 = load i32, i32* %levelrefs, align 4
  %59 = load i32, i32* %levelrefs, align 4
  %rem = srem i32 %59, 2
  %add68 = add nsw i32 %58, %rem
  %60 = load i32*, i32** %curGOPLeveldist, align 8
  %61 = load i32, i32* %GOPlevels, align 4
  %62 = load i32, i32* %curlevel, align 4
  %sub69 = sub nsw i32 %61, %62
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32, i32* %60, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4
  %63 = load i32, i32* %levelrefs, align 4
  store i32 %63, i32* %prvlevelrefs, align 4
  %64 = load i32, i32* %curlevel, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %curlevel, align 4
  br label %while.cond60

while.end72:                                      ; preds = %while.cond60
  %65 = load i32, i32* %levelrefs, align 4
  %66 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %arrayidx73, align 4
  %67 = load i32, i32* %levelrefs, align 4
  %68 = load i32, i32* %levelrefs, align 4
  %rem74 = srem i32 %68, 2
  %add75 = add nsw i32 %67, %rem74
  %69 = load i32*, i32** %curGOPLeveldist, align 8
  %70 = load i32, i32* %GOPlevels, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %69, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc89, %while.end72
  %71 = load i32, i32* %j, align 4
  %72 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %71, %73
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond78
  %74 = load i32, i32* %GOPlevels, align 4
  %75 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %75, 1
  %76 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx84, align 4
  %mul85 = mul nsw i32 %add83, %77
  %sub86 = sub nsw i32 %mul85, 1
  %78 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %79, 1
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  call void @gop_pyramid(i32 %74, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %80)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %81 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond78

for.end91:                                        ; preds = %for.cond78
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 34
  %83 = load i32, i32* %successive_Bframe92, align 4
  store i32 %83, i32* %j, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc197, %for.end91
  %84 = load i32, i32* %j, align 4
  %cmp94 = icmp sgt i32 %84, 0
  br i1 %cmp94, label %for.body96, label %for.end199

for.body96:                                       ; preds = %for.cond93
  store i32 1, i32* %i28, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc194, %for.body96
  %85 = load i32, i32* %i28, align 4
  %86 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body100, label %for.end196

for.body100:                                      ; preds = %for.cond97
  %87 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %88 = load i32, i32* %i28, align 4
  %idxprom101 = sext i32 %88 to i64
  %arrayidx102 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %87, i64 %idxprom101
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx102, i32 0, i32 4
  %89 = load i32, i32* %pyramid_layer103, align 4
  %90 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %91 = load i32, i32* %i28, align 4
  %sub104 = sub nsw i32 %91, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %90, i64 %idxprom105
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx106, i32 0, i32 4
  %92 = load i32, i32* %pyramid_layer107, align 4
  %cmp108 = icmp sgt i32 %89, %92
  br i1 %cmp108, label %if.then110, label %if.end193

if.then110:                                       ; preds = %for.body100
  %93 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %94 = load i32, i32* %i28, align 4
  %sub111 = sub nsw i32 %94, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %93, i64 %idxprom112
  %display_no114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx113, i32 0, i32 1
  %95 = load i32, i32* %display_no114, align 4
  store i32 %95, i32* %tempnum, align 4
  %96 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %97 = load i32, i32* %i28, align 4
  %idxprom115 = sext i32 %97 to i64
  %arrayidx116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %96, i64 %idxprom115
  %display_no117 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx116, i32 0, i32 1
  %98 = load i32, i32* %display_no117, align 4
  %99 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %100 = load i32, i32* %i28, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %99, i64 %idxprom119
  %display_no121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx120, i32 0, i32 1
  store i32 %98, i32* %display_no121, align 4
  %101 = load i32, i32* %tempnum, align 4
  %102 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %103 = load i32, i32* %i28, align 4
  %idxprom122 = sext i32 %103 to i64
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %102, i64 %idxprom122
  %display_no124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 1
  store i32 %101, i32* %display_no124, align 4
  %104 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %105 = load i32, i32* %i28, align 4
  %sub125 = sub nsw i32 %105, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %104, i64 %idxprom126
  %pyramid_layer128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx127, i32 0, i32 4
  %106 = load i32, i32* %pyramid_layer128, align 4
  store i32 %106, i32* %tempnum, align 4
  %107 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %108 = load i32, i32* %i28, align 4
  %idxprom129 = sext i32 %108 to i64
  %arrayidx130 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %107, i64 %idxprom129
  %pyramid_layer131 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx130, i32 0, i32 4
  %109 = load i32, i32* %pyramid_layer131, align 4
  %110 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %111 = load i32, i32* %i28, align 4
  %sub132 = sub nsw i32 %111, 1
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %110, i64 %idxprom133
  %pyramid_layer135 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx134, i32 0, i32 4
  store i32 %109, i32* %pyramid_layer135, align 4
  %112 = load i32, i32* %tempnum, align 4
  %113 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %114 = load i32, i32* %i28, align 4
  %idxprom136 = sext i32 %114 to i64
  %arrayidx137 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %113, i64 %idxprom136
  %pyramid_layer138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx137, i32 0, i32 4
  store i32 %112, i32* %pyramid_layer138, align 4
  %115 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %116 = load i32, i32* %i28, align 4
  %sub139 = sub nsw i32 %116, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %115, i64 %idxprom140
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx141, i32 0, i32 2
  %117 = load i32, i32* %reference_idc142, align 4
  store i32 %117, i32* %tempnum, align 4
  %118 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %119 = load i32, i32* %i28, align 4
  %idxprom143 = sext i32 %119 to i64
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %118, i64 %idxprom143
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx144, i32 0, i32 2
  %120 = load i32, i32* %reference_idc145, align 4
  %121 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %122 = load i32, i32* %i28, align 4
  %sub146 = sub nsw i32 %122, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %121, i64 %idxprom147
  %reference_idc149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 2
  store i32 %120, i32* %reference_idc149, align 4
  %123 = load i32, i32* %tempnum, align 4
  %124 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %125 = load i32, i32* %i28, align 4
  %idxprom150 = sext i32 %125 to i64
  %arrayidx151 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %124, i64 %idxprom150
  %reference_idc152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx151, i32 0, i32 2
  store i32 %123, i32* %reference_idc152, align 4
  %126 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %127 = load i32, i32* %i28, align 4
  %sub153 = sub nsw i32 %127, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %126, i64 %idxprom154
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx155, i32 0, i32 0
  %128 = load i32, i32* %slice_type156, align 4
  store i32 %128, i32* %tempnum, align 4
  %129 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %130 = load i32, i32* %i28, align 4
  %idxprom157 = sext i32 %130 to i64
  %arrayidx158 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %129, i64 %idxprom157
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx158, i32 0, i32 0
  %131 = load i32, i32* %slice_type159, align 4
  %132 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %133 = load i32, i32* %i28, align 4
  %sub160 = sub nsw i32 %133, 1
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %132, i64 %idxprom161
  %slice_type163 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx162, i32 0, i32 0
  store i32 %131, i32* %slice_type163, align 4
  %134 = load i32, i32* %tempnum, align 4
  %135 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %136 = load i32, i32* %i28, align 4
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %135, i64 %idxprom164
  %slice_type166 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx165, i32 0, i32 0
  store i32 %134, i32* %slice_type166, align 4
  %137 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %138 = load i32, i32* %i28, align 4
  %sub167 = sub nsw i32 %138, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %137, i64 %idxprom168
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx169, i32 0, i32 3
  %139 = load i32, i32* %slice_qp, align 4
  store i32 %139, i32* %tempnum, align 4
  %140 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %141 = load i32, i32* %i28, align 4
  %idxprom170 = sext i32 %141 to i64
  %arrayidx171 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %140, i64 %idxprom170
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx171, i32 0, i32 3
  %142 = load i32, i32* %slice_qp172, align 4
  %143 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %144 = load i32, i32* %i28, align 4
  %sub173 = sub nsw i32 %144, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %143, i64 %idxprom174
  %slice_qp176 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx175, i32 0, i32 3
  store i32 %142, i32* %slice_qp176, align 4
  %145 = load i32, i32* %tempnum, align 4
  %146 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %147 = load i32, i32* %i28, align 4
  %idxprom177 = sext i32 %147 to i64
  %arrayidx178 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %146, i64 %idxprom177
  %slice_qp179 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx178, i32 0, i32 3
  store i32 %145, i32* %slice_qp179, align 4
  %148 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %149 = load i32, i32* %i28, align 4
  %sub180 = sub nsw i32 %149, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %148, i64 %idxprom181
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx182, i32 0, i32 5
  %150 = load i32, i32* %pyramidPocDelta, align 4
  store i32 %150, i32* %tempnum, align 4
  %151 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %152 = load i32, i32* %i28, align 4
  %idxprom183 = sext i32 %152 to i64
  %arrayidx184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %151, i64 %idxprom183
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx184, i32 0, i32 5
  %153 = load i32, i32* %pyramidPocDelta185, align 4
  %154 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %155 = load i32, i32* %i28, align 4
  %sub186 = sub nsw i32 %155, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %154, i64 %idxprom187
  %pyramidPocDelta189 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx188, i32 0, i32 5
  store i32 %153, i32* %pyramidPocDelta189, align 4
  %156 = load i32, i32* %tempnum, align 4
  %157 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %158 = load i32, i32* %i28, align 4
  %idxprom190 = sext i32 %158 to i64
  %arrayidx191 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %157, i64 %idxprom190
  %pyramidPocDelta192 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx191, i32 0, i32 5
  store i32 %156, i32* %pyramidPocDelta192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then110, %for.body100
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193
  %159 = load i32, i32* %i28, align 4
  %inc195 = add nsw i32 %159, 1
  store i32 %inc195, i32* %i28, align 4
  br label %for.cond97

for.end196:                                       ; preds = %for.cond97
  br label %for.inc197

for.inc197:                                       ; preds = %for.end196
  %160 = load i32, i32* %j, align 4
  %dec198 = add nsw i32 %160, -1
  store i32 %dec198, i32* %j, align 4
  br label %for.cond93

for.end199:                                       ; preds = %for.cond93
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %for.end
  %161 = load i32, i32* %canary
  %162 = icmp eq i32 %161, 1265064829
  br i1 %162, label %163, label %func_exit

163:                                              ; preds = %if.end200, %func_exit
  ret void

func_exit:                                        ; preds = %if.end200
  call void @detect_breach()
  br label %163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gop_pyramid.11(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %level.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  %frm_no.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1982359411, i32* %canary
  %pyramid_structure.addr = alloca %struct.GOP_DATA*, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %frm_no, i32* %frm_no.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store %struct.GOP_DATA* %pyramid_structure, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %frm_no.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %frm_no.addr, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 34
  %4 = load i32, i32* %successive_Bframe, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %6 = load i32, i32* %frm_no.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %5, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %display_no, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %9 = load i32, i32* %frm_no.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom6
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx7, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %10 = load i32, i32* %frm_no.addr, align 4
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %12 = load i32, i32* %frm_no.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom8
  %display_no10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx9, i32 0, i32 1
  store i32 %10, i32* %display_no10, align 4
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %14 = load i32, i32* %frm_no.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom11
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %16 = load i32, i32* %frm_no.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom13
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.then
  br label %if.end42

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %frm_no.addr, align 4
  %cmp15 = icmp sge i32 %17, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end32

land.lhs.true16:                                  ; preds = %if.else
  %18 = load i32, i32* %frm_no.addr, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %successive_Bframe17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true16
  %21 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %22 = load i32, i32* %frm_no.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %21, i64 %idxprom20
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx21, i32 0, i32 0
  store i32 1, i32* %slice_type22, align 4
  %23 = load i32, i32* %frm_no.addr, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %25 = load i32, i32* %frm_no.addr, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom23
  %display_no25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx24, i32 0, i32 1
  store i32 %23, i32* %display_no25, align 4
  %26 = load i32, i32* %level.addr, align 4
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %28 = load i32, i32* %frm_no.addr, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom26
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx27, i32 0, i32 4
  store i32 %26, i32* %pyramid_layer28, align 4
  %29 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %30 = load i32, i32* %frm_no.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %29, i64 %idxprom29
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %reference_idc31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %31 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %frm_no.addr, align 4
  %33 = load i32, i32* %frames.addr, align 4
  %add = add nsw i32 %33, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %32, %div
  %34 = load i32, i32* %frames.addr, align 4
  %add34 = add nsw i32 %34, 1
  %div35 = sdiv i32 %add34, 2
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div35, %struct.GOP_DATA* %35)
  %36 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %36, 1
  %37 = load i32, i32* %frm_no.addr, align 4
  %38 = load i32, i32* %frames.addr, align 4
  %add37 = add nsw i32 %38, 1
  %div38 = sdiv i32 %add37, 2
  %add39 = add nsw i32 %37, %div38
  %39 = load i32, i32* %frames.addr, align 4
  %add40 = add nsw i32 %39, 1
  %div41 = sdiv i32 %add40, 2
  %40 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub36, i32 %add39, i32 %div41, %struct.GOP_DATA* %40)
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.end
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 1982359411
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %if.end42, %func_exit
  ret void

func_exit:                                        ; preds = %if.end42
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_gop_structure.12() #0 {
entry:
  %canary = alloca i32
  store i32 235776415, i32* %canary
  %display_no = alloca i32, align 4
  %qp_read = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %order_read = alloca i32, align 4
  %i = alloca i32, align 4
  %coded_frame = alloca i32, align 4
  %k = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %qp = alloca i32, align 4
  %nLength = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 56
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else169

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 56
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat7, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %11 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end165

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then22, label %if.else61

if.then22:                                        ; preds = %if.else
  %call23 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call23, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 56
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat24, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay25, i64 %idx.ext
  %18 = load i8, i8* %add.ptr, align 1
  %conv26 = sext i8 %18 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %15, i64 %idxprom27
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then30, label %if.else58

if.then30:                                        ; preds = %if.then22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 56
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat31, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %display_no) #5
  %22 = load i32, i32* %display_no, align 4
  %23 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %24 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %23, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then43, label %if.end

if.then43:                                        ; preds = %lor.lhs.false, %if.then30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %for.body49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i32 %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %for.body49
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond46

for.end:                                          ; preds = %for.cond46
  br label %if.end60

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %for.end
  br label %if.end164

if.else61:                                        ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then64, label %if.end163

if.then64:                                        ; preds = %if.else61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.then64
  %call67 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call67, align 8
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 56
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat68, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idx.ext70 = sext i32 %45 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70
  %46 = load i8, i8* %add.ptr71, align 1
  %conv72 = sext i8 %46 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %43, i64 %idxprom73
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else93, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 56
  %49 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat79, i64 0, i64 %idxprom80
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ]

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %51 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %52 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %51, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %sw.epilog92

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %53 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %54 = load i32, i32* %coded_frame, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %53, i64 %idxprom87
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx88, i32 0, i32 2
  store i32 2, i32* %reference_idc89, align 4
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb86, %sw.bb83
  store i32 1, i32* %stored_read, align 4
  br label %if.end162

if.else93:                                        ; preds = %land.lhs.true, %if.then64
  %55 = load i32, i32* %stored_read, align 4
  %cmp94 = icmp eq i32 %55, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.else130

land.lhs.true96:                                  ; preds = %if.else93
  %56 = load i32, i32* %qp_read, align 4
  %cmp97 = icmp eq i32 %56, 0
  br i1 %cmp97, label %if.then99, label %if.else130

if.then99:                                        ; preds = %land.lhs.true96
  %call100 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call100, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 56
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat101, i64 0, i64 0
  %59 = load i32, i32* %i, align 4
  %idx.ext103 = sext i32 %59 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %arraydecay102, i64 %idx.ext103
  %60 = load i8, i8* %add.ptr104, align 1
  %conv105 = sext i8 %60 to i32
  %idxprom106 = sext i32 %conv105 to i64
  %arrayidx107 = getelementptr inbounds i16, i16* %57, i64 %idxprom106
  %61 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.else127

if.then111:                                       ; preds = %if.then99
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 56
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat112, i64 0, i64 0
  %63 = load i32, i32* %i, align 4
  %idx.ext114 = sext i32 %63 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay113, i64 %idx.ext114
  %call116 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %qp) #5
  %64 = load i32, i32* %qp, align 4
  %65 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %66 = load i32, i32* %coded_frame, align 4
  %idxprom117 = sext i32 %66 to i64
  %arrayidx118 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %65, i64 %idxprom117
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx118, i32 0, i32 3
  store i32 %64, i32* %slice_qp, align 4
  store i32 1, i32* %qp_read, align 4
  %67 = load i32, i32* %qp, align 4
  %cmp119 = icmp slt i32 %67, 0
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.then111
  %68 = load i32, i32* %qp, align 4
  %cmp122 = icmp sgt i32 %68, 51
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %lor.lhs.false121, %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %lor.lhs.false121
  br label %if.end129

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.end126
  br label %if.end161

if.else130:                                       ; preds = %land.lhs.true96, %if.else93
  %69 = load i32, i32* %stored_read, align 4
  %cmp131 = icmp eq i32 %69, 1
  br i1 %cmp131, label %land.lhs.true133, label %if.end160

land.lhs.true133:                                 ; preds = %if.else130
  %70 = load i32, i32* %qp_read, align 4
  %cmp134 = icmp eq i32 %70, 1
  br i1 %cmp134, label %land.lhs.true136, label %if.end160

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %call137 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call137, align 8
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat138 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 56
  %arraydecay139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat138, i64 0, i64 0
  %73 = load i32, i32* %i, align 4
  %idx.ext140 = sext i32 %73 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %arraydecay139, i64 %idx.ext140
  %74 = load i8, i8* %add.ptr141, align 1
  %conv142 = sext i8 %74 to i32
  %idxprom143 = sext i32 %conv142 to i64
  %arrayidx144 = getelementptr inbounds i16, i16* %71, i64 %idxprom143
  %75 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %75 to i32
  %and146 = and i32 %conv145, 2048
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end160, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true136
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nLength, align 4
  %sub149 = sub nsw i32 %77, 2
  %cmp150 = icmp slt i32 %76, %sub149
  br i1 %cmp150, label %if.then152, label %if.end160

if.then152:                                       ; preds = %land.lhs.true148
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  %79 = load i32, i32* %coded_frame, align 4
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, i32* %coded_frame, align 4
  %80 = load i32, i32* %coded_frame, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %jumpd154, align 4
  %cmp155 = icmp sge i32 %80, %82
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.then152
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true148, %land.lhs.true136, %land.lhs.true133, %if.else130
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end129
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %sw.epilog92
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else61
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end60
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %sw.epilog
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %83 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %83, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end168:                                       ; preds = %for.cond
  br label %if.end171

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %for.end168
  %84 = load i32, i32* %coded_frame, align 4
  %add = add nsw i32 %84, 1
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4
  %86 = load i32, i32* %canary
  %87 = icmp eq i32 %86, 235776415
  br i1 %87, label %88, label %func_exit

88:                                               ; preds = %if.end171, %func_exit
  ret void

func_exit:                                        ; preds = %if.end171
  call void @detect_breach()
  br label %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpret_gop_structure.13() #0 {
entry:
  %qp_read = alloca i32, align 4
  %coded_frame = alloca i32, align 4
  %display_no = alloca i32, align 4
  %nLength = alloca i32, align 4
  %slice_read = alloca i32, align 4
  %order_read = alloca i32, align 4
  %stored_read = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 792286668, i32* %canary
  %qp = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 56
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nLength, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %slice_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %coded_frame, align 4
  %1 = load i32, i32* %nLength, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else169

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nLength, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end168

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %slice_read, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 56
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat7, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %7 to i32
  switch i32 %conv8, label %sw.default [
    i32 80, label %sw.bb
    i32 112, label %sw.bb
    i32 66, label %sw.bb11
    i32 98, label %sw.bb11
    i32 73, label %sw.bb15
    i32 105, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.then6, %if.then6
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %9 = load i32, i32* %coded_frame, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom9
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %slice_type, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6, %if.then6
  %10 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %11 = load i32, i32* %coded_frame, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %10, i64 %idxprom12
  %slice_type14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx13, i32 0, i32 0
  store i32 1, i32* %slice_type14, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then6, %if.then6
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %coded_frame, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom16
  %slice_type18 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx17, i32 0, i32 0
  store i32 2, i32* %slice_type18, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb11, %sw.bb
  store i32 1, i32* %slice_read, align 4
  br label %if.end165

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %order_read, align 4
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then22, label %if.else61

if.then22:                                        ; preds = %if.else
  %call23 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call23, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 56
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat24, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay25, i64 %idx.ext
  %18 = load i8, i8* %add.ptr, align 1
  %conv26 = sext i8 %18 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %15, i64 %idxprom27
  %19 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %19 to i32
  %and = and i32 %conv29, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then30, label %if.else58

if.then30:                                        ; preds = %if.then22
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat31 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 56
  %arraydecay32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat31, i64 0, i64 0
  %21 = load i32, i32* %i, align 4
  %idx.ext33 = sext i32 %21 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay32, i64 %idx.ext33
  %call35 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %display_no) #5
  %22 = load i32, i32* %display_no, align 4
  %23 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %24 = load i32, i32* %coded_frame, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %23, i64 %idxprom36
  %display_no38 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx37, i32 0, i32 1
  store i32 %22, i32* %display_no38, align 4
  store i32 1, i32* %order_read, align 4
  %25 = load i32, i32* %display_no, align 4
  %cmp39 = icmp slt i32 %25, 0
  br i1 %cmp39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %26 = load i32, i32* %display_no, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 5
  %28 = load i32, i32* %jumpd, align 4
  %cmp41 = icmp sge i32 %26, %28
  br i1 %cmp41, label %if.then43, label %if.end

if.then43:                                        ; preds = %lor.lhs.false, %if.then30
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd44 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 5
  %30 = load i32, i32* %jumpd44, align 4
  %sub = sub nsw i32 %30, 1
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %sub) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end

if.end:                                           ; preds = %if.then43, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %coded_frame, align 4
  %cmp47 = icmp slt i32 %31, %32
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %33 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %33, i64 %idxprom50
  %display_no52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx51, i32 0, i32 1
  %35 = load i32, i32* %display_no52, align 4
  %36 = load i32, i32* %display_no, align 4
  %cmp53 = icmp eq i32 %35, %36
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %for.body49
  %37 = load i32, i32* %display_no, align 4
  %38 = load i32, i32* %coded_frame, align 4
  %39 = load i32, i32* %k, align 4
  %call56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38, i32 %39) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %for.body49
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond46

for.end:                                          ; preds = %for.cond46
  br label %if.end60

if.else58:                                        ; preds = %if.then22
  %call59 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %for.end
  br label %if.end164

if.else61:                                        ; preds = %if.else
  %41 = load i32, i32* %order_read, align 4
  %cmp62 = icmp eq i32 %41, 1
  br i1 %cmp62, label %if.then64, label %if.end163

if.then64:                                        ; preds = %if.else61
  %42 = load i32, i32* %stored_read, align 4
  %cmp65 = icmp eq i32 %42, 0
  br i1 %cmp65, label %land.lhs.true, label %if.else93

land.lhs.true:                                    ; preds = %if.then64
  %call67 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call67, align 8
  %44 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %44, i32 0, i32 56
  %arraydecay69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat68, i64 0, i64 0
  %45 = load i32, i32* %i, align 4
  %idx.ext70 = sext i32 %45 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70
  %46 = load i8, i8* %add.ptr71, align 1
  %conv72 = sext i8 %46 to i32
  %idxprom73 = sext i32 %conv72 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %43, i64 %idxprom73
  %47 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %47 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.else93, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %48 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat79 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %48, i32 0, i32 56
  %49 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat79, i64 0, i64 %idxprom80
  %50 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %50 to i32
  switch i32 %conv82, label %sw.default90 [
    i32 69, label %sw.bb83
    i32 101, label %sw.bb83
    i32 82, label %sw.bb86
    i32 114, label %sw.bb86
  ]

sw.bb83:                                          ; preds = %if.then78, %if.then78
  %51 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %52 = load i32, i32* %coded_frame, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %51, i64 %idxprom84
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx85, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %sw.epilog92

sw.bb86:                                          ; preds = %if.then78, %if.then78
  %53 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %54 = load i32, i32* %coded_frame, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %53, i64 %idxprom87
  %reference_idc89 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx88, i32 0, i32 2
  store i32 2, i32* %reference_idc89, align 4
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.then78
  %call91 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb86, %sw.bb83
  store i32 1, i32* %stored_read, align 4
  br label %if.end162

if.else93:                                        ; preds = %land.lhs.true, %if.then64
  %55 = load i32, i32* %stored_read, align 4
  %cmp94 = icmp eq i32 %55, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.else130

land.lhs.true96:                                  ; preds = %if.else93
  %56 = load i32, i32* %qp_read, align 4
  %cmp97 = icmp eq i32 %56, 0
  br i1 %cmp97, label %if.then99, label %if.else130

if.then99:                                        ; preds = %land.lhs.true96
  %call100 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call100, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat101 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 56
  %arraydecay102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat101, i64 0, i64 0
  %59 = load i32, i32* %i, align 4
  %idx.ext103 = sext i32 %59 to i64
  %add.ptr104 = getelementptr inbounds i8, i8* %arraydecay102, i64 %idx.ext103
  %60 = load i8, i8* %add.ptr104, align 1
  %conv105 = sext i8 %60 to i32
  %idxprom106 = sext i32 %conv105 to i64
  %arrayidx107 = getelementptr inbounds i16, i16* %57, i64 %idxprom106
  %61 = load i16, i16* %arrayidx107, align 2
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then111, label %if.else127

if.then111:                                       ; preds = %if.then99
  %62 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat112 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %62, i32 0, i32 56
  %arraydecay113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat112, i64 0, i64 0
  %63 = load i32, i32* %i, align 4
  %idx.ext114 = sext i32 %63 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay113, i64 %idx.ext114
  %call116 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %add.ptr115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %qp) #5
  %64 = load i32, i32* %qp, align 4
  %65 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %66 = load i32, i32* %coded_frame, align 4
  %idxprom117 = sext i32 %66 to i64
  %arrayidx118 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %65, i64 %idxprom117
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx118, i32 0, i32 3
  store i32 %64, i32* %slice_qp, align 4
  store i32 1, i32* %qp_read, align 4
  %67 = load i32, i32* %qp, align 4
  %cmp119 = icmp slt i32 %67, 0
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.then111
  %68 = load i32, i32* %qp, align 4
  %cmp122 = icmp sgt i32 %68, 51
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %lor.lhs.false121, %if.then111
  %call125 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %lor.lhs.false121
  br label %if.end129

if.else127:                                       ; preds = %if.then99
  %call128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.end126
  br label %if.end161

if.else130:                                       ; preds = %land.lhs.true96, %if.else93
  %69 = load i32, i32* %stored_read, align 4
  %cmp131 = icmp eq i32 %69, 1
  br i1 %cmp131, label %land.lhs.true133, label %if.end160

land.lhs.true133:                                 ; preds = %if.else130
  %70 = load i32, i32* %qp_read, align 4
  %cmp134 = icmp eq i32 %70, 1
  br i1 %cmp134, label %land.lhs.true136, label %if.end160

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %call137 = call i16** @__ctype_b_loc() #7
  %71 = load i16*, i16** %call137, align 8
  %72 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %ExplicitPyramidFormat138 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %72, i32 0, i32 56
  %arraydecay139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %ExplicitPyramidFormat138, i64 0, i64 0
  %73 = load i32, i32* %i, align 4
  %idx.ext140 = sext i32 %73 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %arraydecay139, i64 %idx.ext140
  %74 = load i8, i8* %add.ptr141, align 1
  %conv142 = sext i8 %74 to i32
  %idxprom143 = sext i32 %conv142 to i64
  %arrayidx144 = getelementptr inbounds i16, i16* %71, i64 %idxprom143
  %75 = load i16, i16* %arrayidx144, align 2
  %conv145 = zext i16 %75 to i32
  %and146 = and i32 %conv145, 2048
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.end160, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true136
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %nLength, align 4
  %sub149 = sub nsw i32 %77, 2
  %cmp150 = icmp slt i32 %76, %sub149
  br i1 %cmp150, label %if.then152, label %if.end160

if.then152:                                       ; preds = %land.lhs.true148
  store i32 0, i32* %stored_read, align 4
  store i32 0, i32* %qp_read, align 4
  store i32 0, i32* %order_read, align 4
  store i32 0, i32* %slice_read, align 4
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  %79 = load i32, i32* %coded_frame, align 4
  %inc153 = add nsw i32 %79, 1
  store i32 %inc153, i32* %coded_frame, align 4
  %80 = load i32, i32* %coded_frame, align 4
  %81 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %jumpd154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %81, i32 0, i32 5
  %82 = load i32, i32* %jumpd154, align 4
  %cmp155 = icmp sge i32 %80, %82
  br i1 %cmp155, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.then152
  %call158 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.then152
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true148, %land.lhs.true136, %land.lhs.true133, %if.else130
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end129
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %sw.epilog92
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else61
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end60
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %sw.epilog
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %83 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %83, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end168:                                       ; preds = %for.cond
  br label %if.end171

if.else169:                                       ; preds = %entry
  %call170 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i64 0, i64 0), i32 400)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %for.end168
  %84 = load i32, i32* %coded_frame, align 4
  %add = add nsw i32 %84, 1
  %85 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %85, i32 0, i32 34
  store i32 %add, i32* %successive_Bframe, align 4
  %86 = load i32, i32* %canary
  %87 = icmp eq i32 %86, 792286668
  br i1 %87, label %88, label %func_exit

88:                                               ; preds = %if.end171, %func_exit
  ret void

func_exit:                                        ; preds = %if.end171
  call void @detect_breach()
  br label %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gop_pyramid.14(i32 %level, i32 %frm_no, i32 %frames, %struct.GOP_DATA* %pyramid_structure) #0 {
entry:
  %frm_no.addr = alloca i32, align 4
  %canary = alloca i32
  store i32 1383770591, i32* %canary
  %pyramid_structure.addr = alloca %struct.GOP_DATA*, align 8
  %level.addr = alloca i32, align 4
  %frames.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %frm_no, i32* %frm_no.addr, align 4
  store i32 %frames, i32* %frames.addr, align 4
  store %struct.GOP_DATA* %pyramid_structure, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %frm_no.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %frm_no.addr, align 4
  %3 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %3, i32 0, i32 34
  %4 = load i32, i32* %successive_Bframe, align 4
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %6 = load i32, i32* %frm_no.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %5, i64 %idxprom
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 1
  %7 = load i32, i32* %display_no, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %9 = load i32, i32* %frm_no.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %8, i64 %idxprom6
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx7, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %10 = load i32, i32* %frm_no.addr, align 4
  %11 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %12 = load i32, i32* %frm_no.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %11, i64 %idxprom8
  %display_no10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx9, i32 0, i32 1
  store i32 %10, i32* %display_no10, align 4
  %13 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %14 = load i32, i32* %frm_no.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %13, i64 %idxprom11
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %15 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %16 = load i32, i32* %frm_no.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %15, i64 %idxprom13
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx14, i32 0, i32 2
  store i32 0, i32* %reference_idc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %land.lhs.true, %if.then
  br label %if.end42

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %frm_no.addr, align 4
  %cmp15 = icmp sge i32 %17, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end32

land.lhs.true16:                                  ; preds = %if.else
  %18 = load i32, i32* %frm_no.addr, align 4
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe17 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 34
  %20 = load i32, i32* %successive_Bframe17, align 4
  %cmp18 = icmp slt i32 %18, %20
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true16
  %21 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %22 = load i32, i32* %frm_no.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %21, i64 %idxprom20
  %slice_type22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx21, i32 0, i32 0
  store i32 1, i32* %slice_type22, align 4
  %23 = load i32, i32* %frm_no.addr, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %25 = load i32, i32* %frm_no.addr, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom23
  %display_no25 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx24, i32 0, i32 1
  store i32 %23, i32* %display_no25, align 4
  %26 = load i32, i32* %level.addr, align 4
  %27 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %28 = load i32, i32* %frm_no.addr, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %27, i64 %idxprom26
  %pyramid_layer28 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx27, i32 0, i32 4
  store i32 %26, i32* %pyramid_layer28, align 4
  %29 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  %30 = load i32, i32* %frm_no.addr, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %29, i64 %idxprom29
  %reference_idc31 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx30, i32 0, i32 2
  store i32 2, i32* %reference_idc31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true16, %if.else
  %31 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %31, 1
  %32 = load i32, i32* %frm_no.addr, align 4
  %33 = load i32, i32* %frames.addr, align 4
  %add = add nsw i32 %33, 1
  %div = sdiv i32 %add, 2
  %sub33 = sub nsw i32 %32, %div
  %34 = load i32, i32* %frames.addr, align 4
  %add34 = add nsw i32 %34, 1
  %div35 = sdiv i32 %add34, 2
  %35 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub, i32 %sub33, i32 %div35, %struct.GOP_DATA* %35)
  %36 = load i32, i32* %level.addr, align 4
  %sub36 = sub nsw i32 %36, 1
  %37 = load i32, i32* %frm_no.addr, align 4
  %38 = load i32, i32* %frames.addr, align 4
  %add37 = add nsw i32 %38, 1
  %div38 = sdiv i32 %add37, 2
  %add39 = add nsw i32 %37, %div38
  %39 = load i32, i32* %frames.addr, align 4
  %add40 = add nsw i32 %39, 1
  %div41 = sdiv i32 %add40, 2
  %40 = load %struct.GOP_DATA*, %struct.GOP_DATA** %pyramid_structure.addr, align 8
  call void @gop_pyramid(i32 %sub36, i32 %add39, i32 %div41, %struct.GOP_DATA* %40)
  br label %if.end42

if.end42:                                         ; preds = %if.end32, %if.end
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 1383770591
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %if.end42, %func_exit
  ret void

func_exit:                                        ; preds = %if.end42
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poc_based_ref_management.15(i32 %current_pic_num) #0 {
entry:
  %current_pic_num.addr = alloca i32, align 4
  %tmp_drpm = alloca %struct.DecRefPicMarking_s*, align 8
  %tmp_drpm2 = alloca %struct.DecRefPicMarking_s*, align 8
  %pic_num = alloca i32, align 4
  %i = alloca i32, align 4
  %canary = alloca i32
  store i32 2045136717, i32* %canary
  %min_poc = alloca i32, align 4
  store i32 %current_pic_num, i32* %current_pic_num.addr, align 4
  store i32 0, i32* %pic_num, align 4
  store i32 2147483647, i32* %min_poc, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 117
  %1 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer, align 8
  %cmp = icmp ne %struct.DecRefPicMarking_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 5), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 6), align 4
  %add = add i32 %2, %3
  %cmp1 = icmp eq i32 %add, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 4), align 4
  %cmp4 = icmp ult i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %6, i64 %idxprom
  %8 = load %struct.frame_store*, %struct.frame_store** %arrayidx, align 8
  %is_reference = getelementptr inbounds %struct.frame_store, %struct.frame_store* %8, i32 0, i32 1
  %9 = load i32, i32* %is_reference, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %10, i64 %idxprom5
  %12 = load %struct.frame_store*, %struct.frame_store** %arrayidx6, align 8
  %is_long_term = getelementptr inbounds %struct.frame_store, %struct.frame_store* %12, i32 0, i32 2
  %13 = load i32, i32* %is_long_term, align 8
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end20, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %14, i64 %idxprom9
  %16 = load %struct.frame_store*, %struct.frame_store** %arrayidx10, align 8
  %poc = getelementptr inbounds %struct.frame_store, %struct.frame_store* %16, i32 0, i32 9
  %17 = load i32, i32* %poc, align 4
  %18 = load i32, i32* %min_poc, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %land.lhs.true8
  %19 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %19, i64 %idxprom13
  %21 = load %struct.frame_store*, %struct.frame_store** %arrayidx14, align 8
  %frame = getelementptr inbounds %struct.frame_store, %struct.frame_store* %21, i32 0, i32 10
  %22 = load %struct.storable_picture*, %struct.storable_picture** %frame, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %22, i32 0, i32 1
  %23 = load i32, i32* %poc15, align 4
  store i32 %23, i32* %min_poc, align 4
  %24 = load %struct.frame_store**, %struct.frame_store*** getelementptr inbounds (%struct.decoded_picture_buffer, %struct.decoded_picture_buffer* @dpb, i32 0, i32 0), align 8
  %25 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.frame_store*, %struct.frame_store** %24, i64 %idxprom16
  %26 = load %struct.frame_store*, %struct.frame_store** %arrayidx17, align 8
  %frame18 = getelementptr inbounds %struct.frame_store, %struct.frame_store* %26, i32 0, i32 10
  %27 = load %struct.storable_picture*, %struct.storable_picture** %frame18, align 8
  %pic_num19 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %27, i32 0, i32 11
  %28 = load i32, i32* %pic_num19, align 4
  store i32 %28, i32* %pic_num, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, i32* %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call noalias i8* @calloc(i64 1, i64 32) #5
  %30 = bitcast i8* %call to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %30, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %cmp21 = icmp eq %struct.DecRefPicMarking_s* null, %30
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %31 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %Next = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %31, i32 0, i32 5
  store %struct.DecRefPicMarking_s* null, %struct.DecRefPicMarking_s** %Next, align 8
  %32 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %memory_management_control_operation = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %32, i32 0, i32 0
  store i32 0, i32* %memory_management_control_operation, align 8
  %call24 = call noalias i8* @calloc(i64 1, i64 32) #5
  %33 = bitcast i8* %call24 to %struct.DecRefPicMarking_s*
  store %struct.DecRefPicMarking_s* %33, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %cmp25 = icmp eq %struct.DecRefPicMarking_s* null, %33
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @no_mem_exit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  %34 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm, align 8
  %35 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %Next28 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %35, i32 0, i32 5
  store %struct.DecRefPicMarking_s* %34, %struct.DecRefPicMarking_s** %Next28, align 8
  %36 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %memory_management_control_operation29 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %36, i32 0, i32 0
  store i32 1, i32* %memory_management_control_operation29, align 8
  %37 = load i32, i32* %current_pic_num.addr, align 4
  %38 = load i32, i32* %pic_num, align 4
  %sub = sub i32 %37, %38
  %sub30 = sub i32 %sub, 1
  %39 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %difference_of_pic_nums_minus1 = getelementptr inbounds %struct.DecRefPicMarking_s, %struct.DecRefPicMarking_s* %39, i32 0, i32 1
  store i32 %sub30, i32* %difference_of_pic_nums_minus1, align 4
  %40 = load %struct.DecRefPicMarking_s*, %struct.DecRefPicMarking_s** %tmp_drpm2, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dec_ref_pic_marking_buffer31 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 117
  store %struct.DecRefPicMarking_s* %40, %struct.DecRefPicMarking_s** %dec_ref_pic_marking_buffer31, align 8
  br label %return

return:                                           ; preds = %if.end27, %if.then2, %if.then
  %42 = load i32, i32* %canary
  %43 = icmp eq i32 %42, 2045136717
  br i1 %43, label %44, label %func_exit

44:                                               ; preds = %return, %func_exit
  ret void

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_pyramid.16() #0 {
entry:
  %i = alloca i32, align 4
  %curGOPLeveldist = alloca i32*, align 8
  %GOPlevels = alloca i32, align 4
  %curlevel = alloca i32, align 4
  %j = alloca i32, align 4
  %curGOPLevelfrm = alloca i32*, align 8
  %levelrefs = alloca i32, align 4
  %i28 = alloca i32, align 4
  %canary = alloca i32
  store i32 1405920558, i32* %canary
  %centerB = alloca i32, align 4
  %Bframes = alloca i32, align 4
  %tempnum = alloca i32, align 4
  %prvlevelrefs = alloca i32, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 34
  %1 = load i32, i32* %successive_Bframe, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %centerB, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %PyramidCoding = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 55
  %3 = load i32, i32* %PyramidCoding, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe1 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %successive_Bframe1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %centerB, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %9 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %9, i64 %idxprom
  %slice_type = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx, i32 0, i32 0
  store i32 1, i32* %slice_type, align 4
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %12 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %12, i64 %idxprom5
  %display_no = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx6, i32 0, i32 1
  store i32 %add, i32* %display_no, align 4
  %14 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %14, i64 %idxprom7
  %pyramid_layer = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx8, i32 0, i32 4
  store i32 0, i32* %pyramid_layer, align 4
  %16 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %16, i64 %idxprom9
  %reference_idc = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx10, i32 0, i32 2
  store i32 2, i32* %reference_idc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %18, i64 %idxprom11
  %slice_type13 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx12, i32 0, i32 0
  store i32 1, i32* %slice_type13, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %centerB, align 4
  %sub = sub nsw i32 %20, %21
  %mul14 = mul nsw i32 %sub, 2
  %22 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %22, i64 %idxprom15
  %display_no17 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx16, i32 0, i32 1
  store i32 %mul14, i32* %display_no17, align 4
  %24 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %24, i64 %idxprom18
  %pyramid_layer20 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx19, i32 0, i32 4
  store i32 1, i32* %pyramid_layer20, align 4
  %26 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %26, i64 %idxprom21
  %reference_idc23 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx22, i32 0, i32 2
  store i32 0, i32* %reference_idc23, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end200

if.else24:                                        ; preds = %entry
  store i32 0, i32* %GOPlevels, align 4
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe25 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 34
  %30 = load i32, i32* %successive_Bframe25, align 4
  store i32 %30, i32* %Bframes, align 4
  %31 = load i32, i32* %GOPlevels, align 4
  store i32 %31, i32* %curlevel, align 4
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe26 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 34
  %33 = load i32, i32* %successive_Bframe26, align 4
  store i32 %33, i32* %prvlevelrefs, align 4
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 34
  %35 = load i32, i32* %successive_Bframe27, align 4
  store i32 %35, i32* %levelrefs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else24
  %36 = load i32, i32* %Bframes, align 4
  %cmp29 = icmp sgt i32 %36, 2
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i32, i32* %Bframes, align 4
  %div30 = sdiv i32 %37, 2
  store i32 %div30, i32* %Bframes, align 4
  %38 = load i32, i32* %GOPlevels, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %GOPlevels, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %GOPlevels, align 4
  store i32 %39, i32* %curlevel, align 4
  %40 = load i32, i32* %GOPlevels, align 4
  %add32 = add nsw i32 %40, 1
  %conv = sext i32 %add32 to i64
  %mul33 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul33) #5
  %41 = bitcast i8* %call to i32*
  store i32* %41, i32** %curGOPLevelfrm, align 8
  %cmp34 = icmp eq i32* null, %41
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %while.end
  %42 = load i32, i32* %GOPlevels, align 4
  %add38 = add nsw i32 %42, 1
  %conv39 = sext i32 %add38 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call noalias i8* @malloc(i64 %mul40) #5
  %43 = bitcast i8* %call41 to i32*
  store i32* %43, i32** %curGOPLeveldist, align 8
  %cmp42 = icmp eq i32* null, %43
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void @no_mem_exit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end37
  store i32 0, i32* %i28, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %if.end45
  %44 = load i32, i32* %i28, align 4
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 34
  %46 = load i32, i32* %successive_Bframe47, align 4
  %cmp48 = icmp slt i32 %44, %46
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond46
  %47 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %48 = load i32, i32* %i28, align 4
  %idxprom51 = sext i32 %48 to i64
  %arrayidx52 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %47, i64 %idxprom51
  %display_no53 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx52, i32 0, i32 1
  store i32 0, i32* %display_no53, align 4
  %49 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %50 = load i32, i32* %i28, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %49, i64 %idxprom54
  %slice_type56 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx55, i32 0, i32 0
  store i32 1, i32* %slice_type56, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %51 = load i32, i32* %i28, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i28, align 4
  br label %for.cond46

for.end59:                                        ; preds = %for.cond46
  br label %while.cond60

while.cond60:                                     ; preds = %while.body63, %for.end59
  %52 = load i32, i32* %levelrefs, align 4
  %cmp61 = icmp sgt i32 %52, 2
  br i1 %cmp61, label %while.body63, label %while.end72

while.body63:                                     ; preds = %while.cond60
  %53 = load i32, i32* %levelrefs, align 4
  %div64 = sdiv i32 %53, 2
  store i32 %div64, i32* %levelrefs, align 4
  %54 = load i32, i32* %prvlevelrefs, align 4
  %55 = load i32, i32* %levelrefs, align 4
  %sub65 = sub nsw i32 %54, %55
  %56 = load i32*, i32** %curGOPLevelfrm, align 8
  %57 = load i32, i32* %curlevel, align 4
  %idxprom66 = sext i32 %57 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %56, i64 %idxprom66
  store i32 %sub65, i32* %arrayidx67, align 4
  %58 = load i32, i32* %levelrefs, align 4
  %59 = load i32, i32* %levelrefs, align 4
  %rem = srem i32 %59, 2
  %add68 = add nsw i32 %58, %rem
  %60 = load i32*, i32** %curGOPLeveldist, align 8
  %61 = load i32, i32* %GOPlevels, align 4
  %62 = load i32, i32* %curlevel, align 4
  %sub69 = sub nsw i32 %61, %62
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32, i32* %60, i64 %idxprom70
  store i32 %add68, i32* %arrayidx71, align 4
  %63 = load i32, i32* %levelrefs, align 4
  store i32 %63, i32* %prvlevelrefs, align 4
  %64 = load i32, i32* %curlevel, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %curlevel, align 4
  br label %while.cond60

while.end72:                                      ; preds = %while.cond60
  %65 = load i32, i32* %levelrefs, align 4
  %66 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %arrayidx73, align 4
  %67 = load i32, i32* %levelrefs, align 4
  %68 = load i32, i32* %levelrefs, align 4
  %rem74 = srem i32 %68, 2
  %add75 = add nsw i32 %67, %rem74
  %69 = load i32*, i32** %curGOPLeveldist, align 8
  %70 = load i32, i32* %GOPlevels, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds i32, i32* %69, i64 %idxprom76
  store i32 %add75, i32* %arrayidx77, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc89, %while.end72
  %71 = load i32, i32* %j, align 4
  %72 = load i32*, i32** %curGOPLevelfrm, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %72, i64 0
  %73 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %71, %73
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond78
  %74 = load i32, i32* %GOPlevels, align 4
  %75 = load i32, i32* %j, align 4
  %add83 = add nsw i32 %75, 1
  %76 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx84, align 4
  %mul85 = mul nsw i32 %add83, %77
  %sub86 = sub nsw i32 %mul85, 1
  %78 = load i32*, i32** %curGOPLeveldist, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %79, 1
  %80 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  call void @gop_pyramid(i32 %74, i32 %sub86, i32 %sub88, %struct.GOP_DATA* %80)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %81 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %81, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond78

for.end91:                                        ; preds = %for.cond78
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %successive_Bframe92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 34
  %83 = load i32, i32* %successive_Bframe92, align 4
  store i32 %83, i32* %j, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc197, %for.end91
  %84 = load i32, i32* %j, align 4
  %cmp94 = icmp sgt i32 %84, 0
  br i1 %cmp94, label %for.body96, label %for.end199

for.body96:                                       ; preds = %for.cond93
  store i32 1, i32* %i28, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc194, %for.body96
  %85 = load i32, i32* %i28, align 4
  %86 = load i32, i32* %j, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %for.body100, label %for.end196

for.body100:                                      ; preds = %for.cond97
  %87 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %88 = load i32, i32* %i28, align 4
  %idxprom101 = sext i32 %88 to i64
  %arrayidx102 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %87, i64 %idxprom101
  %pyramid_layer103 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx102, i32 0, i32 4
  %89 = load i32, i32* %pyramid_layer103, align 4
  %90 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %91 = load i32, i32* %i28, align 4
  %sub104 = sub nsw i32 %91, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %90, i64 %idxprom105
  %pyramid_layer107 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx106, i32 0, i32 4
  %92 = load i32, i32* %pyramid_layer107, align 4
  %cmp108 = icmp sgt i32 %89, %92
  br i1 %cmp108, label %if.then110, label %if.end193

if.then110:                                       ; preds = %for.body100
  %93 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %94 = load i32, i32* %i28, align 4
  %sub111 = sub nsw i32 %94, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %93, i64 %idxprom112
  %display_no114 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx113, i32 0, i32 1
  %95 = load i32, i32* %display_no114, align 4
  store i32 %95, i32* %tempnum, align 4
  %96 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %97 = load i32, i32* %i28, align 4
  %idxprom115 = sext i32 %97 to i64
  %arrayidx116 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %96, i64 %idxprom115
  %display_no117 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx116, i32 0, i32 1
  %98 = load i32, i32* %display_no117, align 4
  %99 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %100 = load i32, i32* %i28, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %99, i64 %idxprom119
  %display_no121 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx120, i32 0, i32 1
  store i32 %98, i32* %display_no121, align 4
  %101 = load i32, i32* %tempnum, align 4
  %102 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %103 = load i32, i32* %i28, align 4
  %idxprom122 = sext i32 %103 to i64
  %arrayidx123 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %102, i64 %idxprom122
  %display_no124 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx123, i32 0, i32 1
  store i32 %101, i32* %display_no124, align 4
  %104 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %105 = load i32, i32* %i28, align 4
  %sub125 = sub nsw i32 %105, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %104, i64 %idxprom126
  %pyramid_layer128 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx127, i32 0, i32 4
  %106 = load i32, i32* %pyramid_layer128, align 4
  store i32 %106, i32* %tempnum, align 4
  %107 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %108 = load i32, i32* %i28, align 4
  %idxprom129 = sext i32 %108 to i64
  %arrayidx130 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %107, i64 %idxprom129
  %pyramid_layer131 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx130, i32 0, i32 4
  %109 = load i32, i32* %pyramid_layer131, align 4
  %110 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %111 = load i32, i32* %i28, align 4
  %sub132 = sub nsw i32 %111, 1
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %110, i64 %idxprom133
  %pyramid_layer135 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx134, i32 0, i32 4
  store i32 %109, i32* %pyramid_layer135, align 4
  %112 = load i32, i32* %tempnum, align 4
  %113 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %114 = load i32, i32* %i28, align 4
  %idxprom136 = sext i32 %114 to i64
  %arrayidx137 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %113, i64 %idxprom136
  %pyramid_layer138 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx137, i32 0, i32 4
  store i32 %112, i32* %pyramid_layer138, align 4
  %115 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %116 = load i32, i32* %i28, align 4
  %sub139 = sub nsw i32 %116, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %115, i64 %idxprom140
  %reference_idc142 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx141, i32 0, i32 2
  %117 = load i32, i32* %reference_idc142, align 4
  store i32 %117, i32* %tempnum, align 4
  %118 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %119 = load i32, i32* %i28, align 4
  %idxprom143 = sext i32 %119 to i64
  %arrayidx144 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %118, i64 %idxprom143
  %reference_idc145 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx144, i32 0, i32 2
  %120 = load i32, i32* %reference_idc145, align 4
  %121 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %122 = load i32, i32* %i28, align 4
  %sub146 = sub nsw i32 %122, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %121, i64 %idxprom147
  %reference_idc149 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx148, i32 0, i32 2
  store i32 %120, i32* %reference_idc149, align 4
  %123 = load i32, i32* %tempnum, align 4
  %124 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %125 = load i32, i32* %i28, align 4
  %idxprom150 = sext i32 %125 to i64
  %arrayidx151 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %124, i64 %idxprom150
  %reference_idc152 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx151, i32 0, i32 2
  store i32 %123, i32* %reference_idc152, align 4
  %126 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %127 = load i32, i32* %i28, align 4
  %sub153 = sub nsw i32 %127, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %126, i64 %idxprom154
  %slice_type156 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx155, i32 0, i32 0
  %128 = load i32, i32* %slice_type156, align 4
  store i32 %128, i32* %tempnum, align 4
  %129 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %130 = load i32, i32* %i28, align 4
  %idxprom157 = sext i32 %130 to i64
  %arrayidx158 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %129, i64 %idxprom157
  %slice_type159 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx158, i32 0, i32 0
  %131 = load i32, i32* %slice_type159, align 4
  %132 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %133 = load i32, i32* %i28, align 4
  %sub160 = sub nsw i32 %133, 1
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %132, i64 %idxprom161
  %slice_type163 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx162, i32 0, i32 0
  store i32 %131, i32* %slice_type163, align 4
  %134 = load i32, i32* %tempnum, align 4
  %135 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %136 = load i32, i32* %i28, align 4
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %135, i64 %idxprom164
  %slice_type166 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx165, i32 0, i32 0
  store i32 %134, i32* %slice_type166, align 4
  %137 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %138 = load i32, i32* %i28, align 4
  %sub167 = sub nsw i32 %138, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %137, i64 %idxprom168
  %slice_qp = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx169, i32 0, i32 3
  %139 = load i32, i32* %slice_qp, align 4
  store i32 %139, i32* %tempnum, align 4
  %140 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %141 = load i32, i32* %i28, align 4
  %idxprom170 = sext i32 %141 to i64
  %arrayidx171 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %140, i64 %idxprom170
  %slice_qp172 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx171, i32 0, i32 3
  %142 = load i32, i32* %slice_qp172, align 4
  %143 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %144 = load i32, i32* %i28, align 4
  %sub173 = sub nsw i32 %144, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %143, i64 %idxprom174
  %slice_qp176 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx175, i32 0, i32 3
  store i32 %142, i32* %slice_qp176, align 4
  %145 = load i32, i32* %tempnum, align 4
  %146 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %147 = load i32, i32* %i28, align 4
  %idxprom177 = sext i32 %147 to i64
  %arrayidx178 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %146, i64 %idxprom177
  %slice_qp179 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx178, i32 0, i32 3
  store i32 %145, i32* %slice_qp179, align 4
  %148 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %149 = load i32, i32* %i28, align 4
  %sub180 = sub nsw i32 %149, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %148, i64 %idxprom181
  %pyramidPocDelta = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx182, i32 0, i32 5
  %150 = load i32, i32* %pyramidPocDelta, align 4
  store i32 %150, i32* %tempnum, align 4
  %151 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %152 = load i32, i32* %i28, align 4
  %idxprom183 = sext i32 %152 to i64
  %arrayidx184 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %151, i64 %idxprom183
  %pyramidPocDelta185 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx184, i32 0, i32 5
  %153 = load i32, i32* %pyramidPocDelta185, align 4
  %154 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %155 = load i32, i32* %i28, align 4
  %sub186 = sub nsw i32 %155, 1
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %154, i64 %idxprom187
  %pyramidPocDelta189 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx188, i32 0, i32 5
  store i32 %153, i32* %pyramidPocDelta189, align 4
  %156 = load i32, i32* %tempnum, align 4
  %157 = load %struct.GOP_DATA*, %struct.GOP_DATA** @gop_structure, align 8
  %158 = load i32, i32* %i28, align 4
  %idxprom190 = sext i32 %158 to i64
  %arrayidx191 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %157, i64 %idxprom190
  %pyramidPocDelta192 = getelementptr inbounds %struct.GOP_DATA, %struct.GOP_DATA* %arrayidx191, i32 0, i32 5
  store i32 %156, i32* %pyramidPocDelta192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then110, %for.body100
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193
  %159 = load i32, i32* %i28, align 4
  %inc195 = add nsw i32 %159, 1
  store i32 %inc195, i32* %i28, align 4
  br label %for.cond97

for.end196:                                       ; preds = %for.cond97
  br label %for.inc197

for.inc197:                                       ; preds = %for.end196
  %160 = load i32, i32* %j, align 4
  %dec198 = add nsw i32 %160, -1
  store i32 %dec198, i32* %j, align 4
  br label %for.cond93

for.end199:                                       ; preds = %for.cond93
  br label %if.end200

if.end200:                                        ; preds = %for.end199, %for.end
  %161 = load i32, i32* %canary
  %162 = icmp eq i32 %161, 1405920558
  br i1 %162, label %163, label %func_exit

163:                                              ; preds = %if.end200, %func_exit
  ret void

func_exit:                                        ; preds = %if.end200
  call void @detect_breach()
  br label %163
}

declare void @detect_breach()

declare i32 @get_rand()

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"}
