; ModuleID = 'perf_compress.c.rand.4R1.bc'
source_filename = "perf_compress.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"Usage: compress [-dfvcV] [-b maxbits] [file ...]\0A\00", align 1
@bgnd_flag = common dso_local global void (i32)* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@do_decomp = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@zcat_flg = dso_local global i32 0, align 4
@quiet = dso_local global i32 1, align 4
@force = dso_local global i32 0, align 4
@nomagic = dso_local global i32 0, align 4
@block_compress = dso_local global i32 128, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Missing maxbits\0A\00", align 1
@maxbits = dso_local global i32 16, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown flag: '%c'; \00", align 1
@maxmaxcode = dso_local global i64 65536, align 8
@exit_stat = dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@magic_header = dso_local global [3 x i8] c"\1F\9D\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: not in compressed format\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"%s: compressed with %d bits, can only handle %d bits\0A\00", align 1
@ofname = common dso_local global [100 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [40 x i8] c"%s: already has .Z suffix -- no change\0A\00", align 1
@fsize = common dso_local global i64 0, align 8
@hsize = dso_local global i64 69001, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: filename too long to tack on .Z\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"%s already exists;\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c" do you wish to overwrite %s (y or n)? \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"stdin: not in compressed format\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"stdin: compressed with %d bits, can only handle %d bits\0A\00", align 1
@offset = internal global i32 0, align 4
@bytes_out = common dso_local global i64 0, align 8
@out_count = dso_local global i64 0, align 8
@clear_flg = dso_local global i32 0, align 4
@ratio = dso_local global i64 0, align 8
@in_count = dso_local global i64 1, align 8
@checkpoint = dso_local global i64 10000, align 8
@n_bits = common dso_local global i32 0, align 4
@maxcode = common dso_local global i64 0, align 8
@free_ent = dso_local global i64 0, align 8
@htab = common dso_local global [69001 x i64] zeroinitializer, align 16
@codetab = common dso_local global [69001 x i16] zeroinitializer, align 16
@.str.19 = private unnamed_addr constant [14 x i8] c"Compression: \00", align 1
@buf = internal global [16 x i8] zeroinitializer, align 16
@rmask = dso_local global [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", align 1
@lmask = dso_local global [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", align 1
@getcode.offset = internal global i32 0, align 4
@getcode.size = internal global i32 0, align 4
@getcode.buf = internal global [16 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [34 x i8] c" -- not a regular file: unchanged\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c" -- has %ld other links: unchanged\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c" -- file unchanged\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" -- replaced with %s\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"uncompress: corrupt input\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%d.%02d%%\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@rcs_ident = internal global [109 x i8] c"$Header: /z/repository/benchmarks/specint92/026.compress/src/compress.c,v 1.2 2005/01/04 22:46:33 mchu Exp $\00", align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"Options: \00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"BITS = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %overwrite = alloca i32, align 4
  %tempname = alloca [100 x i8], align 16
  %filelist = alloca i8**, align 8
  %fileptr = alloca i8**, align 8
  %cp = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %response = alloca [2 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %overwrite, align 4
  %call = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  store void (i32)* %call, void (i32)** @bgnd_flag, align 8
  %cmp = icmp ne void (i32)* %call, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call void (i32)* @signal(i32 2, void (i32)* @onintr) #5
  %call2 = call void (i32)* @signal(i32 11, void (i32)* @oops) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call3 = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call3 to i8**
  store i8** %1, i8*** %fileptr, align 8
  store i8** %1, i8*** %filelist, align 8
  %2 = load i8**, i8*** %filelist, align 8
  store i8* null, i8** %2, align 8
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %call4 = call i8* @rindex(i8* %4, i32 47) #6
  store i8* %call4, i8** %cp, align 8
  %cmp5 = icmp ne i8* %call4, null
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx8, align 8
  store i8* %7, i8** %cp, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %8 = load i8*, i8** %cp, align 8
  %call10 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end9
  store i32 1, i32* @do_decomp, align 4
  br label %if.end20

if.else14:                                        ; preds = %if.end9
  %9 = load i8*, i8** %cp, align 8
  %call15 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else14
  store i32 1, i32* @do_decomp, align 4
  store i32 1, i32* @zcat_flg, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then13
  %10 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %argc.addr, align 4
  %11 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %incdec.ptr21, i8*** %argv.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %12 = load i32, i32* %argc.addr, align 4
  %cmp22 = icmp sgt i32 %12, 0
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %conv24 = sext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 45
  br i1 %cmp25, label %if.then27, label %if.else51

if.then27:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then27
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr28, i8** %16, align 8
  %18 = load i8, i8* %incdec.ptr28, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %conv29 = sext i8 %21 to i32
  switch i32 %conv29, label %sw.default [
    i32 86, label %sw.bb
    i32 118, label %sw.bb30
    i32 100, label %sw.bb31
    i32 102, label %sw.bb32
    i32 70, label %sw.bb32
    i32 110, label %sw.bb33
    i32 67, label %sw.bb34
    i32 98, label %sw.bb35
    i32 99, label %sw.bb47
    i32 113, label %sw.bb48
  ]

sw.bb:                                            ; preds = %while.body
  call void @version()
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  store i32 0, i32* @quiet, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %while.body
  store i32 1, i32* @do_decomp, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %while.body, %while.body
  store i32 1, i32* %overwrite, align 4
  store i32 1, i32* @force, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %while.body
  store i32 1, i32* @nomagic, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %while.body
  store i32 0, i32* @block_compress, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %while.body
  %22 = load i8**, i8*** %argv.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr36, i8** %22, align 8
  %24 = load i8, i8* %incdec.ptr36, align 1
  %conv37 = sext i8 %24 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.end45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb35
  %25 = load i32, i32* %argc.addr, align 4
  %dec39 = add nsw i32 %25, -1
  store i32 %dec39, i32* %argc.addr, align 4
  %tobool40 = icmp ne i32 %dec39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.then43

land.lhs.true:                                    ; preds = %lor.lhs.false
  %26 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %incdec.ptr41, i8*** %argv.addr, align 8
  %27 = load i8*, i8** %incdec.ptr41, align 8
  %tobool42 = icmp ne i8* %27, null
  br i1 %tobool42, label %if.end45, label %if.then43

if.then43:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @Usage()
  call void @exit(i32 1) #7
  unreachable

if.end45:                                         ; preds = %land.lhs.true, %sw.bb35
  %29 = load i8**, i8*** %argv.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %call46 = call i32 @atoi(i8* %30) #6
  store i32 %call46, i32* @maxbits, align 4
  br label %nextarg

sw.bb47:                                          ; preds = %while.body
  store i32 1, i32* @zcat_flg, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body
  store i32 1, i32* @quiet, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8**, i8*** %argv.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %conv49 = sext i8 %34 to i32
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %conv49)
  call void @Usage()
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb47, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end53

if.else51:                                        ; preds = %for.body
  %35 = load i8**, i8*** %argv.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %fileptr, align 8
  %incdec.ptr52 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %incdec.ptr52, i8*** %fileptr, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %fileptr, align 8
  store i8* null, i8** %38, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %while.end
  br label %nextarg

nextarg:                                          ; preds = %if.end53, %if.end45
  br label %for.inc

for.inc:                                          ; preds = %nextarg
  %39 = load i32, i32* %argc.addr, align 4
  %dec54 = add nsw i32 %39, -1
  store i32 %dec54, i32* %argc.addr, align 4
  %40 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr55 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %incdec.ptr55, i8*** %argv.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* @maxbits, align 4
  %cmp56 = icmp slt i32 %41, 9
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end
  store i32 9, i32* @maxbits, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.end
  %42 = load i32, i32* @maxbits, align 4
  %cmp60 = icmp sgt i32 %42, 16
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end59
  store i32 16, i32* @maxbits, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59
  %43 = load i32, i32* @maxbits, align 4
  %shl = shl i32 1, %43
  %conv64 = sext i32 %shl to i64
  store i64 %conv64, i64* @maxmaxcode, align 8
  %44 = load i8**, i8*** %filelist, align 8
  %45 = load i8*, i8** %44, align 8
  %cmp65 = icmp ne i8* %45, null
  br i1 %cmp65, label %if.then67, label %if.else251

if.then67:                                        ; preds = %if.end63
  %46 = load i8**, i8*** %filelist, align 8
  store i8** %46, i8*** %fileptr, align 8
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc248, %if.then67
  %47 = load i8**, i8*** %fileptr, align 8
  %48 = load i8*, i8** %47, align 8
  %tobool69 = icmp ne i8* %48, null
  br i1 %tobool69, label %for.body70, label %for.end250

for.body70:                                       ; preds = %for.cond68
  store i32 0, i32* @exit_stat, align 4
  %49 = load i32, i32* @do_decomp, align 4
  %cmp71 = icmp ne i32 %49, 0
  br i1 %cmp71, label %if.then73, label %if.else120

if.then73:                                        ; preds = %for.body70
  %50 = load i8**, i8*** %fileptr, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %fileptr, align 8
  %53 = load i8*, i8** %52, align 8
  %call74 = call i64 @strlen(i8* %53) #6
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %call74
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr, i64 -2
  %call76 = call i32 @strcmp(i8* %add.ptr75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end84

if.then79:                                        ; preds = %if.then73
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %tempname, i64 0, i64 0
  %54 = load i8**, i8*** %fileptr, align 8
  %55 = load i8*, i8** %54, align 8
  %call80 = call i8* @strcpy(i8* %arraydecay, i8* %55) #5
  %arraydecay81 = getelementptr inbounds [100 x i8], [100 x i8]* %tempname, i64 0, i64 0
  %call82 = call i8* @strcat(i8* %arraydecay81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  %arraydecay83 = getelementptr inbounds [100 x i8], [100 x i8]* %tempname, i64 0, i64 0
  %56 = load i8**, i8*** %fileptr, align 8
  store i8* %arraydecay83, i8** %56, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then73
  %57 = load i8**, i8*** %fileptr, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call85 = call %struct._IO_FILE* @freopen(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %59)
  %cmp86 = icmp eq %struct._IO_FILE* %call85, null
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end84
  %60 = load i8**, i8*** %fileptr, align 8
  %61 = load i8*, i8** %60, align 8
  call void @perror(i8* %61)
  br label %for.inc248

if.end89:                                         ; preds = %if.end84
  %62 = load i32, i32* @nomagic, align 4
  %cmp90 = icmp eq i32 %62, 0
  br i1 %cmp90, label %if.then92, label %if.end116

if.then92:                                        ; preds = %if.end89
  %call93 = call i32 @getchar()
  %63 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv94 = zext i8 %63 to i32
  %and = and i32 %conv94, 255
  %cmp95 = icmp ne i32 %call93, %and
  br i1 %cmp95, label %if.then103, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.then92
  %call98 = call i32 @getchar()
  %64 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv99 = zext i8 %64 to i32
  %and100 = and i32 %conv99, 255
  %cmp101 = icmp ne i32 %call98, %and100
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %lor.lhs.false97, %if.then92
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i8**, i8*** %fileptr, align 8
  %67 = load i8*, i8** %66, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  br label %for.inc248

if.end105:                                        ; preds = %lor.lhs.false97
  %call106 = call i32 @getchar()
  store i32 %call106, i32* @maxbits, align 4
  %68 = load i32, i32* @maxbits, align 4
  %and107 = and i32 %68, 128
  store i32 %and107, i32* @block_compress, align 4
  %69 = load i32, i32* @maxbits, align 4
  %and108 = and i32 %69, 31
  store i32 %and108, i32* @maxbits, align 4
  %70 = load i32, i32* @maxbits, align 4
  %shl109 = shl i32 1, %70
  %conv110 = sext i32 %shl109 to i64
  store i64 %conv110, i64* @maxmaxcode, align 8
  %71 = load i32, i32* @maxbits, align 4
  %cmp111 = icmp sgt i32 %71, 16
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end105
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8**, i8*** %fileptr, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @maxbits, align 4
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %74, i32 %75, i32 16)
  br label %for.inc248

if.end115:                                        ; preds = %if.end105
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.end89
  %76 = load i8**, i8*** %fileptr, align 8
  %77 = load i8*, i8** %76, align 8
  %call117 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i8* %77) #5
  %78 = load i8**, i8*** %fileptr, align 8
  %79 = load i8*, i8** %78, align 8
  %call118 = call i64 @strlen(i8* %79) #6
  %sub = sub i64 %call118, 2
  %arrayidx119 = getelementptr inbounds [100 x i8], [100 x i8]* @ofname, i64 0, i64 %sub
  store i8 0, i8* %arrayidx119, align 1
  br label %if.end175

if.else120:                                       ; preds = %for.body70
  %80 = load i8**, i8*** %fileptr, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %fileptr, align 8
  %83 = load i8*, i8** %82, align 8
  %call121 = call i64 @strlen(i8* %83) #6
  %add.ptr122 = getelementptr inbounds i8, i8* %81, i64 %call121
  %add.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 -2
  %call124 = call i32 @strcmp(i8* %add.ptr123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.else120
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = load i8**, i8*** %fileptr, align 8
  %86 = load i8*, i8** %85, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  br label %for.inc248

if.end129:                                        ; preds = %if.else120
  %87 = load i8**, i8*** %fileptr, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call130 = call %struct._IO_FILE* @freopen(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %89)
  %cmp131 = icmp eq %struct._IO_FILE* %call130, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  %90 = load i8**, i8*** %fileptr, align 8
  %91 = load i8*, i8** %90, align 8
  call void @perror(i8* %91)
  br label %for.inc248

if.end134:                                        ; preds = %if.end129
  %92 = load i8**, i8*** %fileptr, align 8
  %93 = load i8*, i8** %92, align 8
  %call135 = call i32 @stat(i8* %93, %struct.stat* %statbuf) #5
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 8
  %94 = load i64, i64* %st_size, align 8
  store i64 %94, i64* @fsize, align 8
  store i64 69001, i64* @hsize, align 8
  %95 = load i64, i64* @fsize, align 8
  %cmp136 = icmp slt i64 %95, 4096
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %if.end134
  store i64 5003, i64* @hsize, align 8
  br label %if.end159

if.else139:                                       ; preds = %if.end134
  %96 = load i64, i64* @fsize, align 8
  %cmp140 = icmp slt i64 %96, 8192
  br i1 %cmp140, label %if.then142, label %if.else143

if.then142:                                       ; preds = %if.else139
  store i64 9001, i64* @hsize, align 8
  br label %if.end158

if.else143:                                       ; preds = %if.else139
  %97 = load i64, i64* @fsize, align 8
  %cmp144 = icmp slt i64 %97, 16384
  br i1 %cmp144, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.else143
  store i64 18013, i64* @hsize, align 8
  br label %if.end157

if.else147:                                       ; preds = %if.else143
  %98 = load i64, i64* @fsize, align 8
  %cmp148 = icmp slt i64 %98, 32768
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.else147
  store i64 35023, i64* @hsize, align 8
  br label %if.end156

if.else151:                                       ; preds = %if.else147
  %99 = load i64, i64* @fsize, align 8
  %cmp152 = icmp slt i64 %99, 47000
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.else151
  store i64 50021, i64* @hsize, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.else151
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then150
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then146
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then142
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then138
  %100 = load i8**, i8*** %fileptr, align 8
  %101 = load i8*, i8** %100, align 8
  %call160 = call i8* @strcpy(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i8* %101) #5
  %call161 = call i8* @rindex(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i32 47) #6
  store i8* %call161, i8** %cp, align 8
  %cmp162 = icmp ne i8* %call161, null
  br i1 %cmp162, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.end159
  %102 = load i8*, i8** %cp, align 8
  %incdec.ptr165 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr165, i8** %cp, align 8
  br label %if.end167

if.else166:                                       ; preds = %if.end159
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i8** %cp, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.else166, %if.then164
  %103 = load i8*, i8** %cp, align 8
  %call168 = call i64 @strlen(i8* %103) #6
  %cmp169 = icmp ugt i64 %call168, 12
  br i1 %cmp169, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.end167
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = load i8*, i8** %cp, align 8
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %105)
  br label %for.inc248

if.end173:                                        ; preds = %if.end167
  %call174 = call i8* @strcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  br label %if.end175

if.end175:                                        ; preds = %if.end173, %if.end116
  %106 = load i32, i32* %overwrite, align 4
  %cmp176 = icmp eq i32 %106, 0
  br i1 %cmp176, label %land.lhs.true178, label %if.end218

land.lhs.true178:                                 ; preds = %if.end175
  %107 = load i32, i32* @zcat_flg, align 4
  %cmp179 = icmp eq i32 %107, 0
  br i1 %cmp179, label %if.then181, label %if.end218

if.then181:                                       ; preds = %land.lhs.true178
  %call182 = call i32 @stat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), %struct.stat* %statbuf) #5
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then185, label %if.end217

if.then185:                                       ; preds = %if.then181
  %arrayidx186 = getelementptr inbounds [2 x i8], [2 x i8]* %response, i64 0, i64 0
  store i8 110, i8* %arrayidx186, align 1
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0))
  %call188 = call i32 @foreground()
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.then190, label %if.end209

if.then190:                                       ; preds = %if.then185
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0))
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call192 = call i32 @fflush(%struct._IO_FILE* %110)
  %arraydecay193 = getelementptr inbounds [2 x i8], [2 x i8]* %response, i64 0, i64 0
  %call194 = call i64 @read(i32 2, i8* %arraydecay193, i64 2)
  br label %while.cond195

while.cond195:                                    ; preds = %if.end207, %if.then190
  %arrayidx196 = getelementptr inbounds [2 x i8], [2 x i8]* %response, i64 0, i64 1
  %111 = load i8, i8* %arrayidx196, align 1
  %conv197 = sext i8 %111 to i32
  %cmp198 = icmp ne i32 %conv197, 10
  br i1 %cmp198, label %while.body200, label %while.end208

while.body200:                                    ; preds = %while.cond195
  %arraydecay201 = getelementptr inbounds [2 x i8], [2 x i8]* %response, i64 0, i64 0
  %add.ptr202 = getelementptr inbounds i8, i8* %arraydecay201, i64 1
  %call203 = call i64 @read(i32 2, i8* %add.ptr202, i64 1)
  %cmp204 = icmp slt i64 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %while.body200
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %while.end208

if.end207:                                        ; preds = %while.body200
  br label %while.cond195

while.end208:                                     ; preds = %if.then206, %while.cond195
  br label %if.end209

if.end209:                                        ; preds = %while.end208, %if.then185
  %arrayidx210 = getelementptr inbounds [2 x i8], [2 x i8]* %response, i64 0, i64 0
  %112 = load i8, i8* %arrayidx210, align 1
  %conv211 = sext i8 %112 to i32
  %cmp212 = icmp ne i32 %conv211, 121
  br i1 %cmp212, label %if.then214, label %if.end216

if.then214:                                       ; preds = %if.end209
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %for.inc248

if.end216:                                        ; preds = %if.end209
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then181
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %land.lhs.true178, %if.end175
  %114 = load i32, i32* @zcat_flg, align 4
  %cmp219 = icmp eq i32 %114, 0
  br i1 %cmp219, label %if.then221, label %if.end231

if.then221:                                       ; preds = %if.end218
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call222 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %struct._IO_FILE* %115)
  %cmp223 = icmp eq %struct._IO_FILE* %call222, null
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.then221
  call void @perror(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0))
  br label %for.inc248

if.end226:                                        ; preds = %if.then221
  %116 = load i32, i32* @quiet, align 4
  %tobool227 = icmp ne i32 %116, 0
  br i1 %tobool227, label %if.end230, label %if.then228

if.then228:                                       ; preds = %if.end226
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %118 = load i8**, i8*** %fileptr, align 8
  %119 = load i8*, i8** %118, align 8
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %119)
  br label %if.end230

if.end230:                                        ; preds = %if.then228, %if.end226
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end218
  %120 = load i32, i32* @do_decomp, align 4
  %cmp232 = icmp eq i32 %120, 0
  br i1 %cmp232, label %if.then234, label %if.else235

if.then234:                                       ; preds = %if.end231
  call void @compress()
  br label %if.end236

if.else235:                                       ; preds = %if.end231
  call void @decompress()
  br label %if.end236

if.end236:                                        ; preds = %if.else235, %if.then234
  %121 = load i32, i32* @zcat_flg, align 4
  %cmp237 = icmp eq i32 %121, 0
  br i1 %cmp237, label %if.then239, label %if.end247

if.then239:                                       ; preds = %if.end236
  %122 = load i8**, i8*** %fileptr, align 8
  %123 = load i8*, i8** %122, align 8
  call void @copystat(i8* %123, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0))
  %124 = load i32, i32* @exit_stat, align 4
  %cmp240 = icmp eq i32 %124, 1
  br i1 %cmp240, label %if.then244, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %if.then239
  %125 = load i32, i32* @quiet, align 4
  %tobool243 = icmp ne i32 %125, 0
  br i1 %tobool243, label %if.end246, label %if.then244

if.then244:                                       ; preds = %lor.lhs.false242, %if.then239
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call245 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %126)
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %lor.lhs.false242
  br label %if.end247

if.end247:                                        ; preds = %if.end246, %if.end236
  br label %for.inc248

for.inc248:                                       ; preds = %if.end247, %if.then225, %if.then214, %if.then171, %if.then133, %if.then127, %if.then113, %if.then103, %if.then88
  %127 = load i8**, i8*** %fileptr, align 8
  %incdec.ptr249 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %incdec.ptr249, i8*** %fileptr, align 8
  br label %for.cond68

for.end250:                                       ; preds = %for.cond68
  br label %if.end289

if.else251:                                       ; preds = %if.end63
  %128 = load i32, i32* @do_decomp, align 4
  %cmp252 = icmp eq i32 %128, 0
  br i1 %cmp252, label %if.then254, label %if.else259

if.then254:                                       ; preds = %if.else251
  call void @compress()
  %129 = load i32, i32* @quiet, align 4
  %tobool255 = icmp ne i32 %129, 0
  br i1 %tobool255, label %if.end258, label %if.then256

if.then256:                                       ; preds = %if.then254
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call257 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %130)
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.then254
  br label %if.end288

if.else259:                                       ; preds = %if.else251
  %131 = load i32, i32* @nomagic, align 4
  %cmp260 = icmp eq i32 %131, 0
  br i1 %cmp260, label %if.then262, label %if.end287

if.then262:                                       ; preds = %if.else259
  %call263 = call i32 @getchar()
  %132 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv264 = zext i8 %132 to i32
  %and265 = and i32 %conv264, 255
  %cmp266 = icmp ne i32 %call263, %and265
  br i1 %cmp266, label %if.then274, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %if.then262
  %call269 = call i32 @getchar()
  %133 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv270 = zext i8 %133 to i32
  %and271 = and i32 %conv270, 255
  %cmp272 = icmp ne i32 %call269, %and271
  br i1 %cmp272, label %if.then274, label %if.end276

if.then274:                                       ; preds = %lor.lhs.false268, %if.then262
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

if.end276:                                        ; preds = %lor.lhs.false268
  %call277 = call i32 @getchar()
  store i32 %call277, i32* @maxbits, align 4
  %135 = load i32, i32* @maxbits, align 4
  %and278 = and i32 %135, 128
  store i32 %and278, i32* @block_compress, align 4
  %136 = load i32, i32* @maxbits, align 4
  %and279 = and i32 %136, 31
  store i32 %and279, i32* @maxbits, align 4
  %137 = load i32, i32* @maxbits, align 4
  %shl280 = shl i32 1, %137
  %conv281 = sext i32 %shl280 to i64
  store i64 %conv281, i64* @maxmaxcode, align 8
  store i64 100000, i64* @fsize, align 8
  %138 = load i32, i32* @maxbits, align 4
  %cmp282 = icmp sgt i32 %138, 16
  br i1 %cmp282, label %if.then284, label %if.end286

if.then284:                                       ; preds = %if.end276
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = load i32, i32* @maxbits, align 4
  %call285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 %140, i32 16)
  call void @exit(i32 1) #7
  unreachable

if.end286:                                        ; preds = %if.end276
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.else259
  call void @decompress()
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %if.end258
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %for.end250
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @onintr(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %call = call i32 @unlink(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0)) #5
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oops(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* @do_decomp, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @unlink(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0)) #5
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @rindex(i8*, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare dso_local void @perror(i8*) #1

declare dso_local i32 @getchar() #1

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystat(i8* %ifname, i8* %ofname) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_copystat.15, label %ctrl0

func_copystat.15:                                 ; preds = %rand_bb
  call void @copystat.15(i8* %ifname, i8* %ofname)
  ret void

func_copystat.18:                                 ; preds = %ctrl0
  call void @copystat.18(i8* %ifname, i8* %ofname)
  ret void

func_copystat.23:                                 ; preds = %ctrl1
  call void @copystat.23(i8* %ifname, i8* %ofname)
  ret void

func_copystat.26:                                 ; preds = %ctrl1
  call void @copystat.26(i8* %ifname, i8* %ofname)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_copystat.18, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_copystat.23, label %func_copystat.26
}

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress() #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_compress.7, label %ctrl0

func_compress.7:                                  ; preds = %rand_bb
  call void @compress.7()
  ret void

func_compress.14:                                 ; preds = %ctrl0
  call void @compress.14()
  ret void

func_compress.20:                                 ; preds = %ctrl1
  call void @compress.20()
  ret void

func_compress.29:                                 ; preds = %ctrl1
  call void @compress.29()
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_compress.14, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_compress.20, label %func_compress.29
}

declare dso_local i32 @putchar(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_hash(i64 %hsize) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_cl_hash.4, label %ctrl0

func_cl_hash.4:                                   ; preds = %rand_bb
  call void @cl_hash.4(i64 %hsize)
  ret void

func_cl_hash.21:                                  ; preds = %ctrl0
  call void @cl_hash.21(i64 %hsize)
  ret void

func_cl_hash.27:                                  ; preds = %ctrl1
  call void @cl_hash.27(i64 %hsize)
  ret void

func_cl_hash.30:                                  ; preds = %ctrl1
  call void @cl_hash.30(i64 %hsize)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_cl_hash.21, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_cl_hash.27, label %func_cl_hash.30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scott_hack(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_scott_hack.9, label %ctrl0

func_scott_hack.9:                                ; preds = %rand_bb
  %2 = call i32 @scott_hack.9(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent)
  ret i32 %2

func_scott_hack.16:                               ; preds = %ctrl0
  %3 = call i32 @scott_hack.16(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent)
  ret i32 %3

func_scott_hack.31:                               ; preds = %ctrl1
  %4 = call i32 @scott_hack.31(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent)
  ret i32 %4

func_scott_hack.32:                               ; preds = %ctrl1
  %5 = call i32 @scott_hack.32(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent)
  ret i32 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_scott_hack.16, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_scott_hack.31, label %func_scott_hack.32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output(i64 %code) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_output.8, label %ctrl0

func_output.8:                                    ; preds = %rand_bb
  call void @output.8(i64 %code)
  ret void

func_output.10:                                   ; preds = %ctrl0
  call void @output.10(i64 %code)
  ret void

func_output.24:                                   ; preds = %ctrl1
  call void @output.24(i64 %code)
  ret void

func_output.25:                                   ; preds = %ctrl1
  call void @output.25(i64 %code)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_output.10, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_output.24, label %func_output.25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prratio(%struct._IO_FILE* %stream, i64 %num, i64 %den) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_prratio.13, label %ctrl0

func_prratio.13:                                  ; preds = %rand_bb
  call void @prratio.13(%struct._IO_FILE* %stream, i64 %num, i64 %den)
  ret void

func_prratio.17:                                  ; preds = %ctrl0
  call void @prratio.17(%struct._IO_FILE* %stream, i64 %num, i64 %den)
  ret void

func_prratio.22:                                  ; preds = %ctrl1
  call void @prratio.22(%struct._IO_FILE* %stream, i64 %num, i64 %den)
  ret void

func_prratio.28:                                  ; preds = %ctrl1
  call void @prratio.28(%struct._IO_FILE* %stream, i64 %num, i64 %den)
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_prratio.17, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_prratio.22, label %func_prratio.28
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress() #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_decompress.1, label %ctrl0

func_decompress.1:                                ; preds = %rand_bb
  call void @decompress.1()
  ret void

func_decompress.5:                                ; preds = %ctrl0
  call void @decompress.5()
  ret void

func_decompress.6:                                ; preds = %ctrl1
  call void @decompress.6()
  ret void

func_decompress.19:                               ; preds = %ctrl1
  call void @decompress.19()
  ret void

ctrl0:                                            ; preds = %rand_bb
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %func_decompress.5, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %func_decompress.6, label %func_decompress.19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getcode() #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_getcode.2, label %ctrl0

func_getcode.2:                                   ; preds = %rand_bb
  %2 = call i64 @getcode.2()
  ret i64 %2

func_getcode.3:                                   ; preds = %ctrl0
  %3 = call i64 @getcode.3()
  ret i64 %3

func_getcode.11:                                  ; preds = %ctrl1
  %4 = call i64 @getcode.11()
  ret i64 %4

func_getcode.12:                                  ; preds = %ctrl1
  %5 = call i64 @getcode.12()
  ret i64 %5

ctrl0:                                            ; preds = %rand_bb
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %func_getcode.3, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %7 = icmp eq i32 %0, 2
  br i1 %7, label %func_getcode.11, label %func_getcode.12
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeerr() #0 {
entry:
  call void @perror(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0))
  %call = call i32 @unlink(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @ofname, i64 0, i64 0)) #5
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @chmod(i8*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @chown(i8*, i32, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @utime(i8*, %struct.utimbuf*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foreground() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load void (i32)*, void (i32)** @bgnd_flag, align 8
  %tobool = icmp ne void (i32)* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %call = call i32 @isatty(i32 2) #5
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_block() #0 {
entry:
  %rat = alloca i64, align 8
  %0 = load i64, i64* @in_count, align 8
  %add = add nsw i64 %0, 10000
  store i64 %add, i64* @checkpoint, align 8
  %1 = load i64, i64* @in_count, align 8
  %cmp = icmp sgt i64 %1, 8388607
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @bytes_out, align 8
  %shr = ashr i64 %2, 8
  store i64 %shr, i64* %rat, align 8
  %3 = load i64, i64* %rat, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i64 2147483647, i64* %rat, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* @in_count, align 8
  %5 = load i64, i64* %rat, align 8
  %div = sdiv i64 %4, %5
  store i64 %div, i64* %rat, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.else3:                                         ; preds = %entry
  %6 = load i64, i64* @in_count, align 8
  %shl = shl i64 %6, 8
  %7 = load i64, i64* @bytes_out, align 8
  %div4 = sdiv i64 %shl, %7
  store i64 %div4, i64* %rat, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.end
  %8 = load i64, i64* %rat, align 8
  %9 = load i64, i64* @ratio, align 8
  %cmp6 = icmp sgt i64 %8, %9
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.end5
  %10 = load i64, i64* %rat, align 8
  store i64 %10, i64* @ratio, align 8
  br label %if.end9

if.else8:                                         ; preds = %if.end5
  store i64 0, i64* @ratio, align 8
  %11 = load i64, i64* @hsize, align 8
  call void @cl_hash(i64 %11)
  store i64 257, i64* @free_ent, align 8
  store i32 1, i32* @clear_flg, align 4
  call void @output(i64 256)
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @version() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @rcs_ident, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i32 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress.1() #0 {
entry:
  %canary = alloca i32
  store i32 2049915151, i32* %canary
  %finchar = alloca i32, align 4
  %incode = alloca i64, align 8
  %code = alloca i64, align 8
  %oldcode = alloca i64, align 8
  %stackp = alloca i8*, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i64 255, i64* %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %code, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %code, align 8
  %arrayidx = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %1
  store i16 0, i16* %arrayidx, align 2
  %2 = load i64, i64* %code, align 8
  %conv = trunc i64 %2 to i8
  %3 = load i64, i64* %code, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %3
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %code, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* @block_compress, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 257, i32 256
  %conv2 = sext i32 %cond to i64
  store i64 %conv2, i64* @free_ent, align 8
  %call = call i64 @getcode()
  store i64 %call, i64* %oldcode, align 8
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %finchar, align 4
  %7 = load i64, i64* %oldcode, align 8
  %cmp4 = icmp eq i64 %7, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %if.end69

if.end:                                           ; preds = %for.end
  %8 = load i32, i32* %finchar, align 4
  %conv6 = trunc i32 %8 to i8
  %conv7 = sext i8 %conv6 to i32
  %call8 = call i32 @putchar(i32 %conv7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @writeerr()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  store i8* getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536), i8** %stackp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %if.end12
  %call13 = call i64 @getcode()
  store i64 %call13, i64* %code, align 8
  %cmp14 = icmp sgt i64 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end64

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %code, align 8
  %cmp16 = icmp eq i64 %10, 256
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @block_compress, align 4
  %tobool18 = icmp ne i32 %11, 0
  br i1 %tobool18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  store i64 255, i64* %code, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %if.then19
  %12 = load i64, i64* %code, align 8
  %cmp21 = icmp sge i64 %12, 0
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond20
  %13 = load i64, i64* %code, align 8
  %arrayidx24 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %13
  store i16 0, i16* %arrayidx24, align 2
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %14 = load i64, i64* %code, align 8
  %dec26 = add nsw i64 %14, -1
  store i64 %dec26, i64* %code, align 8
  br label %for.cond20

for.end27:                                        ; preds = %for.cond20
  store i32 1, i32* @clear_flg, align 4
  store i64 256, i64* @free_ent, align 8
  %call28 = call i64 @getcode()
  store i64 %call28, i64* %code, align 8
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end27
  br label %while.end64

if.end32:                                         ; preds = %for.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true, %while.body
  %15 = load i64, i64* %code, align 8
  store i64 %15, i64* %incode, align 8
  %16 = load i64, i64* %code, align 8
  %17 = load i64, i64* @free_ent, align 8
  %cmp34 = icmp sge i64 %16, %17
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %18 = load i32, i32* %finchar, align 4
  %conv37 = trunc i32 %18 to i8
  %19 = load i8*, i8** %stackp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %stackp, align 8
  store i8 %conv37, i8* %19, align 1
  %20 = load i64, i64* %oldcode, align 8
  store i64 %20, i64* %code, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42, %if.end38
  %21 = load i64, i64* %code, align 8
  %cmp40 = icmp sge i64 %21, 256
  br i1 %cmp40, label %while.body42, label %while.end

while.body42:                                     ; preds = %while.cond39
  %22 = load i64, i64* %code, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %22
  %23 = load i8, i8* %arrayidx43, align 1
  %24 = load i8*, i8** %stackp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr44, i8** %stackp, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i64, i64* %code, align 8
  %arrayidx45 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %26 to i64
  store i64 %conv46, i64* %code, align 8
  br label %while.cond39

while.end:                                        ; preds = %while.cond39
  %27 = load i64, i64* %code, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %27
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %28 to i32
  store i32 %conv48, i32* %finchar, align 4
  %conv49 = trunc i32 %conv48 to i8
  %29 = load i8*, i8** %stackp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr50, i8** %stackp, align 8
  store i8 %conv49, i8* %29, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %30 = load i8*, i8** %stackp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr51, i8** %stackp, align 8
  %31 = load i8, i8* %incdec.ptr51, align 1
  %conv52 = zext i8 %31 to i32
  %call53 = call i32 @putchar(i32 %conv52)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i8*, i8** %stackp, align 8
  %cmp54 = icmp ugt i8* %32, getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536)
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64, i64* @free_ent, align 8
  store i64 %33, i64* %code, align 8
  %34 = load i64, i64* @maxmaxcode, align 8
  %cmp56 = icmp slt i64 %33, %34
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %do.end
  %35 = load i64, i64* %oldcode, align 8
  %conv59 = trunc i64 %35 to i16
  %36 = load i64, i64* %code, align 8
  %arrayidx60 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %36
  store i16 %conv59, i16* %arrayidx60, align 2
  %37 = load i32, i32* %finchar, align 4
  %conv61 = trunc i32 %37 to i8
  %38 = load i64, i64* %code, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %38
  store i8 %conv61, i8* %arrayidx62, align 1
  %39 = load i64, i64* %code, align 8
  %add = add nsw i64 %39, 1
  store i64 %add, i64* @free_ent, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %do.end
  %40 = load i64, i64* %incode, align 8
  store i64 %40, i64* %oldcode, align 8
  br label %while.cond

while.end64:                                      ; preds = %if.then31, %while.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @ferror(%struct._IO_FILE* %42) #5
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end64
  call void @writeerr()
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end64, %if.then
  %43 = load i32, i32* %canary
  %44 = icmp eq i32 %43, 2049915151
  br i1 %44, label %45, label %func_exit

45:                                               ; preds = %if.end69, %func_exit
  ret void

func_exit:                                        ; preds = %if.end69
  call void @detect_breach()
  br label %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getcode.2() #0 {
entry:
  %canary = alloca i32
  store i32 1711048952, i32* %canary
  %bits = alloca i32, align 4
  %r_off = alloca i32, align 4
  %bp = alloca i8*, align 8
  %retval = alloca i64, align 8
  %code = alloca i64, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i8** %bp, align 8
  %0 = load i32, i32* @clear_flg, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @getcode.offset, align 4
  %2 = load i32, i32* @getcode.size, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* @free_ent, align 8
  %4 = load i64, i64* @maxcode, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i64, i64* @free_ent, align 8
  %6 = load i64, i64* @maxcode, align 8
  %cmp4 = icmp sgt i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %7 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @n_bits, align 4
  %8 = load i32, i32* @n_bits, align 4
  %9 = load i32, i32* @maxbits, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %10 = load i64, i64* @maxmaxcode, align 8
  store i64 %10, i64* @maxcode, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %11 = load i32, i32* @n_bits, align 4
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* @maxcode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* @clear_flg, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load i32, i32* @n_bits, align 4
  %conv13 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @fread(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i64 1, i64 %conv13, %struct._IO_FILE* %14)
  %conv14 = trunc i64 %call to i32
  store i32 %conv14, i32* @getcode.size, align 4
  %15 = load i32, i32* @getcode.size, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i64 -1, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, i32* @getcode.offset, align 4
  %16 = load i32, i32* @getcode.size, align 4
  %shl19 = shl i32 %16, 3
  %17 = load i32, i32* @n_bits, align 4
  %sub20 = sub nsw i32 %17, 1
  %sub21 = sub nsw i32 %shl19, %sub20
  store i32 %sub21, i32* @getcode.size, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %lor.lhs.false2
  %18 = load i32, i32* @getcode.offset, align 4
  store i32 %18, i32* %r_off, align 4
  %19 = load i32, i32* @n_bits, align 4
  store i32 %19, i32* %bits, align 4
  %20 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %20, 3
  %21 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %22 = load i32, i32* %r_off, align 4
  %and = and i32 %22, 7
  store i32 %and, i32* %r_off, align 4
  %23 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %25 = load i32, i32* %r_off, align 4
  %shr24 = ashr i32 %conv23, %25
  %conv25 = sext i32 %shr24 to i64
  store i64 %conv25, i64* %code, align 8
  %26 = load i32, i32* %r_off, align 4
  %sub26 = sub nsw i32 8, %26
  %27 = load i32, i32* %bits, align 4
  %sub27 = sub nsw i32 %27, %sub26
  store i32 %sub27, i32* %bits, align 4
  %28 = load i32, i32* %r_off, align 4
  %sub28 = sub nsw i32 8, %28
  store i32 %sub28, i32* %r_off, align 4
  %29 = load i32, i32* %bits, align 4
  %cmp29 = icmp sge i32 %29, 8
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end22
  %30 = load i8*, i8** %bp, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %bp, align 8
  %31 = load i8, i8* %30, align 1
  %conv33 = zext i8 %31 to i32
  %32 = load i32, i32* %r_off, align 4
  %shl34 = shl i32 %conv33, %32
  %conv35 = sext i32 %shl34 to i64
  %33 = load i64, i64* %code, align 8
  %or = or i64 %33, %conv35
  store i64 %or, i64* %code, align 8
  %34 = load i32, i32* %r_off, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, i32* %r_off, align 4
  %35 = load i32, i32* %bits, align 4
  %sub36 = sub nsw i32 %35, 8
  store i32 %sub36, i32* %bits, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end22
  %36 = load i8*, i8** %bp, align 8
  %37 = load i8, i8* %36, align 1
  %conv38 = zext i8 %37 to i32
  %38 = load i32, i32* %bits, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %39 to i32
  %and40 = and i32 %conv38, %conv39
  %40 = load i32, i32* %r_off, align 4
  %shl41 = shl i32 %and40, %40
  %conv42 = sext i32 %shl41 to i64
  %41 = load i64, i64* %code, align 8
  %or43 = or i64 %41, %conv42
  store i64 %or43, i64* %code, align 8
  %42 = load i32, i32* @n_bits, align 4
  %43 = load i32, i32* @getcode.offset, align 4
  %add44 = add nsw i32 %43, %42
  store i32 %add44, i32* @getcode.offset, align 4
  %44 = load i64, i64* %code, align 8
  store i64 %44, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then17
  %45 = load i64, i64* %retval, align 8
  %46 = load i32, i32* %canary
  %47 = icmp eq i32 %46, 1711048952
  br i1 %47, label %48, label %func_exit

48:                                               ; preds = %return, %func_exit
  ret i64 %45

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getcode.3() #0 {
entry:
  %retval = alloca i64, align 8
  %canary = alloca i32
  store i32 1933306800, i32* %canary
  %code = alloca i64, align 8
  %r_off = alloca i32, align 4
  %bits = alloca i32, align 4
  %bp = alloca i8*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i8** %bp, align 8
  %0 = load i32, i32* @clear_flg, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @getcode.offset, align 4
  %2 = load i32, i32* @getcode.size, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* @free_ent, align 8
  %4 = load i64, i64* @maxcode, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i64, i64* @free_ent, align 8
  %6 = load i64, i64* @maxcode, align 8
  %cmp4 = icmp sgt i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %7 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @n_bits, align 4
  %8 = load i32, i32* @n_bits, align 4
  %9 = load i32, i32* @maxbits, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %10 = load i64, i64* @maxmaxcode, align 8
  store i64 %10, i64* @maxcode, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %11 = load i32, i32* @n_bits, align 4
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* @maxcode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* @clear_flg, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load i32, i32* @n_bits, align 4
  %conv13 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @fread(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i64 1, i64 %conv13, %struct._IO_FILE* %14)
  %conv14 = trunc i64 %call to i32
  store i32 %conv14, i32* @getcode.size, align 4
  %15 = load i32, i32* @getcode.size, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i64 -1, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, i32* @getcode.offset, align 4
  %16 = load i32, i32* @getcode.size, align 4
  %shl19 = shl i32 %16, 3
  %17 = load i32, i32* @n_bits, align 4
  %sub20 = sub nsw i32 %17, 1
  %sub21 = sub nsw i32 %shl19, %sub20
  store i32 %sub21, i32* @getcode.size, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %lor.lhs.false2
  %18 = load i32, i32* @getcode.offset, align 4
  store i32 %18, i32* %r_off, align 4
  %19 = load i32, i32* @n_bits, align 4
  store i32 %19, i32* %bits, align 4
  %20 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %20, 3
  %21 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %22 = load i32, i32* %r_off, align 4
  %and = and i32 %22, 7
  store i32 %and, i32* %r_off, align 4
  %23 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %25 = load i32, i32* %r_off, align 4
  %shr24 = ashr i32 %conv23, %25
  %conv25 = sext i32 %shr24 to i64
  store i64 %conv25, i64* %code, align 8
  %26 = load i32, i32* %r_off, align 4
  %sub26 = sub nsw i32 8, %26
  %27 = load i32, i32* %bits, align 4
  %sub27 = sub nsw i32 %27, %sub26
  store i32 %sub27, i32* %bits, align 4
  %28 = load i32, i32* %r_off, align 4
  %sub28 = sub nsw i32 8, %28
  store i32 %sub28, i32* %r_off, align 4
  %29 = load i32, i32* %bits, align 4
  %cmp29 = icmp sge i32 %29, 8
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end22
  %30 = load i8*, i8** %bp, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %bp, align 8
  %31 = load i8, i8* %30, align 1
  %conv33 = zext i8 %31 to i32
  %32 = load i32, i32* %r_off, align 4
  %shl34 = shl i32 %conv33, %32
  %conv35 = sext i32 %shl34 to i64
  %33 = load i64, i64* %code, align 8
  %or = or i64 %33, %conv35
  store i64 %or, i64* %code, align 8
  %34 = load i32, i32* %r_off, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, i32* %r_off, align 4
  %35 = load i32, i32* %bits, align 4
  %sub36 = sub nsw i32 %35, 8
  store i32 %sub36, i32* %bits, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end22
  %36 = load i8*, i8** %bp, align 8
  %37 = load i8, i8* %36, align 1
  %conv38 = zext i8 %37 to i32
  %38 = load i32, i32* %bits, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %39 to i32
  %and40 = and i32 %conv38, %conv39
  %40 = load i32, i32* %r_off, align 4
  %shl41 = shl i32 %and40, %40
  %conv42 = sext i32 %shl41 to i64
  %41 = load i64, i64* %code, align 8
  %or43 = or i64 %41, %conv42
  store i64 %or43, i64* %code, align 8
  %42 = load i32, i32* @n_bits, align 4
  %43 = load i32, i32* @getcode.offset, align 4
  %add44 = add nsw i32 %43, %42
  store i32 %add44, i32* @getcode.offset, align 4
  %44 = load i64, i64* %code, align 8
  store i64 %44, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then17
  %45 = load i64, i64* %retval, align 8
  %46 = load i32, i32* %canary
  %47 = icmp eq i32 %46, 1933306800
  br i1 %47, label %48, label %func_exit

48:                                               ; preds = %return, %func_exit
  ret i64 %45

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_hash.4(i64 %hsize) #0 {
entry:
  %canary = alloca i32
  store i32 1588910824, i32* %canary
  %hsize.addr = alloca i64, align 8
  %m1 = alloca i64, align 8
  %i = alloca i64, align 8
  %htab_p = alloca i64*, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %0 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([69001 x i64], [69001 x i64]* @htab, i64 0, i64 0), i64 %0
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %1 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %1, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i64, i64* %m1, align 8
  %3 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %3, i64 -16
  store i64 %2, i64* %add.ptr1, align 8
  %4 = load i64, i64* %m1, align 8
  %5 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -15
  store i64 %4, i64* %add.ptr2, align 8
  %6 = load i64, i64* %m1, align 8
  %7 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %7, i64 -14
  store i64 %6, i64* %add.ptr3, align 8
  %8 = load i64, i64* %m1, align 8
  %9 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %9, i64 -13
  store i64 %8, i64* %add.ptr4, align 8
  %10 = load i64, i64* %m1, align 8
  %11 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 -12
  store i64 %10, i64* %add.ptr5, align 8
  %12 = load i64, i64* %m1, align 8
  %13 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %13, i64 -11
  store i64 %12, i64* %add.ptr6, align 8
  %14 = load i64, i64* %m1, align 8
  %15 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %15, i64 -10
  store i64 %14, i64* %add.ptr7, align 8
  %16 = load i64, i64* %m1, align 8
  %17 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %17, i64 -9
  store i64 %16, i64* %add.ptr8, align 8
  %18 = load i64, i64* %m1, align 8
  %19 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %19, i64 -8
  store i64 %18, i64* %add.ptr9, align 8
  %20 = load i64, i64* %m1, align 8
  %21 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %21, i64 -7
  store i64 %20, i64* %add.ptr10, align 8
  %22 = load i64, i64* %m1, align 8
  %23 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %23, i64 -6
  store i64 %22, i64* %add.ptr11, align 8
  %24 = load i64, i64* %m1, align 8
  %25 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %25, i64 -5
  store i64 %24, i64* %add.ptr12, align 8
  %26 = load i64, i64* %m1, align 8
  %27 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %27, i64 -4
  store i64 %26, i64* %add.ptr13, align 8
  %28 = load i64, i64* %m1, align 8
  %29 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 -3
  store i64 %28, i64* %add.ptr14, align 8
  %30 = load i64, i64* %m1, align 8
  %31 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %31, i64 -2
  store i64 %30, i64* %add.ptr15, align 8
  %32 = load i64, i64* %m1, align 8
  %33 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64 %32, i64* %add.ptr16, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %34, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %35, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %i, align 8
  %add = add nsw i64 %36, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %37, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %m1, align 8
  %39 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %38, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %i, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 1588910824
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %for.end, %func_exit
  ret void

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress.5() #0 {
entry:
  %canary = alloca i32
  store i32 1284094604, i32* %canary
  %incode = alloca i64, align 8
  %oldcode = alloca i64, align 8
  %stackp = alloca i8*, align 8
  %code = alloca i64, align 8
  %finchar = alloca i32, align 4
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i64 255, i64* %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %code, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %code, align 8
  %arrayidx = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %1
  store i16 0, i16* %arrayidx, align 2
  %2 = load i64, i64* %code, align 8
  %conv = trunc i64 %2 to i8
  %3 = load i64, i64* %code, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %3
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %code, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* @block_compress, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 257, i32 256
  %conv2 = sext i32 %cond to i64
  store i64 %conv2, i64* @free_ent, align 8
  %call = call i64 @getcode()
  store i64 %call, i64* %oldcode, align 8
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %finchar, align 4
  %7 = load i64, i64* %oldcode, align 8
  %cmp4 = icmp eq i64 %7, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %if.end69

if.end:                                           ; preds = %for.end
  %8 = load i32, i32* %finchar, align 4
  %conv6 = trunc i32 %8 to i8
  %conv7 = sext i8 %conv6 to i32
  %call8 = call i32 @putchar(i32 %conv7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @writeerr()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  store i8* getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536), i8** %stackp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %if.end12
  %call13 = call i64 @getcode()
  store i64 %call13, i64* %code, align 8
  %cmp14 = icmp sgt i64 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end64

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %code, align 8
  %cmp16 = icmp eq i64 %10, 256
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @block_compress, align 4
  %tobool18 = icmp ne i32 %11, 0
  br i1 %tobool18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  store i64 255, i64* %code, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %if.then19
  %12 = load i64, i64* %code, align 8
  %cmp21 = icmp sge i64 %12, 0
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond20
  %13 = load i64, i64* %code, align 8
  %arrayidx24 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %13
  store i16 0, i16* %arrayidx24, align 2
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %14 = load i64, i64* %code, align 8
  %dec26 = add nsw i64 %14, -1
  store i64 %dec26, i64* %code, align 8
  br label %for.cond20

for.end27:                                        ; preds = %for.cond20
  store i32 1, i32* @clear_flg, align 4
  store i64 256, i64* @free_ent, align 8
  %call28 = call i64 @getcode()
  store i64 %call28, i64* %code, align 8
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end27
  br label %while.end64

if.end32:                                         ; preds = %for.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true, %while.body
  %15 = load i64, i64* %code, align 8
  store i64 %15, i64* %incode, align 8
  %16 = load i64, i64* %code, align 8
  %17 = load i64, i64* @free_ent, align 8
  %cmp34 = icmp sge i64 %16, %17
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %18 = load i32, i32* %finchar, align 4
  %conv37 = trunc i32 %18 to i8
  %19 = load i8*, i8** %stackp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %stackp, align 8
  store i8 %conv37, i8* %19, align 1
  %20 = load i64, i64* %oldcode, align 8
  store i64 %20, i64* %code, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42, %if.end38
  %21 = load i64, i64* %code, align 8
  %cmp40 = icmp sge i64 %21, 256
  br i1 %cmp40, label %while.body42, label %while.end

while.body42:                                     ; preds = %while.cond39
  %22 = load i64, i64* %code, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %22
  %23 = load i8, i8* %arrayidx43, align 1
  %24 = load i8*, i8** %stackp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr44, i8** %stackp, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i64, i64* %code, align 8
  %arrayidx45 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %26 to i64
  store i64 %conv46, i64* %code, align 8
  br label %while.cond39

while.end:                                        ; preds = %while.cond39
  %27 = load i64, i64* %code, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %27
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %28 to i32
  store i32 %conv48, i32* %finchar, align 4
  %conv49 = trunc i32 %conv48 to i8
  %29 = load i8*, i8** %stackp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr50, i8** %stackp, align 8
  store i8 %conv49, i8* %29, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %30 = load i8*, i8** %stackp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr51, i8** %stackp, align 8
  %31 = load i8, i8* %incdec.ptr51, align 1
  %conv52 = zext i8 %31 to i32
  %call53 = call i32 @putchar(i32 %conv52)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i8*, i8** %stackp, align 8
  %cmp54 = icmp ugt i8* %32, getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536)
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64, i64* @free_ent, align 8
  store i64 %33, i64* %code, align 8
  %34 = load i64, i64* @maxmaxcode, align 8
  %cmp56 = icmp slt i64 %33, %34
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %do.end
  %35 = load i64, i64* %oldcode, align 8
  %conv59 = trunc i64 %35 to i16
  %36 = load i64, i64* %code, align 8
  %arrayidx60 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %36
  store i16 %conv59, i16* %arrayidx60, align 2
  %37 = load i32, i32* %finchar, align 4
  %conv61 = trunc i32 %37 to i8
  %38 = load i64, i64* %code, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %38
  store i8 %conv61, i8* %arrayidx62, align 1
  %39 = load i64, i64* %code, align 8
  %add = add nsw i64 %39, 1
  store i64 %add, i64* @free_ent, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %do.end
  %40 = load i64, i64* %incode, align 8
  store i64 %40, i64* %oldcode, align 8
  br label %while.cond

while.end64:                                      ; preds = %if.then31, %while.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @ferror(%struct._IO_FILE* %42) #5
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end64
  call void @writeerr()
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end64, %if.then
  %43 = load i32, i32* %canary
  %44 = icmp eq i32 %43, 1284094604
  br i1 %44, label %45, label %func_exit

45:                                               ; preds = %if.end69, %func_exit
  ret void

func_exit:                                        ; preds = %if.end69
  call void @detect_breach()
  br label %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress.6() #0 {
entry:
  %code = alloca i64, align 8
  %canary = alloca i32
  store i32 1747628325, i32* %canary
  %oldcode = alloca i64, align 8
  %incode = alloca i64, align 8
  %finchar = alloca i32, align 4
  %stackp = alloca i8*, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i64 255, i64* %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %code, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %code, align 8
  %arrayidx = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %1
  store i16 0, i16* %arrayidx, align 2
  %2 = load i64, i64* %code, align 8
  %conv = trunc i64 %2 to i8
  %3 = load i64, i64* %code, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %3
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %code, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* @block_compress, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 257, i32 256
  %conv2 = sext i32 %cond to i64
  store i64 %conv2, i64* @free_ent, align 8
  %call = call i64 @getcode()
  store i64 %call, i64* %oldcode, align 8
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %finchar, align 4
  %7 = load i64, i64* %oldcode, align 8
  %cmp4 = icmp eq i64 %7, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %if.end69

if.end:                                           ; preds = %for.end
  %8 = load i32, i32* %finchar, align 4
  %conv6 = trunc i32 %8 to i8
  %conv7 = sext i8 %conv6 to i32
  %call8 = call i32 @putchar(i32 %conv7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @writeerr()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  store i8* getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536), i8** %stackp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %if.end12
  %call13 = call i64 @getcode()
  store i64 %call13, i64* %code, align 8
  %cmp14 = icmp sgt i64 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end64

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %code, align 8
  %cmp16 = icmp eq i64 %10, 256
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @block_compress, align 4
  %tobool18 = icmp ne i32 %11, 0
  br i1 %tobool18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  store i64 255, i64* %code, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %if.then19
  %12 = load i64, i64* %code, align 8
  %cmp21 = icmp sge i64 %12, 0
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond20
  %13 = load i64, i64* %code, align 8
  %arrayidx24 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %13
  store i16 0, i16* %arrayidx24, align 2
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %14 = load i64, i64* %code, align 8
  %dec26 = add nsw i64 %14, -1
  store i64 %dec26, i64* %code, align 8
  br label %for.cond20

for.end27:                                        ; preds = %for.cond20
  store i32 1, i32* @clear_flg, align 4
  store i64 256, i64* @free_ent, align 8
  %call28 = call i64 @getcode()
  store i64 %call28, i64* %code, align 8
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end27
  br label %while.end64

if.end32:                                         ; preds = %for.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true, %while.body
  %15 = load i64, i64* %code, align 8
  store i64 %15, i64* %incode, align 8
  %16 = load i64, i64* %code, align 8
  %17 = load i64, i64* @free_ent, align 8
  %cmp34 = icmp sge i64 %16, %17
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %18 = load i32, i32* %finchar, align 4
  %conv37 = trunc i32 %18 to i8
  %19 = load i8*, i8** %stackp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %stackp, align 8
  store i8 %conv37, i8* %19, align 1
  %20 = load i64, i64* %oldcode, align 8
  store i64 %20, i64* %code, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42, %if.end38
  %21 = load i64, i64* %code, align 8
  %cmp40 = icmp sge i64 %21, 256
  br i1 %cmp40, label %while.body42, label %while.end

while.body42:                                     ; preds = %while.cond39
  %22 = load i64, i64* %code, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %22
  %23 = load i8, i8* %arrayidx43, align 1
  %24 = load i8*, i8** %stackp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr44, i8** %stackp, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i64, i64* %code, align 8
  %arrayidx45 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %26 to i64
  store i64 %conv46, i64* %code, align 8
  br label %while.cond39

while.end:                                        ; preds = %while.cond39
  %27 = load i64, i64* %code, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %27
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %28 to i32
  store i32 %conv48, i32* %finchar, align 4
  %conv49 = trunc i32 %conv48 to i8
  %29 = load i8*, i8** %stackp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr50, i8** %stackp, align 8
  store i8 %conv49, i8* %29, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %30 = load i8*, i8** %stackp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr51, i8** %stackp, align 8
  %31 = load i8, i8* %incdec.ptr51, align 1
  %conv52 = zext i8 %31 to i32
  %call53 = call i32 @putchar(i32 %conv52)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i8*, i8** %stackp, align 8
  %cmp54 = icmp ugt i8* %32, getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536)
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64, i64* @free_ent, align 8
  store i64 %33, i64* %code, align 8
  %34 = load i64, i64* @maxmaxcode, align 8
  %cmp56 = icmp slt i64 %33, %34
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %do.end
  %35 = load i64, i64* %oldcode, align 8
  %conv59 = trunc i64 %35 to i16
  %36 = load i64, i64* %code, align 8
  %arrayidx60 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %36
  store i16 %conv59, i16* %arrayidx60, align 2
  %37 = load i32, i32* %finchar, align 4
  %conv61 = trunc i32 %37 to i8
  %38 = load i64, i64* %code, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %38
  store i8 %conv61, i8* %arrayidx62, align 1
  %39 = load i64, i64* %code, align 8
  %add = add nsw i64 %39, 1
  store i64 %add, i64* @free_ent, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %do.end
  %40 = load i64, i64* %incode, align 8
  store i64 %40, i64* %oldcode, align 8
  br label %while.cond

while.end64:                                      ; preds = %if.then31, %while.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @ferror(%struct._IO_FILE* %42) #5
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end64
  call void @writeerr()
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end64, %if.then
  %43 = load i32, i32* %canary
  %44 = icmp eq i32 %43, 1747628325
  br i1 %44, label %45, label %func_exit

45:                                               ; preds = %if.end69, %func_exit
  ret void

func_exit:                                        ; preds = %if.end69
  call void @detect_breach()
  br label %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress.7() #0 {
entry:
  %fcode = alloca i64, align 8
  %canary = alloca i32
  store i32 1677301962, i32* %canary
  %hshift = alloca i32, align 4
  %c = alloca i32, align 4
  %c95 = alloca i32, align 4
  %disp = alloca i32, align 4
  %i = alloca i64, align 8
  %ent = alloca i64, align 8
  %hsize_reg = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %0 = load i32, i32* @nomagic, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @putchar(i32 %conv)
  %2 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv1 = zext i8 %2 to i32
  %call2 = call i32 @putchar(i32 %conv1)
  %3 = load i32, i32* @maxbits, align 4
  %4 = load i32, i32* @block_compress, align 4
  %or = or i32 %3, %4
  %conv3 = trunc i32 %or to i8
  %conv4 = sext i8 %conv3 to i32
  %call5 = call i32 @putchar(i32 %conv4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @writeerr()
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %6 = load i32, i32* @block_compress, align 4
  %tobool9 = icmp ne i32 %6, 0
  %7 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i32 257, i32 256
  %conv10 = sext i32 %cond to i64
  store i64 %conv10, i64* @free_ent, align 8
  %call11 = call i32 @getchar()
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %ent, align 8
  store i32 0, i32* %hshift, align 4
  %8 = load i64, i64* @hsize, align 8
  store i64 %8, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i64, i64* %fcode, align 8
  %cmp13 = icmp slt i64 %9, 65536
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %11, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %hshift, align 4
  %sub = sub nsw i32 8, %12
  store i32 %sub, i32* %hshift, align 4
  %13 = load i64, i64* @hsize, align 8
  store i64 %13, i64* %hsize_reg, align 8
  %14 = load i64, i64* %hsize_reg, align 8
  call void @cl_hash(i64 %14)
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.then99, %if.then87, %if.then68, %if.then49, %if.then24, %for.end
  %call15 = call i32 @getchar()
  store i32 %call15, i32* %c, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* @in_count, align 8
  %inc18 = add nsw i64 %15, 1
  store i64 %inc18, i64* @in_count, align 8
  %16 = load i32, i32* %c, align 4
  %conv19 = sext i32 %16 to i64
  %17 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %conv19, %sh_prom
  %18 = load i64, i64* %ent, align 8
  %add = add nsw i64 %shl, %18
  store i64 %add, i64* %fcode, align 8
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %hshift, align 4
  %shl20 = shl i32 %19, %20
  %conv21 = sext i32 %shl20 to i64
  %21 = load i64, i64* %ent, align 8
  %xor = xor i64 %conv21, %21
  store i64 %xor, i64* %i, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %22
  %23 = load i64, i64* %arrayidx, align 8
  %24 = load i64, i64* %fcode, align 8
  %cmp22 = icmp eq i64 %23, %24
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.body
  %25 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %26 to i64
  store i64 %conv26, i64* %ent, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  %27 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %27
  %28 = load i64, i64* %arrayidx27, align 8
  %cmp28 = icmp slt i64 %28, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %nomatch

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %29 = load i64, i64* %hsize_reg, align 8
  %30 = load i64, i64* %i, align 8
  %sub33 = sub nsw i64 %29, %30
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, i32* %disp, align 4
  %31 = load i64, i64* %i, align 8
  %cmp35 = icmp eq i64 %31, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i32 1, i32* %disp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32
  %32 = load i32, i32* %disp, align 4
  %conv39 = sext i32 %32 to i64
  %33 = load i64, i64* %i, align 8
  %sub40 = sub nsw i64 %33, %conv39
  store i64 %sub40, i64* %i, align 8
  %cmp41 = icmp slt i64 %sub40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %34 = load i64, i64* %hsize_reg, align 8
  %35 = load i64, i64* %i, align 8
  %add44 = add nsw i64 %35, %34
  store i64 %add44, i64* %i, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38
  %36 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %36
  %37 = load i64, i64* %arrayidx46, align 8
  %38 = load i64, i64* %fcode, align 8
  %cmp47 = icmp eq i64 %37, %38
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %39 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %39
  %40 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %40 to i64
  store i64 %conv51, i64* %ent, align 8
  br label %while.cond

if.end52:                                         ; preds = %if.end45
  %41 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %41
  %42 = load i64, i64* %arrayidx53, align 8
  %cmp54 = icmp sle i64 %42, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  br label %nomatch

if.end57:                                         ; preds = %if.end52
  %43 = load i32, i32* %disp, align 4
  %conv58 = sext i32 %43 to i64
  %44 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 %44, %conv58
  store i64 %sub59, i64* %i, align 8
  %cmp60 = icmp slt i64 %sub59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %45 = load i64, i64* %hsize_reg, align 8
  %46 = load i64, i64* %i, align 8
  %add63 = add nsw i64 %46, %45
  store i64 %add63, i64* %i, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57
  %47 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %47
  %48 = load i64, i64* %arrayidx65, align 8
  %49 = load i64, i64* %fcode, align 8
  %cmp66 = icmp eq i64 %48, %49
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end64
  %50 = load i64, i64* %i, align 8
  %arrayidx69 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %50
  %51 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %51 to i64
  store i64 %conv70, i64* %ent, align 8
  br label %while.cond

if.end71:                                         ; preds = %if.end64
  %52 = load i64, i64* %i, align 8
  %arrayidx72 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %52
  %53 = load i64, i64* %arrayidx72, align 8
  %cmp73 = icmp sle i64 %53, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  br label %nomatch

if.end76:                                         ; preds = %if.end71
  %54 = load i32, i32* %disp, align 4
  %conv77 = sext i32 %54 to i64
  %55 = load i64, i64* %i, align 8
  %sub78 = sub nsw i64 %55, %conv77
  store i64 %sub78, i64* %i, align 8
  %cmp79 = icmp slt i64 %sub78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end76
  %56 = load i64, i64* %hsize_reg, align 8
  %57 = load i64, i64* %i, align 8
  %add82 = add nsw i64 %57, %56
  store i64 %add82, i64* %i, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %58 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %58
  %59 = load i64, i64* %arrayidx84, align 8
  %60 = load i64, i64* %fcode, align 8
  %cmp85 = icmp eq i64 %59, %60
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  %61 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %61
  %62 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %62 to i64
  store i64 %conv89, i64* %ent, align 8
  br label %while.cond

if.end90:                                         ; preds = %if.end83
  %63 = load i64, i64* %i, align 8
  %arrayidx91 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %63
  %64 = load i64, i64* %arrayidx91, align 8
  %cmp92 = icmp sgt i64 %64, 0
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.end90
  store i32 0, i32* %c95, align 4
  %65 = load i64, i64* %fcode, align 8
  %66 = load i32, i32* %disp, align 4
  %67 = load i64, i64* %hsize_reg, align 8
  %conv96 = trunc i64 %67 to i32
  %call97 = call i32 @scott_hack(i64* %i, i64 %65, i32 %66, i32 %conv96, i64* %ent)
  store i32 %call97, i32* %c95, align 4
  %68 = load i32, i32* %c95, align 4
  %tobool98 = icmp ne i32 %68, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then94
  br label %while.cond

if.end100:                                        ; preds = %if.then94
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end90
  br label %nomatch

nomatch:                                          ; preds = %if.end101, %if.then75, %if.then56, %if.then30
  %69 = load i64, i64* %ent, align 8
  call void @output(i64 %69)
  %70 = load i64, i64* @out_count, align 8
  %inc102 = add nsw i64 %70, 1
  store i64 %inc102, i64* @out_count, align 8
  %71 = load i32, i32* %c, align 4
  %conv103 = sext i32 %71 to i64
  store i64 %conv103, i64* %ent, align 8
  %72 = load i64, i64* @free_ent, align 8
  %73 = load i64, i64* @maxmaxcode, align 8
  %cmp104 = icmp slt i64 %72, %73
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %nomatch
  %74 = load i64, i64* @free_ent, align 8
  %inc107 = add nsw i64 %74, 1
  store i64 %inc107, i64* @free_ent, align 8
  %conv108 = trunc i64 %74 to i16
  %75 = load i64, i64* %i, align 8
  %arrayidx109 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %75
  store i16 %conv108, i16* %arrayidx109, align 2
  %76 = load i64, i64* %fcode, align 8
  %77 = load i64, i64* %i, align 8
  %arrayidx110 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %77
  store i64 %76, i64* %arrayidx110, align 8
  br label %if.end117

if.else111:                                       ; preds = %nomatch
  %78 = load i64, i64* @in_count, align 8
  %79 = load i64, i64* @checkpoint, align 8
  %cmp112 = icmp sge i64 %78, %79
  br i1 %cmp112, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %if.else111
  %80 = load i32, i32* @block_compress, align 4
  %tobool114 = icmp ne i32 %80, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %land.lhs.true
  call void @cl_block()
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %land.lhs.true, %if.else111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then106
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load i64, i64* %ent, align 8
  call void @output(i64 %81)
  %82 = load i64, i64* @out_count, align 8
  %inc118 = add nsw i64 %82, 1
  store i64 %inc118, i64* @out_count, align 8
  call void @output(i64 -1)
  %83 = load i32, i32* @zcat_flg, align 4
  %cmp119 = icmp eq i32 %83, 0
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %while.end
  %84 = load i32, i32* @quiet, align 4
  %tobool122 = icmp ne i32 %84, 0
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %land.lhs.true121
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i64, i64* @in_count, align 8
  %88 = load i64, i64* @bytes_out, align 8
  %sub125 = sub nsw i64 %87, %88
  %89 = load i64, i64* @in_count, align 8
  call void @prratio(%struct._IO_FILE* %86, i64 %sub125, i64 %89)
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %land.lhs.true121, %while.end
  %90 = load i64, i64* @bytes_out, align 8
  %91 = load i64, i64* @in_count, align 8
  %cmp127 = icmp sgt i64 %90, %91
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  store i32 2, i32* @exit_stat, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  %92 = load i32, i32* %canary
  %93 = icmp eq i32 %92, 1677301962
  br i1 %93, label %94, label %func_exit

94:                                               ; preds = %if.end130, %func_exit
  ret void

func_exit:                                        ; preds = %if.end130
  call void @detect_breach()
  br label %94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output.8(i64 %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  %bits = alloca i32, align 4
  %r_off = alloca i32, align 4
  %canary = alloca i32
  store i32 985370150, i32* %canary
  %bp = alloca i8*, align 8
  store i64 %code, i64* %code.addr, align 8
  %0 = load i32, i32* @offset, align 4
  store i32 %0, i32* %r_off, align 4
  %1 = load i32, i32* @n_bits, align 4
  store i32 %1, i32* %bits, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %2 = load i64, i64* %code.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else63

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %3, 3
  %4 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %5 = load i32, i32* %r_off, align 4
  %and = and i32 %5, 7
  store i32 %and, i32* %r_off, align 4
  %6 = load i8*, i8** %bp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %r_off, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv, %conv1
  %conv3 = sext i32 %and2 to i64
  %10 = load i64, i64* %code.addr, align 8
  %11 = load i32, i32* %r_off, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %10, %sh_prom
  %12 = load i32, i32* %r_off, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i64
  %and7 = and i64 %shl, %conv6
  %or = or i64 %conv3, %and7
  %conv8 = trunc i64 %or to i8
  %14 = load i8*, i8** %bp, align 8
  store i8 %conv8, i8* %14, align 1
  %15 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %16 = load i32, i32* %r_off, align 4
  %sub = sub nsw i32 8, %16
  %17 = load i32, i32* %bits, align 4
  %sub9 = sub nsw i32 %17, %sub
  store i32 %sub9, i32* %bits, align 4
  %18 = load i32, i32* %r_off, align 4
  %sub10 = sub nsw i32 8, %18
  %19 = load i64, i64* %code.addr, align 8
  %sh_prom11 = zext i32 %sub10 to i64
  %shr12 = ashr i64 %19, %sh_prom11
  store i64 %shr12, i64* %code.addr, align 8
  %20 = load i32, i32* %bits, align 4
  %cmp13 = icmp sge i32 %20, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %21 = load i64, i64* %code.addr, align 8
  %conv16 = trunc i64 %21 to i8
  %22 = load i8*, i8** %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %bp, align 8
  store i8 %conv16, i8* %22, align 1
  %23 = load i64, i64* %code.addr, align 8
  %shr18 = ashr i64 %23, 8
  store i64 %shr18, i64* %code.addr, align 8
  %24 = load i32, i32* %bits, align 4
  %sub19 = sub nsw i32 %24, 8
  store i32 %sub19, i32* %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %25 = load i32, i32* %bits, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %26 = load i64, i64* %code.addr, align 8
  %conv21 = trunc i64 %26 to i8
  %27 = load i8*, i8** %bp, align 8
  store i8 %conv21, i8* %27, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %28 = load i32, i32* @n_bits, align 4
  %29 = load i32, i32* @offset, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* @offset, align 4
  %30 = load i32, i32* @offset, align 4
  %31 = load i32, i32* @n_bits, align 4
  %shl23 = shl i32 %31, 3
  %cmp24 = icmp eq i32 %30, %shl23
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %32 = load i32, i32* @n_bits, align 4
  store i32 %32, i32* %bits, align 4
  %33 = load i32, i32* %bits, align 4
  %conv27 = sext i32 %33 to i64
  %34 = load i64, i64* @bytes_out, align 8
  %add28 = add nsw i64 %34, %conv27
  store i64 %add28, i64* @bytes_out, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then26
  %35 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %36 = load i8, i8* %35, align 1
  %conv30 = sext i8 %36 to i32
  %call = call i32 @putchar(i32 %conv30)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %bits, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %bits, align 4
  %tobool31 = icmp ne i32 %dec, 0
  br i1 %tobool31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* @offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end22
  %38 = load i64, i64* @free_ent, align 8
  %39 = load i64, i64* @maxcode, align 8
  %cmp33 = icmp sgt i64 %38, %39
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %40 = load i32, i32* @clear_flg, align 4
  %cmp35 = icmp sgt i32 %40, 0
  br i1 %cmp35, label %if.then37, label %if.end62

if.then37:                                        ; preds = %lor.lhs.false, %if.end32
  %41 = load i32, i32* @offset, align 4
  %cmp38 = icmp sgt i32 %41, 0
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.then37
  %42 = load i32, i32* @n_bits, align 4
  %conv41 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv41, %struct._IO_FILE* %43)
  %44 = load i32, i32* @n_bits, align 4
  %conv43 = sext i32 %44 to i64
  %cmp44 = icmp ne i64 %call42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  call void @writeerr()
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %45 = load i32, i32* @n_bits, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i64, i64* @bytes_out, align 8
  %add49 = add nsw i64 %46, %conv48
  store i64 %add49, i64* @bytes_out, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  store i32 0, i32* @offset, align 4
  %47 = load i32, i32* @clear_flg, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end50
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end50
  %48 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* @n_bits, align 4
  %49 = load i32, i32* @n_bits, align 4
  %50 = load i32, i32* @maxbits, align 4
  %cmp53 = icmp eq i32 %49, %50
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %51 = load i64, i64* @maxmaxcode, align 8
  store i64 %51, i64* @maxcode, align 8
  br label %if.end60

if.else56:                                        ; preds = %if.else
  %52 = load i32, i32* @n_bits, align 4
  %shl57 = shl i32 1, %52
  %sub58 = sub nsw i32 %shl57, 1
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* @maxcode, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  br label %if.end80

if.else63:                                        ; preds = %entry
  %53 = load i32, i32* @offset, align 4
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.else63
  %54 = load i32, i32* @offset, align 4
  %add67 = add nsw i32 %54, 7
  %div = sdiv i32 %add67, 8
  %conv68 = sext i32 %div to i64
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv68, %struct._IO_FILE* %55)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.else63
  %56 = load i32, i32* @offset, align 4
  %add71 = add nsw i32 %56, 7
  %div72 = sdiv i32 %add71, 8
  %conv73 = sext i32 %div72 to i64
  %57 = load i64, i64* @bytes_out, align 8
  %add74 = add nsw i64 %57, %conv73
  store i64 %add74, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @ferror(%struct._IO_FILE* %59) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  call void @writeerr()
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end62
  %60 = load i32, i32* %canary
  %61 = icmp eq i32 %60, 985370150
  br i1 %61, label %62, label %func_exit

62:                                               ; preds = %if.end80, %func_exit
  ret void

func_exit:                                        ; preds = %if.end80
  call void @detect_breach()
  br label %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scott_hack.9(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent) #0 {
entry:
  %canary = alloca i32
  store i32 2023858368, i32* %canary
  %i.addr = alloca i64*, align 8
  %hsize_reg.addr = alloca i32, align 4
  %disp.addr = alloca i32, align 4
  %retval = alloca i32, align 4
  %ent.addr = alloca i64*, align 8
  %fcode.addr = alloca i64, align 8
  store i64* %i, i64** %i.addr, align 8
  store i64 %fcode, i64* %fcode.addr, align 8
  store i32 %disp, i32* %disp.addr, align 4
  store i32 %hsize_reg, i32* %hsize_reg.addr, align 4
  store i64* %ent, i64** %ent.addr, align 8
  br label %probeSH

probeSH:                                          ; preds = %if.then12, %entry
  %0 = load i32, i32* %disp.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %i.addr, align 8
  %2 = load i64, i64* %1, align 8
  %sub = sub nsw i64 %2, %conv
  store i64 %sub, i64* %1, align 8
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %probeSH
  %3 = load i32, i32* %hsize_reg.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64*, i64** %i.addr, align 8
  %5 = load i64, i64* %4, align 8
  %add = add nsw i64 %5, %conv2
  store i64 %add, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %probeSH
  %6 = load i64*, i64** %i.addr, align 8
  %7 = load i64, i64* %6, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %fcode.addr, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load i64*, i64** %i.addr, align 8
  %11 = load i64, i64* %10, align 8
  %arrayidx6 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %11
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %12 to i64
  %13 = load i64*, i64** %ent.addr, align 8
  store i64 %conv7, i64* %13, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %14 = load i64*, i64** %i.addr, align 8
  %15 = load i64, i64* %14, align 8
  %arrayidx9 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp sgt i64 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %probeSH

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then5
  %17 = load i32, i32* %retval, align 4
  %18 = load i32, i32* %canary
  %19 = icmp eq i32 %18, 2023858368
  br i1 %19, label %20, label %func_exit

20:                                               ; preds = %return, %func_exit
  ret i32 %17

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output.10(i64 %code) #0 {
entry:
  %canary = alloca i32
  store i32 1830087309, i32* %canary
  %r_off = alloca i32, align 4
  %bp = alloca i8*, align 8
  %code.addr = alloca i64, align 8
  %bits = alloca i32, align 4
  store i64 %code, i64* %code.addr, align 8
  %0 = load i32, i32* @offset, align 4
  store i32 %0, i32* %r_off, align 4
  %1 = load i32, i32* @n_bits, align 4
  store i32 %1, i32* %bits, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %2 = load i64, i64* %code.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else63

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %3, 3
  %4 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %5 = load i32, i32* %r_off, align 4
  %and = and i32 %5, 7
  store i32 %and, i32* %r_off, align 4
  %6 = load i8*, i8** %bp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %r_off, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv, %conv1
  %conv3 = sext i32 %and2 to i64
  %10 = load i64, i64* %code.addr, align 8
  %11 = load i32, i32* %r_off, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %10, %sh_prom
  %12 = load i32, i32* %r_off, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i64
  %and7 = and i64 %shl, %conv6
  %or = or i64 %conv3, %and7
  %conv8 = trunc i64 %or to i8
  %14 = load i8*, i8** %bp, align 8
  store i8 %conv8, i8* %14, align 1
  %15 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %16 = load i32, i32* %r_off, align 4
  %sub = sub nsw i32 8, %16
  %17 = load i32, i32* %bits, align 4
  %sub9 = sub nsw i32 %17, %sub
  store i32 %sub9, i32* %bits, align 4
  %18 = load i32, i32* %r_off, align 4
  %sub10 = sub nsw i32 8, %18
  %19 = load i64, i64* %code.addr, align 8
  %sh_prom11 = zext i32 %sub10 to i64
  %shr12 = ashr i64 %19, %sh_prom11
  store i64 %shr12, i64* %code.addr, align 8
  %20 = load i32, i32* %bits, align 4
  %cmp13 = icmp sge i32 %20, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %21 = load i64, i64* %code.addr, align 8
  %conv16 = trunc i64 %21 to i8
  %22 = load i8*, i8** %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %bp, align 8
  store i8 %conv16, i8* %22, align 1
  %23 = load i64, i64* %code.addr, align 8
  %shr18 = ashr i64 %23, 8
  store i64 %shr18, i64* %code.addr, align 8
  %24 = load i32, i32* %bits, align 4
  %sub19 = sub nsw i32 %24, 8
  store i32 %sub19, i32* %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %25 = load i32, i32* %bits, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %26 = load i64, i64* %code.addr, align 8
  %conv21 = trunc i64 %26 to i8
  %27 = load i8*, i8** %bp, align 8
  store i8 %conv21, i8* %27, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %28 = load i32, i32* @n_bits, align 4
  %29 = load i32, i32* @offset, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* @offset, align 4
  %30 = load i32, i32* @offset, align 4
  %31 = load i32, i32* @n_bits, align 4
  %shl23 = shl i32 %31, 3
  %cmp24 = icmp eq i32 %30, %shl23
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %32 = load i32, i32* @n_bits, align 4
  store i32 %32, i32* %bits, align 4
  %33 = load i32, i32* %bits, align 4
  %conv27 = sext i32 %33 to i64
  %34 = load i64, i64* @bytes_out, align 8
  %add28 = add nsw i64 %34, %conv27
  store i64 %add28, i64* @bytes_out, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then26
  %35 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %36 = load i8, i8* %35, align 1
  %conv30 = sext i8 %36 to i32
  %call = call i32 @putchar(i32 %conv30)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %bits, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %bits, align 4
  %tobool31 = icmp ne i32 %dec, 0
  br i1 %tobool31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* @offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end22
  %38 = load i64, i64* @free_ent, align 8
  %39 = load i64, i64* @maxcode, align 8
  %cmp33 = icmp sgt i64 %38, %39
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %40 = load i32, i32* @clear_flg, align 4
  %cmp35 = icmp sgt i32 %40, 0
  br i1 %cmp35, label %if.then37, label %if.end62

if.then37:                                        ; preds = %lor.lhs.false, %if.end32
  %41 = load i32, i32* @offset, align 4
  %cmp38 = icmp sgt i32 %41, 0
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.then37
  %42 = load i32, i32* @n_bits, align 4
  %conv41 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv41, %struct._IO_FILE* %43)
  %44 = load i32, i32* @n_bits, align 4
  %conv43 = sext i32 %44 to i64
  %cmp44 = icmp ne i64 %call42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  call void @writeerr()
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %45 = load i32, i32* @n_bits, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i64, i64* @bytes_out, align 8
  %add49 = add nsw i64 %46, %conv48
  store i64 %add49, i64* @bytes_out, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  store i32 0, i32* @offset, align 4
  %47 = load i32, i32* @clear_flg, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end50
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end50
  %48 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* @n_bits, align 4
  %49 = load i32, i32* @n_bits, align 4
  %50 = load i32, i32* @maxbits, align 4
  %cmp53 = icmp eq i32 %49, %50
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %51 = load i64, i64* @maxmaxcode, align 8
  store i64 %51, i64* @maxcode, align 8
  br label %if.end60

if.else56:                                        ; preds = %if.else
  %52 = load i32, i32* @n_bits, align 4
  %shl57 = shl i32 1, %52
  %sub58 = sub nsw i32 %shl57, 1
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* @maxcode, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  br label %if.end80

if.else63:                                        ; preds = %entry
  %53 = load i32, i32* @offset, align 4
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.else63
  %54 = load i32, i32* @offset, align 4
  %add67 = add nsw i32 %54, 7
  %div = sdiv i32 %add67, 8
  %conv68 = sext i32 %div to i64
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv68, %struct._IO_FILE* %55)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.else63
  %56 = load i32, i32* @offset, align 4
  %add71 = add nsw i32 %56, 7
  %div72 = sdiv i32 %add71, 8
  %conv73 = sext i32 %div72 to i64
  %57 = load i64, i64* @bytes_out, align 8
  %add74 = add nsw i64 %57, %conv73
  store i64 %add74, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @ferror(%struct._IO_FILE* %59) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  call void @writeerr()
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end62
  %60 = load i32, i32* %canary
  %61 = icmp eq i32 %60, 1830087309
  br i1 %61, label %62, label %func_exit

62:                                               ; preds = %if.end80, %func_exit
  ret void

func_exit:                                        ; preds = %if.end80
  call void @detect_breach()
  br label %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getcode.11() #0 {
entry:
  %r_off = alloca i32, align 4
  %bp = alloca i8*, align 8
  %code = alloca i64, align 8
  %bits = alloca i32, align 4
  %canary = alloca i32
  store i32 665546037, i32* %canary
  %retval = alloca i64, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i8** %bp, align 8
  %0 = load i32, i32* @clear_flg, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @getcode.offset, align 4
  %2 = load i32, i32* @getcode.size, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* @free_ent, align 8
  %4 = load i64, i64* @maxcode, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i64, i64* @free_ent, align 8
  %6 = load i64, i64* @maxcode, align 8
  %cmp4 = icmp sgt i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %7 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @n_bits, align 4
  %8 = load i32, i32* @n_bits, align 4
  %9 = load i32, i32* @maxbits, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %10 = load i64, i64* @maxmaxcode, align 8
  store i64 %10, i64* @maxcode, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %11 = load i32, i32* @n_bits, align 4
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* @maxcode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* @clear_flg, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load i32, i32* @n_bits, align 4
  %conv13 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @fread(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i64 1, i64 %conv13, %struct._IO_FILE* %14)
  %conv14 = trunc i64 %call to i32
  store i32 %conv14, i32* @getcode.size, align 4
  %15 = load i32, i32* @getcode.size, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i64 -1, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, i32* @getcode.offset, align 4
  %16 = load i32, i32* @getcode.size, align 4
  %shl19 = shl i32 %16, 3
  %17 = load i32, i32* @n_bits, align 4
  %sub20 = sub nsw i32 %17, 1
  %sub21 = sub nsw i32 %shl19, %sub20
  store i32 %sub21, i32* @getcode.size, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %lor.lhs.false2
  %18 = load i32, i32* @getcode.offset, align 4
  store i32 %18, i32* %r_off, align 4
  %19 = load i32, i32* @n_bits, align 4
  store i32 %19, i32* %bits, align 4
  %20 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %20, 3
  %21 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %22 = load i32, i32* %r_off, align 4
  %and = and i32 %22, 7
  store i32 %and, i32* %r_off, align 4
  %23 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %25 = load i32, i32* %r_off, align 4
  %shr24 = ashr i32 %conv23, %25
  %conv25 = sext i32 %shr24 to i64
  store i64 %conv25, i64* %code, align 8
  %26 = load i32, i32* %r_off, align 4
  %sub26 = sub nsw i32 8, %26
  %27 = load i32, i32* %bits, align 4
  %sub27 = sub nsw i32 %27, %sub26
  store i32 %sub27, i32* %bits, align 4
  %28 = load i32, i32* %r_off, align 4
  %sub28 = sub nsw i32 8, %28
  store i32 %sub28, i32* %r_off, align 4
  %29 = load i32, i32* %bits, align 4
  %cmp29 = icmp sge i32 %29, 8
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end22
  %30 = load i8*, i8** %bp, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %bp, align 8
  %31 = load i8, i8* %30, align 1
  %conv33 = zext i8 %31 to i32
  %32 = load i32, i32* %r_off, align 4
  %shl34 = shl i32 %conv33, %32
  %conv35 = sext i32 %shl34 to i64
  %33 = load i64, i64* %code, align 8
  %or = or i64 %33, %conv35
  store i64 %or, i64* %code, align 8
  %34 = load i32, i32* %r_off, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, i32* %r_off, align 4
  %35 = load i32, i32* %bits, align 4
  %sub36 = sub nsw i32 %35, 8
  store i32 %sub36, i32* %bits, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end22
  %36 = load i8*, i8** %bp, align 8
  %37 = load i8, i8* %36, align 1
  %conv38 = zext i8 %37 to i32
  %38 = load i32, i32* %bits, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %39 to i32
  %and40 = and i32 %conv38, %conv39
  %40 = load i32, i32* %r_off, align 4
  %shl41 = shl i32 %and40, %40
  %conv42 = sext i32 %shl41 to i64
  %41 = load i64, i64* %code, align 8
  %or43 = or i64 %41, %conv42
  store i64 %or43, i64* %code, align 8
  %42 = load i32, i32* @n_bits, align 4
  %43 = load i32, i32* @getcode.offset, align 4
  %add44 = add nsw i32 %43, %42
  store i32 %add44, i32* @getcode.offset, align 4
  %44 = load i64, i64* %code, align 8
  store i64 %44, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then17
  %45 = load i64, i64* %retval, align 8
  %46 = load i32, i32* %canary
  %47 = icmp eq i32 %46, 665546037
  br i1 %47, label %48, label %func_exit

48:                                               ; preds = %return, %func_exit
  ret i64 %45

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getcode.12() #0 {
entry:
  %r_off = alloca i32, align 4
  %canary = alloca i32
  store i32 42092691, i32* %canary
  %code = alloca i64, align 8
  %bits = alloca i32, align 4
  %bp = alloca i8*, align 8
  %retval = alloca i64, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i8** %bp, align 8
  %0 = load i32, i32* @clear_flg, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @getcode.offset, align 4
  %2 = load i32, i32* @getcode.size, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, i64* @free_ent, align 8
  %4 = load i64, i64* @maxcode, align 8
  %cmp3 = icmp sgt i64 %3, %4
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i64, i64* @free_ent, align 8
  %6 = load i64, i64* @maxcode, align 8
  %cmp4 = icmp sgt i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.then
  %7 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @n_bits, align 4
  %8 = load i32, i32* @n_bits, align 4
  %9 = load i32, i32* @maxbits, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %10 = load i64, i64* @maxmaxcode, align 8
  store i64 %10, i64* @maxcode, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %11 = load i32, i32* @n_bits, align 4
  %shl = shl i32 1, %11
  %sub = sub nsw i32 %shl, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* @maxcode, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* @clear_flg, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load i32, i32* @n_bits, align 4
  %conv13 = sext i32 %13 to i64
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @fread(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getcode.buf, i64 0, i64 0), i64 1, i64 %conv13, %struct._IO_FILE* %14)
  %conv14 = trunc i64 %call to i32
  store i32 %conv14, i32* @getcode.size, align 4
  %15 = load i32, i32* @getcode.size, align 4
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i64 -1, i64* %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, i32* @getcode.offset, align 4
  %16 = load i32, i32* @getcode.size, align 4
  %shl19 = shl i32 %16, 3
  %17 = load i32, i32* @n_bits, align 4
  %sub20 = sub nsw i32 %17, 1
  %sub21 = sub nsw i32 %shl19, %sub20
  store i32 %sub21, i32* @getcode.size, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %lor.lhs.false2
  %18 = load i32, i32* @getcode.offset, align 4
  store i32 %18, i32* %r_off, align 4
  %19 = load i32, i32* @n_bits, align 4
  store i32 %19, i32* %bits, align 4
  %20 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %20, 3
  %21 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %22 = load i32, i32* %r_off, align 4
  %and = and i32 %22, 7
  store i32 %and, i32* %r_off, align 4
  %23 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %25 = load i32, i32* %r_off, align 4
  %shr24 = ashr i32 %conv23, %25
  %conv25 = sext i32 %shr24 to i64
  store i64 %conv25, i64* %code, align 8
  %26 = load i32, i32* %r_off, align 4
  %sub26 = sub nsw i32 8, %26
  %27 = load i32, i32* %bits, align 4
  %sub27 = sub nsw i32 %27, %sub26
  store i32 %sub27, i32* %bits, align 4
  %28 = load i32, i32* %r_off, align 4
  %sub28 = sub nsw i32 8, %28
  store i32 %sub28, i32* %r_off, align 4
  %29 = load i32, i32* %bits, align 4
  %cmp29 = icmp sge i32 %29, 8
  br i1 %cmp29, label %if.then31, label %if.end37

if.then31:                                        ; preds = %if.end22
  %30 = load i8*, i8** %bp, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr32, i8** %bp, align 8
  %31 = load i8, i8* %30, align 1
  %conv33 = zext i8 %31 to i32
  %32 = load i32, i32* %r_off, align 4
  %shl34 = shl i32 %conv33, %32
  %conv35 = sext i32 %shl34 to i64
  %33 = load i64, i64* %code, align 8
  %or = or i64 %33, %conv35
  store i64 %or, i64* %code, align 8
  %34 = load i32, i32* %r_off, align 4
  %add = add nsw i32 %34, 8
  store i32 %add, i32* %r_off, align 4
  %35 = load i32, i32* %bits, align 4
  %sub36 = sub nsw i32 %35, 8
  store i32 %sub36, i32* %bits, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %if.end22
  %36 = load i8*, i8** %bp, align 8
  %37 = load i8, i8* %36, align 1
  %conv38 = zext i8 %37 to i32
  %38 = load i32, i32* %bits, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1
  %conv39 = zext i8 %39 to i32
  %and40 = and i32 %conv38, %conv39
  %40 = load i32, i32* %r_off, align 4
  %shl41 = shl i32 %and40, %40
  %conv42 = sext i32 %shl41 to i64
  %41 = load i64, i64* %code, align 8
  %or43 = or i64 %41, %conv42
  store i64 %or43, i64* %code, align 8
  %42 = load i32, i32* @n_bits, align 4
  %43 = load i32, i32* @getcode.offset, align 4
  %add44 = add nsw i32 %43, %42
  store i32 %add44, i32* @getcode.offset, align 4
  %44 = load i64, i64* %code, align 8
  store i64 %44, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then17
  %45 = load i64, i64* %retval, align 8
  %46 = load i32, i32* %canary
  %47 = icmp eq i32 %46, 42092691
  br i1 %47, label %48, label %func_exit

48:                                               ; preds = %return, %func_exit
  ret i64 %45

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prratio.13(%struct._IO_FILE* %stream, i64 %num, i64 %den) #0 {
entry:
  %canary = alloca i32
  store i32 673664380, i32* %canary
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca i64, align 8
  %den.addr = alloca i64, align 8
  %q = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %den, i64* %den.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %cmp = icmp sgt i64 %0, 214748
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %num.addr, align 8
  %2 = load i64, i64* %den.addr, align 8
  %div = sdiv i64 %2, 10000
  %div1 = sdiv i64 %1, %div
  %conv = trunc i64 %div1 to i32
  store i32 %conv, i32* %q, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %mul = mul nsw i64 10000, %3
  %4 = load i64, i64* %den.addr, align 8
  %div2 = sdiv i64 %mul, %4
  %conv3 = trunc i64 %div2 to i32
  store i32 %conv3, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %q, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load i32, i32* %q, align 4
  %sub = sub nsw i32 0, %7
  store i32 %sub, i32* %q, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i32, i32* %q, align 4
  %div8 = sdiv i32 %9, 100
  %10 = load i32, i32* %q, align 4
  %rem = srem i32 %10, 100
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %div8, i32 %rem)
  %11 = load i32, i32* %canary
  %12 = icmp eq i32 %11, 673664380
  br i1 %12, label %13, label %func_exit

13:                                               ; preds = %if.end7, %func_exit
  ret void

func_exit:                                        ; preds = %if.end7
  call void @detect_breach()
  br label %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress.14() #0 {
entry:
  %ent = alloca i64, align 8
  %c95 = alloca i32, align 4
  %c = alloca i32, align 4
  %disp = alloca i32, align 4
  %hsize_reg = alloca i64, align 8
  %fcode = alloca i64, align 8
  %canary = alloca i32
  store i32 115557737, i32* %canary
  %hshift = alloca i32, align 4
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %0 = load i32, i32* @nomagic, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @putchar(i32 %conv)
  %2 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv1 = zext i8 %2 to i32
  %call2 = call i32 @putchar(i32 %conv1)
  %3 = load i32, i32* @maxbits, align 4
  %4 = load i32, i32* @block_compress, align 4
  %or = or i32 %3, %4
  %conv3 = trunc i32 %or to i8
  %conv4 = sext i8 %conv3 to i32
  %call5 = call i32 @putchar(i32 %conv4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @writeerr()
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %6 = load i32, i32* @block_compress, align 4
  %tobool9 = icmp ne i32 %6, 0
  %7 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i32 257, i32 256
  %conv10 = sext i32 %cond to i64
  store i64 %conv10, i64* @free_ent, align 8
  %call11 = call i32 @getchar()
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %ent, align 8
  store i32 0, i32* %hshift, align 4
  %8 = load i64, i64* @hsize, align 8
  store i64 %8, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i64, i64* %fcode, align 8
  %cmp13 = icmp slt i64 %9, 65536
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %11, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %hshift, align 4
  %sub = sub nsw i32 8, %12
  store i32 %sub, i32* %hshift, align 4
  %13 = load i64, i64* @hsize, align 8
  store i64 %13, i64* %hsize_reg, align 8
  %14 = load i64, i64* %hsize_reg, align 8
  call void @cl_hash(i64 %14)
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.then99, %if.then87, %if.then68, %if.then49, %if.then24, %for.end
  %call15 = call i32 @getchar()
  store i32 %call15, i32* %c, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* @in_count, align 8
  %inc18 = add nsw i64 %15, 1
  store i64 %inc18, i64* @in_count, align 8
  %16 = load i32, i32* %c, align 4
  %conv19 = sext i32 %16 to i64
  %17 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %conv19, %sh_prom
  %18 = load i64, i64* %ent, align 8
  %add = add nsw i64 %shl, %18
  store i64 %add, i64* %fcode, align 8
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %hshift, align 4
  %shl20 = shl i32 %19, %20
  %conv21 = sext i32 %shl20 to i64
  %21 = load i64, i64* %ent, align 8
  %xor = xor i64 %conv21, %21
  store i64 %xor, i64* %i, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %22
  %23 = load i64, i64* %arrayidx, align 8
  %24 = load i64, i64* %fcode, align 8
  %cmp22 = icmp eq i64 %23, %24
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.body
  %25 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %26 to i64
  store i64 %conv26, i64* %ent, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  %27 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %27
  %28 = load i64, i64* %arrayidx27, align 8
  %cmp28 = icmp slt i64 %28, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %nomatch

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %29 = load i64, i64* %hsize_reg, align 8
  %30 = load i64, i64* %i, align 8
  %sub33 = sub nsw i64 %29, %30
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, i32* %disp, align 4
  %31 = load i64, i64* %i, align 8
  %cmp35 = icmp eq i64 %31, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i32 1, i32* %disp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32
  %32 = load i32, i32* %disp, align 4
  %conv39 = sext i32 %32 to i64
  %33 = load i64, i64* %i, align 8
  %sub40 = sub nsw i64 %33, %conv39
  store i64 %sub40, i64* %i, align 8
  %cmp41 = icmp slt i64 %sub40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %34 = load i64, i64* %hsize_reg, align 8
  %35 = load i64, i64* %i, align 8
  %add44 = add nsw i64 %35, %34
  store i64 %add44, i64* %i, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38
  %36 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %36
  %37 = load i64, i64* %arrayidx46, align 8
  %38 = load i64, i64* %fcode, align 8
  %cmp47 = icmp eq i64 %37, %38
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %39 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %39
  %40 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %40 to i64
  store i64 %conv51, i64* %ent, align 8
  br label %while.cond

if.end52:                                         ; preds = %if.end45
  %41 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %41
  %42 = load i64, i64* %arrayidx53, align 8
  %cmp54 = icmp sle i64 %42, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  br label %nomatch

if.end57:                                         ; preds = %if.end52
  %43 = load i32, i32* %disp, align 4
  %conv58 = sext i32 %43 to i64
  %44 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 %44, %conv58
  store i64 %sub59, i64* %i, align 8
  %cmp60 = icmp slt i64 %sub59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %45 = load i64, i64* %hsize_reg, align 8
  %46 = load i64, i64* %i, align 8
  %add63 = add nsw i64 %46, %45
  store i64 %add63, i64* %i, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57
  %47 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %47
  %48 = load i64, i64* %arrayidx65, align 8
  %49 = load i64, i64* %fcode, align 8
  %cmp66 = icmp eq i64 %48, %49
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end64
  %50 = load i64, i64* %i, align 8
  %arrayidx69 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %50
  %51 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %51 to i64
  store i64 %conv70, i64* %ent, align 8
  br label %while.cond

if.end71:                                         ; preds = %if.end64
  %52 = load i64, i64* %i, align 8
  %arrayidx72 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %52
  %53 = load i64, i64* %arrayidx72, align 8
  %cmp73 = icmp sle i64 %53, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  br label %nomatch

if.end76:                                         ; preds = %if.end71
  %54 = load i32, i32* %disp, align 4
  %conv77 = sext i32 %54 to i64
  %55 = load i64, i64* %i, align 8
  %sub78 = sub nsw i64 %55, %conv77
  store i64 %sub78, i64* %i, align 8
  %cmp79 = icmp slt i64 %sub78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end76
  %56 = load i64, i64* %hsize_reg, align 8
  %57 = load i64, i64* %i, align 8
  %add82 = add nsw i64 %57, %56
  store i64 %add82, i64* %i, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %58 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %58
  %59 = load i64, i64* %arrayidx84, align 8
  %60 = load i64, i64* %fcode, align 8
  %cmp85 = icmp eq i64 %59, %60
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  %61 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %61
  %62 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %62 to i64
  store i64 %conv89, i64* %ent, align 8
  br label %while.cond

if.end90:                                         ; preds = %if.end83
  %63 = load i64, i64* %i, align 8
  %arrayidx91 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %63
  %64 = load i64, i64* %arrayidx91, align 8
  %cmp92 = icmp sgt i64 %64, 0
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.end90
  store i32 0, i32* %c95, align 4
  %65 = load i64, i64* %fcode, align 8
  %66 = load i32, i32* %disp, align 4
  %67 = load i64, i64* %hsize_reg, align 8
  %conv96 = trunc i64 %67 to i32
  %call97 = call i32 @scott_hack(i64* %i, i64 %65, i32 %66, i32 %conv96, i64* %ent)
  store i32 %call97, i32* %c95, align 4
  %68 = load i32, i32* %c95, align 4
  %tobool98 = icmp ne i32 %68, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then94
  br label %while.cond

if.end100:                                        ; preds = %if.then94
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end90
  br label %nomatch

nomatch:                                          ; preds = %if.end101, %if.then75, %if.then56, %if.then30
  %69 = load i64, i64* %ent, align 8
  call void @output(i64 %69)
  %70 = load i64, i64* @out_count, align 8
  %inc102 = add nsw i64 %70, 1
  store i64 %inc102, i64* @out_count, align 8
  %71 = load i32, i32* %c, align 4
  %conv103 = sext i32 %71 to i64
  store i64 %conv103, i64* %ent, align 8
  %72 = load i64, i64* @free_ent, align 8
  %73 = load i64, i64* @maxmaxcode, align 8
  %cmp104 = icmp slt i64 %72, %73
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %nomatch
  %74 = load i64, i64* @free_ent, align 8
  %inc107 = add nsw i64 %74, 1
  store i64 %inc107, i64* @free_ent, align 8
  %conv108 = trunc i64 %74 to i16
  %75 = load i64, i64* %i, align 8
  %arrayidx109 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %75
  store i16 %conv108, i16* %arrayidx109, align 2
  %76 = load i64, i64* %fcode, align 8
  %77 = load i64, i64* %i, align 8
  %arrayidx110 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %77
  store i64 %76, i64* %arrayidx110, align 8
  br label %if.end117

if.else111:                                       ; preds = %nomatch
  %78 = load i64, i64* @in_count, align 8
  %79 = load i64, i64* @checkpoint, align 8
  %cmp112 = icmp sge i64 %78, %79
  br i1 %cmp112, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %if.else111
  %80 = load i32, i32* @block_compress, align 4
  %tobool114 = icmp ne i32 %80, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %land.lhs.true
  call void @cl_block()
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %land.lhs.true, %if.else111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then106
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load i64, i64* %ent, align 8
  call void @output(i64 %81)
  %82 = load i64, i64* @out_count, align 8
  %inc118 = add nsw i64 %82, 1
  store i64 %inc118, i64* @out_count, align 8
  call void @output(i64 -1)
  %83 = load i32, i32* @zcat_flg, align 4
  %cmp119 = icmp eq i32 %83, 0
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %while.end
  %84 = load i32, i32* @quiet, align 4
  %tobool122 = icmp ne i32 %84, 0
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %land.lhs.true121
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i64, i64* @in_count, align 8
  %88 = load i64, i64* @bytes_out, align 8
  %sub125 = sub nsw i64 %87, %88
  %89 = load i64, i64* @in_count, align 8
  call void @prratio(%struct._IO_FILE* %86, i64 %sub125, i64 %89)
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %land.lhs.true121, %while.end
  %90 = load i64, i64* @bytes_out, align 8
  %91 = load i64, i64* @in_count, align 8
  %cmp127 = icmp sgt i64 %90, %91
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  store i32 2, i32* @exit_stat, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  %92 = load i32, i32* %canary
  %93 = icmp eq i32 %92, 115557737
  br i1 %93, label %94, label %func_exit

94:                                               ; preds = %if.end130, %func_exit
  ret void

func_exit:                                        ; preds = %if.end130
  call void @detect_breach()
  br label %94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystat.15(i8* %ifname, i8* %ofname) #0 {
entry:
  %canary = alloca i32
  store i32 1770122534, i32* %canary
  %mode = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  %ofname.addr = alloca i8*, align 8
  %ifname.addr = alloca i8*, align 8
  %timep = alloca %struct.utimbuf, align 8
  store i8* %ifname, i8** %ifname.addr, align 8
  store i8* %ofname, i8** %ofname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load i8*, i8** %ifname.addr, align 8
  %call1 = call i32 @stat(i8* %1, %struct.stat* %statbuf) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %2)
  br label %if.end48

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp ne i32 %and, 32768
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @quiet, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %ifname.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* @exit_stat, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %8 = load i64, i64* %st_nlink, align 8
  %cmp8 = icmp ugt i64 %8, 1
  br i1 %cmp8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %9 = load i32, i32* @quiet, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %ifname.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %13 = load i64, i64* %st_nlink14, align 8
  %sub = sub i64 %13, 1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i64 %sub)
  store i32 1, i32* @exit_stat, align 4
  br label %if.end43

if.else16:                                        ; preds = %if.else
  %14 = load i32, i32* @exit_stat, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else16
  %15 = load i32, i32* @force, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.else24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @quiet, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true, %if.else16
  store i32 0, i32* @exit_stat, align 4
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %18 = load i32, i32* %st_mode25, align 8
  %and26 = and i32 %18, 4095
  store i32 %and26, i32* %mode, align 4
  %19 = load i8*, i8** %ofname.addr, align 8
  %20 = load i32, i32* %mode, align 4
  %call27 = call i32 @chmod(i8* %19, i32 %20) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else24
  %21 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %21)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else24
  %22 = load i8*, i8** %ofname.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 4
  %23 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 5
  %24 = load i32, i32* %st_gid, align 8
  %call31 = call i32 @chown(i8* %22, i32 %23, i32 %24) #5
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 0
  store i64 %25, i64* %actime, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %26 = load i64, i64* %tv_sec32, align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 1
  store i64 %26, i64* %modtime, align 8
  %27 = load i8*, i8** %ofname.addr, align 8
  %call33 = call i32 @utime(i8* %27, %struct.utimbuf* %timep) #5
  %28 = load i8*, i8** %ifname.addr, align 8
  %call34 = call i32 @unlink(i8* %28) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %29 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %29)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  %30 = load i32, i32* @quiet, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** %ofname.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %32)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  br label %if.end48

if.end42:                                         ; preds = %if.end23
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end6
  %33 = load i8*, i8** %ofname.addr, align 8
  %call45 = call i32 @unlink(i8* %33) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %34 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %34)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44, %if.end41, %if.then
  %35 = load i32, i32* %canary
  %36 = icmp eq i32 %35, 1770122534
  br i1 %36, label %37, label %func_exit

37:                                               ; preds = %if.end48, %func_exit
  ret void

func_exit:                                        ; preds = %if.end48
  call void @detect_breach()
  br label %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scott_hack.16(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent) #0 {
entry:
  %fcode.addr = alloca i64, align 8
  %retval = alloca i32, align 4
  %canary = alloca i32
  store i32 1183431094, i32* %canary
  %hsize_reg.addr = alloca i32, align 4
  %i.addr = alloca i64*, align 8
  %disp.addr = alloca i32, align 4
  %ent.addr = alloca i64*, align 8
  store i64* %i, i64** %i.addr, align 8
  store i64 %fcode, i64* %fcode.addr, align 8
  store i32 %disp, i32* %disp.addr, align 4
  store i32 %hsize_reg, i32* %hsize_reg.addr, align 4
  store i64* %ent, i64** %ent.addr, align 8
  br label %probeSH

probeSH:                                          ; preds = %if.then12, %entry
  %0 = load i32, i32* %disp.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %i.addr, align 8
  %2 = load i64, i64* %1, align 8
  %sub = sub nsw i64 %2, %conv
  store i64 %sub, i64* %1, align 8
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %probeSH
  %3 = load i32, i32* %hsize_reg.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64*, i64** %i.addr, align 8
  %5 = load i64, i64* %4, align 8
  %add = add nsw i64 %5, %conv2
  store i64 %add, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %probeSH
  %6 = load i64*, i64** %i.addr, align 8
  %7 = load i64, i64* %6, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %fcode.addr, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load i64*, i64** %i.addr, align 8
  %11 = load i64, i64* %10, align 8
  %arrayidx6 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %11
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %12 to i64
  %13 = load i64*, i64** %ent.addr, align 8
  store i64 %conv7, i64* %13, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %14 = load i64*, i64** %i.addr, align 8
  %15 = load i64, i64* %14, align 8
  %arrayidx9 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp sgt i64 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %probeSH

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then5
  %17 = load i32, i32* %retval, align 4
  %18 = load i32, i32* %canary
  %19 = icmp eq i32 %18, 1183431094
  br i1 %19, label %20, label %func_exit

20:                                               ; preds = %return, %func_exit
  ret i32 %17

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prratio.17(%struct._IO_FILE* %stream, i64 %num, i64 %den) #0 {
entry:
  %num.addr = alloca i64, align 8
  %canary = alloca i32
  store i32 260294392, i32* %canary
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %q = alloca i32, align 4
  %den.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %den, i64* %den.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %cmp = icmp sgt i64 %0, 214748
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %num.addr, align 8
  %2 = load i64, i64* %den.addr, align 8
  %div = sdiv i64 %2, 10000
  %div1 = sdiv i64 %1, %div
  %conv = trunc i64 %div1 to i32
  store i32 %conv, i32* %q, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %mul = mul nsw i64 10000, %3
  %4 = load i64, i64* %den.addr, align 8
  %div2 = sdiv i64 %mul, %4
  %conv3 = trunc i64 %div2 to i32
  store i32 %conv3, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %q, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load i32, i32* %q, align 4
  %sub = sub nsw i32 0, %7
  store i32 %sub, i32* %q, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i32, i32* %q, align 4
  %div8 = sdiv i32 %9, 100
  %10 = load i32, i32* %q, align 4
  %rem = srem i32 %10, 100
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %div8, i32 %rem)
  %11 = load i32, i32* %canary
  %12 = icmp eq i32 %11, 260294392
  br i1 %12, label %13, label %func_exit

13:                                               ; preds = %if.end7, %func_exit
  ret void

func_exit:                                        ; preds = %if.end7
  call void @detect_breach()
  br label %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystat.18(i8* %ifname, i8* %ofname) #0 {
entry:
  %timep = alloca %struct.utimbuf, align 8
  %statbuf = alloca %struct.stat, align 8
  %ofname.addr = alloca i8*, align 8
  %canary = alloca i32
  store i32 164888934, i32* %canary
  %ifname.addr = alloca i8*, align 8
  %mode = alloca i32, align 4
  store i8* %ifname, i8** %ifname.addr, align 8
  store i8* %ofname, i8** %ofname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load i8*, i8** %ifname.addr, align 8
  %call1 = call i32 @stat(i8* %1, %struct.stat* %statbuf) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %2)
  br label %if.end48

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp ne i32 %and, 32768
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @quiet, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %ifname.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* @exit_stat, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %8 = load i64, i64* %st_nlink, align 8
  %cmp8 = icmp ugt i64 %8, 1
  br i1 %cmp8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %9 = load i32, i32* @quiet, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %ifname.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %13 = load i64, i64* %st_nlink14, align 8
  %sub = sub i64 %13, 1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i64 %sub)
  store i32 1, i32* @exit_stat, align 4
  br label %if.end43

if.else16:                                        ; preds = %if.else
  %14 = load i32, i32* @exit_stat, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else16
  %15 = load i32, i32* @force, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.else24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @quiet, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true, %if.else16
  store i32 0, i32* @exit_stat, align 4
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %18 = load i32, i32* %st_mode25, align 8
  %and26 = and i32 %18, 4095
  store i32 %and26, i32* %mode, align 4
  %19 = load i8*, i8** %ofname.addr, align 8
  %20 = load i32, i32* %mode, align 4
  %call27 = call i32 @chmod(i8* %19, i32 %20) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else24
  %21 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %21)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else24
  %22 = load i8*, i8** %ofname.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 4
  %23 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 5
  %24 = load i32, i32* %st_gid, align 8
  %call31 = call i32 @chown(i8* %22, i32 %23, i32 %24) #5
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 0
  store i64 %25, i64* %actime, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %26 = load i64, i64* %tv_sec32, align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 1
  store i64 %26, i64* %modtime, align 8
  %27 = load i8*, i8** %ofname.addr, align 8
  %call33 = call i32 @utime(i8* %27, %struct.utimbuf* %timep) #5
  %28 = load i8*, i8** %ifname.addr, align 8
  %call34 = call i32 @unlink(i8* %28) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %29 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %29)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  %30 = load i32, i32* @quiet, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** %ofname.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %32)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  br label %if.end48

if.end42:                                         ; preds = %if.end23
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end6
  %33 = load i8*, i8** %ofname.addr, align 8
  %call45 = call i32 @unlink(i8* %33) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %34 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %34)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44, %if.end41, %if.then
  %35 = load i32, i32* %canary
  %36 = icmp eq i32 %35, 164888934
  br i1 %36, label %37, label %func_exit

37:                                               ; preds = %if.end48, %func_exit
  ret void

func_exit:                                        ; preds = %if.end48
  call void @detect_breach()
  br label %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress.19() #0 {
entry:
  %code = alloca i64, align 8
  %canary = alloca i32
  store i32 415005778, i32* %canary
  %finchar = alloca i32, align 4
  %stackp = alloca i8*, align 8
  %oldcode = alloca i64, align 8
  %incode = alloca i64, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i64 255, i64* %code, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %code, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %code, align 8
  %arrayidx = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %1
  store i16 0, i16* %arrayidx, align 2
  %2 = load i64, i64* %code, align 8
  %conv = trunc i64 %2 to i8
  %3 = load i64, i64* %code, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %3
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %code, align 8
  %dec = add nsw i64 %4, -1
  store i64 %dec, i64* %code, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* @block_compress, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 257, i32 256
  %conv2 = sext i32 %cond to i64
  store i64 %conv2, i64* @free_ent, align 8
  %call = call i64 @getcode()
  store i64 %call, i64* %oldcode, align 8
  %conv3 = trunc i64 %call to i32
  store i32 %conv3, i32* %finchar, align 4
  %7 = load i64, i64* %oldcode, align 8
  %cmp4 = icmp eq i64 %7, -1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %if.end69

if.end:                                           ; preds = %for.end
  %8 = load i32, i32* %finchar, align 4
  %conv6 = trunc i32 %8 to i8
  %conv7 = sext i8 %conv6 to i32
  %call8 = call i32 @putchar(i32 %conv7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @ferror(%struct._IO_FILE* %9) #5
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @writeerr()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  store i8* getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536), i8** %stackp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end63, %if.end12
  %call13 = call i64 @getcode()
  store i64 %call13, i64* %code, align 8
  %cmp14 = icmp sgt i64 %call13, -1
  br i1 %cmp14, label %while.body, label %while.end64

while.body:                                       ; preds = %while.cond
  %10 = load i64, i64* %code, align 8
  %cmp16 = icmp eq i64 %10, 256
  br i1 %cmp16, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, i32* @block_compress, align 4
  %tobool18 = icmp ne i32 %11, 0
  br i1 %tobool18, label %if.then19, label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  store i64 255, i64* %code, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %if.then19
  %12 = load i64, i64* %code, align 8
  %cmp21 = icmp sge i64 %12, 0
  br i1 %cmp21, label %for.body23, label %for.end27

for.body23:                                       ; preds = %for.cond20
  %13 = load i64, i64* %code, align 8
  %arrayidx24 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %13
  store i16 0, i16* %arrayidx24, align 2
  br label %for.inc25

for.inc25:                                        ; preds = %for.body23
  %14 = load i64, i64* %code, align 8
  %dec26 = add nsw i64 %14, -1
  store i64 %dec26, i64* %code, align 8
  br label %for.cond20

for.end27:                                        ; preds = %for.cond20
  store i32 1, i32* @clear_flg, align 4
  store i64 256, i64* @free_ent, align 8
  %call28 = call i64 @getcode()
  store i64 %call28, i64* %code, align 8
  %cmp29 = icmp eq i64 %call28, -1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end27
  br label %while.end64

if.end32:                                         ; preds = %for.end27
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %land.lhs.true, %while.body
  %15 = load i64, i64* %code, align 8
  store i64 %15, i64* %incode, align 8
  %16 = load i64, i64* %code, align 8
  %17 = load i64, i64* @free_ent, align 8
  %cmp34 = icmp sge i64 %16, %17
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %18 = load i32, i32* %finchar, align 4
  %conv37 = trunc i32 %18 to i8
  %19 = load i8*, i8** %stackp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %stackp, align 8
  store i8 %conv37, i8* %19, align 1
  %20 = load i64, i64* %oldcode, align 8
  store i64 %20, i64* %code, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33
  br label %while.cond39

while.cond39:                                     ; preds = %while.body42, %if.end38
  %21 = load i64, i64* %code, align 8
  %cmp40 = icmp sge i64 %21, 256
  br i1 %cmp40, label %while.body42, label %while.end

while.body42:                                     ; preds = %while.cond39
  %22 = load i64, i64* %code, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %22
  %23 = load i8, i8* %arrayidx43, align 1
  %24 = load i8*, i8** %stackp, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr44, i8** %stackp, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i64, i64* %code, align 8
  %arrayidx45 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx45, align 2
  %conv46 = zext i16 %26 to i64
  store i64 %conv46, i64* %code, align 8
  br label %while.cond39

while.end:                                        ; preds = %while.cond39
  %27 = load i64, i64* %code, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %27
  %28 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %28 to i32
  store i32 %conv48, i32* %finchar, align 4
  %conv49 = trunc i32 %conv48 to i8
  %29 = load i8*, i8** %stackp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr50, i8** %stackp, align 8
  store i8 %conv49, i8* %29, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %30 = load i8*, i8** %stackp, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %incdec.ptr51, i8** %stackp, align 8
  %31 = load i8, i8* %incdec.ptr51, align 1
  %conv52 = zext i8 %31 to i32
  %call53 = call i32 @putchar(i32 %conv52)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %32 = load i8*, i8** %stackp, align 8
  %cmp54 = icmp ugt i8* %32, getelementptr inbounds (i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 65536)
  br i1 %cmp54, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i64, i64* @free_ent, align 8
  store i64 %33, i64* %code, align 8
  %34 = load i64, i64* @maxmaxcode, align 8
  %cmp56 = icmp slt i64 %33, %34
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %do.end
  %35 = load i64, i64* %oldcode, align 8
  %conv59 = trunc i64 %35 to i16
  %36 = load i64, i64* %code, align 8
  %arrayidx60 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %36
  store i16 %conv59, i16* %arrayidx60, align 2
  %37 = load i32, i32* %finchar, align 4
  %conv61 = trunc i32 %37 to i8
  %38 = load i64, i64* %code, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* bitcast ([69001 x i64]* @htab to i8*), i64 %38
  store i8 %conv61, i8* %arrayidx62, align 1
  %39 = load i64, i64* %code, align 8
  %add = add nsw i64 %39, 1
  store i64 %add, i64* @free_ent, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %do.end
  %40 = load i64, i64* %incode, align 8
  store i64 %40, i64* %oldcode, align 8
  br label %while.cond

while.end64:                                      ; preds = %if.then31, %while.cond
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @ferror(%struct._IO_FILE* %42) #5
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %while.end64
  call void @writeerr()
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %while.end64, %if.then
  %43 = load i32, i32* %canary
  %44 = icmp eq i32 %43, 415005778
  br i1 %44, label %45, label %func_exit

45:                                               ; preds = %if.end69, %func_exit
  ret void

func_exit:                                        ; preds = %if.end69
  call void @detect_breach()
  br label %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress.20() #0 {
entry:
  %c95 = alloca i32, align 4
  %fcode = alloca i64, align 8
  %ent = alloca i64, align 8
  %hshift = alloca i32, align 4
  %c = alloca i32, align 4
  %disp = alloca i32, align 4
  %hsize_reg = alloca i64, align 8
  %canary = alloca i32
  store i32 1851777740, i32* %canary
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %0 = load i32, i32* @nomagic, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @putchar(i32 %conv)
  %2 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv1 = zext i8 %2 to i32
  %call2 = call i32 @putchar(i32 %conv1)
  %3 = load i32, i32* @maxbits, align 4
  %4 = load i32, i32* @block_compress, align 4
  %or = or i32 %3, %4
  %conv3 = trunc i32 %or to i8
  %conv4 = sext i8 %conv3 to i32
  %call5 = call i32 @putchar(i32 %conv4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @writeerr()
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %6 = load i32, i32* @block_compress, align 4
  %tobool9 = icmp ne i32 %6, 0
  %7 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i32 257, i32 256
  %conv10 = sext i32 %cond to i64
  store i64 %conv10, i64* @free_ent, align 8
  %call11 = call i32 @getchar()
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %ent, align 8
  store i32 0, i32* %hshift, align 4
  %8 = load i64, i64* @hsize, align 8
  store i64 %8, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i64, i64* %fcode, align 8
  %cmp13 = icmp slt i64 %9, 65536
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %11, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %hshift, align 4
  %sub = sub nsw i32 8, %12
  store i32 %sub, i32* %hshift, align 4
  %13 = load i64, i64* @hsize, align 8
  store i64 %13, i64* %hsize_reg, align 8
  %14 = load i64, i64* %hsize_reg, align 8
  call void @cl_hash(i64 %14)
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.then99, %if.then87, %if.then68, %if.then49, %if.then24, %for.end
  %call15 = call i32 @getchar()
  store i32 %call15, i32* %c, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* @in_count, align 8
  %inc18 = add nsw i64 %15, 1
  store i64 %inc18, i64* @in_count, align 8
  %16 = load i32, i32* %c, align 4
  %conv19 = sext i32 %16 to i64
  %17 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %conv19, %sh_prom
  %18 = load i64, i64* %ent, align 8
  %add = add nsw i64 %shl, %18
  store i64 %add, i64* %fcode, align 8
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %hshift, align 4
  %shl20 = shl i32 %19, %20
  %conv21 = sext i32 %shl20 to i64
  %21 = load i64, i64* %ent, align 8
  %xor = xor i64 %conv21, %21
  store i64 %xor, i64* %i, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %22
  %23 = load i64, i64* %arrayidx, align 8
  %24 = load i64, i64* %fcode, align 8
  %cmp22 = icmp eq i64 %23, %24
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.body
  %25 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %26 to i64
  store i64 %conv26, i64* %ent, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  %27 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %27
  %28 = load i64, i64* %arrayidx27, align 8
  %cmp28 = icmp slt i64 %28, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %nomatch

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %29 = load i64, i64* %hsize_reg, align 8
  %30 = load i64, i64* %i, align 8
  %sub33 = sub nsw i64 %29, %30
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, i32* %disp, align 4
  %31 = load i64, i64* %i, align 8
  %cmp35 = icmp eq i64 %31, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i32 1, i32* %disp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32
  %32 = load i32, i32* %disp, align 4
  %conv39 = sext i32 %32 to i64
  %33 = load i64, i64* %i, align 8
  %sub40 = sub nsw i64 %33, %conv39
  store i64 %sub40, i64* %i, align 8
  %cmp41 = icmp slt i64 %sub40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %34 = load i64, i64* %hsize_reg, align 8
  %35 = load i64, i64* %i, align 8
  %add44 = add nsw i64 %35, %34
  store i64 %add44, i64* %i, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38
  %36 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %36
  %37 = load i64, i64* %arrayidx46, align 8
  %38 = load i64, i64* %fcode, align 8
  %cmp47 = icmp eq i64 %37, %38
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %39 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %39
  %40 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %40 to i64
  store i64 %conv51, i64* %ent, align 8
  br label %while.cond

if.end52:                                         ; preds = %if.end45
  %41 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %41
  %42 = load i64, i64* %arrayidx53, align 8
  %cmp54 = icmp sle i64 %42, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  br label %nomatch

if.end57:                                         ; preds = %if.end52
  %43 = load i32, i32* %disp, align 4
  %conv58 = sext i32 %43 to i64
  %44 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 %44, %conv58
  store i64 %sub59, i64* %i, align 8
  %cmp60 = icmp slt i64 %sub59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %45 = load i64, i64* %hsize_reg, align 8
  %46 = load i64, i64* %i, align 8
  %add63 = add nsw i64 %46, %45
  store i64 %add63, i64* %i, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57
  %47 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %47
  %48 = load i64, i64* %arrayidx65, align 8
  %49 = load i64, i64* %fcode, align 8
  %cmp66 = icmp eq i64 %48, %49
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end64
  %50 = load i64, i64* %i, align 8
  %arrayidx69 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %50
  %51 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %51 to i64
  store i64 %conv70, i64* %ent, align 8
  br label %while.cond

if.end71:                                         ; preds = %if.end64
  %52 = load i64, i64* %i, align 8
  %arrayidx72 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %52
  %53 = load i64, i64* %arrayidx72, align 8
  %cmp73 = icmp sle i64 %53, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  br label %nomatch

if.end76:                                         ; preds = %if.end71
  %54 = load i32, i32* %disp, align 4
  %conv77 = sext i32 %54 to i64
  %55 = load i64, i64* %i, align 8
  %sub78 = sub nsw i64 %55, %conv77
  store i64 %sub78, i64* %i, align 8
  %cmp79 = icmp slt i64 %sub78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end76
  %56 = load i64, i64* %hsize_reg, align 8
  %57 = load i64, i64* %i, align 8
  %add82 = add nsw i64 %57, %56
  store i64 %add82, i64* %i, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %58 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %58
  %59 = load i64, i64* %arrayidx84, align 8
  %60 = load i64, i64* %fcode, align 8
  %cmp85 = icmp eq i64 %59, %60
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  %61 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %61
  %62 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %62 to i64
  store i64 %conv89, i64* %ent, align 8
  br label %while.cond

if.end90:                                         ; preds = %if.end83
  %63 = load i64, i64* %i, align 8
  %arrayidx91 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %63
  %64 = load i64, i64* %arrayidx91, align 8
  %cmp92 = icmp sgt i64 %64, 0
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.end90
  store i32 0, i32* %c95, align 4
  %65 = load i64, i64* %fcode, align 8
  %66 = load i32, i32* %disp, align 4
  %67 = load i64, i64* %hsize_reg, align 8
  %conv96 = trunc i64 %67 to i32
  %call97 = call i32 @scott_hack(i64* %i, i64 %65, i32 %66, i32 %conv96, i64* %ent)
  store i32 %call97, i32* %c95, align 4
  %68 = load i32, i32* %c95, align 4
  %tobool98 = icmp ne i32 %68, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then94
  br label %while.cond

if.end100:                                        ; preds = %if.then94
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end90
  br label %nomatch

nomatch:                                          ; preds = %if.end101, %if.then75, %if.then56, %if.then30
  %69 = load i64, i64* %ent, align 8
  call void @output(i64 %69)
  %70 = load i64, i64* @out_count, align 8
  %inc102 = add nsw i64 %70, 1
  store i64 %inc102, i64* @out_count, align 8
  %71 = load i32, i32* %c, align 4
  %conv103 = sext i32 %71 to i64
  store i64 %conv103, i64* %ent, align 8
  %72 = load i64, i64* @free_ent, align 8
  %73 = load i64, i64* @maxmaxcode, align 8
  %cmp104 = icmp slt i64 %72, %73
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %nomatch
  %74 = load i64, i64* @free_ent, align 8
  %inc107 = add nsw i64 %74, 1
  store i64 %inc107, i64* @free_ent, align 8
  %conv108 = trunc i64 %74 to i16
  %75 = load i64, i64* %i, align 8
  %arrayidx109 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %75
  store i16 %conv108, i16* %arrayidx109, align 2
  %76 = load i64, i64* %fcode, align 8
  %77 = load i64, i64* %i, align 8
  %arrayidx110 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %77
  store i64 %76, i64* %arrayidx110, align 8
  br label %if.end117

if.else111:                                       ; preds = %nomatch
  %78 = load i64, i64* @in_count, align 8
  %79 = load i64, i64* @checkpoint, align 8
  %cmp112 = icmp sge i64 %78, %79
  br i1 %cmp112, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %if.else111
  %80 = load i32, i32* @block_compress, align 4
  %tobool114 = icmp ne i32 %80, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %land.lhs.true
  call void @cl_block()
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %land.lhs.true, %if.else111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then106
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load i64, i64* %ent, align 8
  call void @output(i64 %81)
  %82 = load i64, i64* @out_count, align 8
  %inc118 = add nsw i64 %82, 1
  store i64 %inc118, i64* @out_count, align 8
  call void @output(i64 -1)
  %83 = load i32, i32* @zcat_flg, align 4
  %cmp119 = icmp eq i32 %83, 0
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %while.end
  %84 = load i32, i32* @quiet, align 4
  %tobool122 = icmp ne i32 %84, 0
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %land.lhs.true121
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i64, i64* @in_count, align 8
  %88 = load i64, i64* @bytes_out, align 8
  %sub125 = sub nsw i64 %87, %88
  %89 = load i64, i64* @in_count, align 8
  call void @prratio(%struct._IO_FILE* %86, i64 %sub125, i64 %89)
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %land.lhs.true121, %while.end
  %90 = load i64, i64* @bytes_out, align 8
  %91 = load i64, i64* @in_count, align 8
  %cmp127 = icmp sgt i64 %90, %91
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  store i32 2, i32* @exit_stat, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  %92 = load i32, i32* %canary
  %93 = icmp eq i32 %92, 1851777740
  br i1 %93, label %94, label %func_exit

94:                                               ; preds = %if.end130, %func_exit
  ret void

func_exit:                                        ; preds = %if.end130
  call void @detect_breach()
  br label %94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_hash.21(i64 %hsize) #0 {
entry:
  %i = alloca i64, align 8
  %htab_p = alloca i64*, align 8
  %hsize.addr = alloca i64, align 8
  %canary = alloca i32
  store i32 1332397638, i32* %canary
  %m1 = alloca i64, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %0 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([69001 x i64], [69001 x i64]* @htab, i64 0, i64 0), i64 %0
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %1 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %1, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i64, i64* %m1, align 8
  %3 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %3, i64 -16
  store i64 %2, i64* %add.ptr1, align 8
  %4 = load i64, i64* %m1, align 8
  %5 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -15
  store i64 %4, i64* %add.ptr2, align 8
  %6 = load i64, i64* %m1, align 8
  %7 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %7, i64 -14
  store i64 %6, i64* %add.ptr3, align 8
  %8 = load i64, i64* %m1, align 8
  %9 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %9, i64 -13
  store i64 %8, i64* %add.ptr4, align 8
  %10 = load i64, i64* %m1, align 8
  %11 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 -12
  store i64 %10, i64* %add.ptr5, align 8
  %12 = load i64, i64* %m1, align 8
  %13 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %13, i64 -11
  store i64 %12, i64* %add.ptr6, align 8
  %14 = load i64, i64* %m1, align 8
  %15 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %15, i64 -10
  store i64 %14, i64* %add.ptr7, align 8
  %16 = load i64, i64* %m1, align 8
  %17 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %17, i64 -9
  store i64 %16, i64* %add.ptr8, align 8
  %18 = load i64, i64* %m1, align 8
  %19 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %19, i64 -8
  store i64 %18, i64* %add.ptr9, align 8
  %20 = load i64, i64* %m1, align 8
  %21 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %21, i64 -7
  store i64 %20, i64* %add.ptr10, align 8
  %22 = load i64, i64* %m1, align 8
  %23 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %23, i64 -6
  store i64 %22, i64* %add.ptr11, align 8
  %24 = load i64, i64* %m1, align 8
  %25 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %25, i64 -5
  store i64 %24, i64* %add.ptr12, align 8
  %26 = load i64, i64* %m1, align 8
  %27 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %27, i64 -4
  store i64 %26, i64* %add.ptr13, align 8
  %28 = load i64, i64* %m1, align 8
  %29 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 -3
  store i64 %28, i64* %add.ptr14, align 8
  %30 = load i64, i64* %m1, align 8
  %31 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %31, i64 -2
  store i64 %30, i64* %add.ptr15, align 8
  %32 = load i64, i64* %m1, align 8
  %33 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64 %32, i64* %add.ptr16, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %34, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %35, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %i, align 8
  %add = add nsw i64 %36, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %37, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %m1, align 8
  %39 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %38, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %i, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 1332397638
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %for.end, %func_exit
  ret void

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prratio.22(%struct._IO_FILE* %stream, i64 %num, i64 %den) #0 {
entry:
  %canary = alloca i32
  store i32 273058977, i32* %canary
  %den.addr = alloca i64, align 8
  %q = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %den, i64* %den.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %cmp = icmp sgt i64 %0, 214748
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %num.addr, align 8
  %2 = load i64, i64* %den.addr, align 8
  %div = sdiv i64 %2, 10000
  %div1 = sdiv i64 %1, %div
  %conv = trunc i64 %div1 to i32
  store i32 %conv, i32* %q, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %mul = mul nsw i64 10000, %3
  %4 = load i64, i64* %den.addr, align 8
  %div2 = sdiv i64 %mul, %4
  %conv3 = trunc i64 %div2 to i32
  store i32 %conv3, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %q, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load i32, i32* %q, align 4
  %sub = sub nsw i32 0, %7
  store i32 %sub, i32* %q, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i32, i32* %q, align 4
  %div8 = sdiv i32 %9, 100
  %10 = load i32, i32* %q, align 4
  %rem = srem i32 %10, 100
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %div8, i32 %rem)
  %11 = load i32, i32* %canary
  %12 = icmp eq i32 %11, 273058977
  br i1 %12, label %13, label %func_exit

13:                                               ; preds = %if.end7, %func_exit
  ret void

func_exit:                                        ; preds = %if.end7
  call void @detect_breach()
  br label %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystat.23(i8* %ifname, i8* %ofname) #0 {
entry:
  %ofname.addr = alloca i8*, align 8
  %ifname.addr = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %timep = alloca %struct.utimbuf, align 8
  %canary = alloca i32
  store i32 827752152, i32* %canary
  %mode = alloca i32, align 4
  store i8* %ifname, i8** %ifname.addr, align 8
  store i8* %ofname, i8** %ofname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load i8*, i8** %ifname.addr, align 8
  %call1 = call i32 @stat(i8* %1, %struct.stat* %statbuf) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %2)
  br label %if.end48

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp ne i32 %and, 32768
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @quiet, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %ifname.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* @exit_stat, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %8 = load i64, i64* %st_nlink, align 8
  %cmp8 = icmp ugt i64 %8, 1
  br i1 %cmp8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %9 = load i32, i32* @quiet, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %ifname.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %13 = load i64, i64* %st_nlink14, align 8
  %sub = sub i64 %13, 1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i64 %sub)
  store i32 1, i32* @exit_stat, align 4
  br label %if.end43

if.else16:                                        ; preds = %if.else
  %14 = load i32, i32* @exit_stat, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else16
  %15 = load i32, i32* @force, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.else24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @quiet, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true, %if.else16
  store i32 0, i32* @exit_stat, align 4
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %18 = load i32, i32* %st_mode25, align 8
  %and26 = and i32 %18, 4095
  store i32 %and26, i32* %mode, align 4
  %19 = load i8*, i8** %ofname.addr, align 8
  %20 = load i32, i32* %mode, align 4
  %call27 = call i32 @chmod(i8* %19, i32 %20) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else24
  %21 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %21)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else24
  %22 = load i8*, i8** %ofname.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 4
  %23 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 5
  %24 = load i32, i32* %st_gid, align 8
  %call31 = call i32 @chown(i8* %22, i32 %23, i32 %24) #5
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 0
  store i64 %25, i64* %actime, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %26 = load i64, i64* %tv_sec32, align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 1
  store i64 %26, i64* %modtime, align 8
  %27 = load i8*, i8** %ofname.addr, align 8
  %call33 = call i32 @utime(i8* %27, %struct.utimbuf* %timep) #5
  %28 = load i8*, i8** %ifname.addr, align 8
  %call34 = call i32 @unlink(i8* %28) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %29 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %29)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  %30 = load i32, i32* @quiet, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** %ofname.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %32)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  br label %if.end48

if.end42:                                         ; preds = %if.end23
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end6
  %33 = load i8*, i8** %ofname.addr, align 8
  %call45 = call i32 @unlink(i8* %33) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %34 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %34)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44, %if.end41, %if.then
  %35 = load i32, i32* %canary
  %36 = icmp eq i32 %35, 827752152
  br i1 %36, label %37, label %func_exit

37:                                               ; preds = %if.end48, %func_exit
  ret void

func_exit:                                        ; preds = %if.end48
  call void @detect_breach()
  br label %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output.24(i64 %code) #0 {
entry:
  %r_off = alloca i32, align 4
  %canary = alloca i32
  store i32 1847816950, i32* %canary
  %bp = alloca i8*, align 8
  %bits = alloca i32, align 4
  %code.addr = alloca i64, align 8
  store i64 %code, i64* %code.addr, align 8
  %0 = load i32, i32* @offset, align 4
  store i32 %0, i32* %r_off, align 4
  %1 = load i32, i32* @n_bits, align 4
  store i32 %1, i32* %bits, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %2 = load i64, i64* %code.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else63

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %3, 3
  %4 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %5 = load i32, i32* %r_off, align 4
  %and = and i32 %5, 7
  store i32 %and, i32* %r_off, align 4
  %6 = load i8*, i8** %bp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %r_off, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv, %conv1
  %conv3 = sext i32 %and2 to i64
  %10 = load i64, i64* %code.addr, align 8
  %11 = load i32, i32* %r_off, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %10, %sh_prom
  %12 = load i32, i32* %r_off, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i64
  %and7 = and i64 %shl, %conv6
  %or = or i64 %conv3, %and7
  %conv8 = trunc i64 %or to i8
  %14 = load i8*, i8** %bp, align 8
  store i8 %conv8, i8* %14, align 1
  %15 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %16 = load i32, i32* %r_off, align 4
  %sub = sub nsw i32 8, %16
  %17 = load i32, i32* %bits, align 4
  %sub9 = sub nsw i32 %17, %sub
  store i32 %sub9, i32* %bits, align 4
  %18 = load i32, i32* %r_off, align 4
  %sub10 = sub nsw i32 8, %18
  %19 = load i64, i64* %code.addr, align 8
  %sh_prom11 = zext i32 %sub10 to i64
  %shr12 = ashr i64 %19, %sh_prom11
  store i64 %shr12, i64* %code.addr, align 8
  %20 = load i32, i32* %bits, align 4
  %cmp13 = icmp sge i32 %20, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %21 = load i64, i64* %code.addr, align 8
  %conv16 = trunc i64 %21 to i8
  %22 = load i8*, i8** %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %bp, align 8
  store i8 %conv16, i8* %22, align 1
  %23 = load i64, i64* %code.addr, align 8
  %shr18 = ashr i64 %23, 8
  store i64 %shr18, i64* %code.addr, align 8
  %24 = load i32, i32* %bits, align 4
  %sub19 = sub nsw i32 %24, 8
  store i32 %sub19, i32* %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %25 = load i32, i32* %bits, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %26 = load i64, i64* %code.addr, align 8
  %conv21 = trunc i64 %26 to i8
  %27 = load i8*, i8** %bp, align 8
  store i8 %conv21, i8* %27, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %28 = load i32, i32* @n_bits, align 4
  %29 = load i32, i32* @offset, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* @offset, align 4
  %30 = load i32, i32* @offset, align 4
  %31 = load i32, i32* @n_bits, align 4
  %shl23 = shl i32 %31, 3
  %cmp24 = icmp eq i32 %30, %shl23
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %32 = load i32, i32* @n_bits, align 4
  store i32 %32, i32* %bits, align 4
  %33 = load i32, i32* %bits, align 4
  %conv27 = sext i32 %33 to i64
  %34 = load i64, i64* @bytes_out, align 8
  %add28 = add nsw i64 %34, %conv27
  store i64 %add28, i64* @bytes_out, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then26
  %35 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %36 = load i8, i8* %35, align 1
  %conv30 = sext i8 %36 to i32
  %call = call i32 @putchar(i32 %conv30)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %bits, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %bits, align 4
  %tobool31 = icmp ne i32 %dec, 0
  br i1 %tobool31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* @offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end22
  %38 = load i64, i64* @free_ent, align 8
  %39 = load i64, i64* @maxcode, align 8
  %cmp33 = icmp sgt i64 %38, %39
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %40 = load i32, i32* @clear_flg, align 4
  %cmp35 = icmp sgt i32 %40, 0
  br i1 %cmp35, label %if.then37, label %if.end62

if.then37:                                        ; preds = %lor.lhs.false, %if.end32
  %41 = load i32, i32* @offset, align 4
  %cmp38 = icmp sgt i32 %41, 0
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.then37
  %42 = load i32, i32* @n_bits, align 4
  %conv41 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv41, %struct._IO_FILE* %43)
  %44 = load i32, i32* @n_bits, align 4
  %conv43 = sext i32 %44 to i64
  %cmp44 = icmp ne i64 %call42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  call void @writeerr()
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %45 = load i32, i32* @n_bits, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i64, i64* @bytes_out, align 8
  %add49 = add nsw i64 %46, %conv48
  store i64 %add49, i64* @bytes_out, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  store i32 0, i32* @offset, align 4
  %47 = load i32, i32* @clear_flg, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end50
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end50
  %48 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* @n_bits, align 4
  %49 = load i32, i32* @n_bits, align 4
  %50 = load i32, i32* @maxbits, align 4
  %cmp53 = icmp eq i32 %49, %50
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %51 = load i64, i64* @maxmaxcode, align 8
  store i64 %51, i64* @maxcode, align 8
  br label %if.end60

if.else56:                                        ; preds = %if.else
  %52 = load i32, i32* @n_bits, align 4
  %shl57 = shl i32 1, %52
  %sub58 = sub nsw i32 %shl57, 1
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* @maxcode, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  br label %if.end80

if.else63:                                        ; preds = %entry
  %53 = load i32, i32* @offset, align 4
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.else63
  %54 = load i32, i32* @offset, align 4
  %add67 = add nsw i32 %54, 7
  %div = sdiv i32 %add67, 8
  %conv68 = sext i32 %div to i64
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv68, %struct._IO_FILE* %55)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.else63
  %56 = load i32, i32* @offset, align 4
  %add71 = add nsw i32 %56, 7
  %div72 = sdiv i32 %add71, 8
  %conv73 = sext i32 %div72 to i64
  %57 = load i64, i64* @bytes_out, align 8
  %add74 = add nsw i64 %57, %conv73
  store i64 %add74, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @ferror(%struct._IO_FILE* %59) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  call void @writeerr()
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end62
  %60 = load i32, i32* %canary
  %61 = icmp eq i32 %60, 1847816950
  br i1 %61, label %62, label %func_exit

62:                                               ; preds = %if.end80, %func_exit
  ret void

func_exit:                                        ; preds = %if.end80
  call void @detect_breach()
  br label %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output.25(i64 %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  %canary = alloca i32
  store i32 478899808, i32* %canary
  %bp = alloca i8*, align 8
  %bits = alloca i32, align 4
  %r_off = alloca i32, align 4
  store i64 %code, i64* %code.addr, align 8
  %0 = load i32, i32* @offset, align 4
  store i32 %0, i32* %r_off, align 4
  %1 = load i32, i32* @n_bits, align 4
  store i32 %1, i32* %bits, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %2 = load i64, i64* %code.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else63

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %r_off, align 4
  %shr = ashr i32 %3, 3
  %4 = load i8*, i8** %bp, align 8
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %bp, align 8
  %5 = load i32, i32* %r_off, align 4
  %and = and i32 %5, 7
  store i32 %and, i32* %r_off, align 4
  %6 = load i8*, i8** %bp, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %r_off, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %9 to i32
  %and2 = and i32 %conv, %conv1
  %conv3 = sext i32 %and2 to i64
  %10 = load i64, i64* %code.addr, align 8
  %11 = load i32, i32* %r_off, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %10, %sh_prom
  %12 = load i32, i32* %r_off, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %idxprom4
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %13 to i64
  %and7 = and i64 %shl, %conv6
  %or = or i64 %conv3, %and7
  %conv8 = trunc i64 %or to i8
  %14 = load i8*, i8** %bp, align 8
  store i8 %conv8, i8* %14, align 1
  %15 = load i8*, i8** %bp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %bp, align 8
  %16 = load i32, i32* %r_off, align 4
  %sub = sub nsw i32 8, %16
  %17 = load i32, i32* %bits, align 4
  %sub9 = sub nsw i32 %17, %sub
  store i32 %sub9, i32* %bits, align 4
  %18 = load i32, i32* %r_off, align 4
  %sub10 = sub nsw i32 8, %18
  %19 = load i64, i64* %code.addr, align 8
  %sh_prom11 = zext i32 %sub10 to i64
  %shr12 = ashr i64 %19, %sh_prom11
  store i64 %shr12, i64* %code.addr, align 8
  %20 = load i32, i32* %bits, align 4
  %cmp13 = icmp sge i32 %20, 8
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %21 = load i64, i64* %code.addr, align 8
  %conv16 = trunc i64 %21 to i8
  %22 = load i8*, i8** %bp, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr17, i8** %bp, align 8
  store i8 %conv16, i8* %22, align 1
  %23 = load i64, i64* %code.addr, align 8
  %shr18 = ashr i64 %23, 8
  store i64 %shr18, i64* %code.addr, align 8
  %24 = load i32, i32* %bits, align 4
  %sub19 = sub nsw i32 %24, 8
  store i32 %sub19, i32* %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %25 = load i32, i32* %bits, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %26 = load i64, i64* %code.addr, align 8
  %conv21 = trunc i64 %26 to i8
  %27 = load i8*, i8** %bp, align 8
  store i8 %conv21, i8* %27, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end
  %28 = load i32, i32* @n_bits, align 4
  %29 = load i32, i32* @offset, align 4
  %add = add nsw i32 %29, %28
  store i32 %add, i32* @offset, align 4
  %30 = load i32, i32* @offset, align 4
  %31 = load i32, i32* @n_bits, align 4
  %shl23 = shl i32 %31, 3
  %cmp24 = icmp eq i32 %30, %shl23
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end22
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %bp, align 8
  %32 = load i32, i32* @n_bits, align 4
  store i32 %32, i32* %bits, align 4
  %33 = load i32, i32* %bits, align 4
  %conv27 = sext i32 %33 to i64
  %34 = load i64, i64* @bytes_out, align 8
  %add28 = add nsw i64 %34, %conv27
  store i64 %add28, i64* @bytes_out, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then26
  %35 = load i8*, i8** %bp, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr29, i8** %bp, align 8
  %36 = load i8, i8* %35, align 1
  %conv30 = sext i8 %36 to i32
  %call = call i32 @putchar(i32 %conv30)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %bits, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %bits, align 4
  %tobool31 = icmp ne i32 %dec, 0
  br i1 %tobool31, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* @offset, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end22
  %38 = load i64, i64* @free_ent, align 8
  %39 = load i64, i64* @maxcode, align 8
  %cmp33 = icmp sgt i64 %38, %39
  br i1 %cmp33, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end32
  %40 = load i32, i32* @clear_flg, align 4
  %cmp35 = icmp sgt i32 %40, 0
  br i1 %cmp35, label %if.then37, label %if.end62

if.then37:                                        ; preds = %lor.lhs.false, %if.end32
  %41 = load i32, i32* @offset, align 4
  %cmp38 = icmp sgt i32 %41, 0
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.then37
  %42 = load i32, i32* @n_bits, align 4
  %conv41 = sext i32 %42 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv41, %struct._IO_FILE* %43)
  %44 = load i32, i32* @n_bits, align 4
  %conv43 = sext i32 %44 to i64
  %cmp44 = icmp ne i64 %call42, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  call void @writeerr()
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %45 = load i32, i32* @n_bits, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i64, i64* @bytes_out, align 8
  %add49 = add nsw i64 %46, %conv48
  store i64 %add49, i64* @bytes_out, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then37
  store i32 0, i32* @offset, align 4
  %47 = load i32, i32* @clear_flg, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end50
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end50
  %48 = load i32, i32* @n_bits, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* @n_bits, align 4
  %49 = load i32, i32* @n_bits, align 4
  %50 = load i32, i32* @maxbits, align 4
  %cmp53 = icmp eq i32 %49, %50
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  %51 = load i64, i64* @maxmaxcode, align 8
  store i64 %51, i64* @maxcode, align 8
  br label %if.end60

if.else56:                                        ; preds = %if.else
  %52 = load i32, i32* @n_bits, align 4
  %shl57 = shl i32 1, %52
  %sub58 = sub nsw i32 %shl57, 1
  %conv59 = sext i32 %sub58 to i64
  store i64 %conv59, i64* @maxcode, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  br label %if.end80

if.else63:                                        ; preds = %entry
  %53 = load i32, i32* @offset, align 4
  %cmp64 = icmp sgt i32 %53, 0
  br i1 %cmp64, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.else63
  %54 = load i32, i32* @offset, align 4
  %add67 = add nsw i32 %54, 7
  %div = sdiv i32 %add67, 8
  %conv68 = sext i32 %div to i64
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i64 1, i64 %conv68, %struct._IO_FILE* %55)
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.else63
  %56 = load i32, i32* @offset, align 4
  %add71 = add nsw i32 %56, 7
  %div72 = sdiv i32 %add71, 8
  %conv73 = sext i32 %div72 to i64
  %57 = load i64, i64* @bytes_out, align 8
  %add74 = add nsw i64 %57, %conv73
  store i64 %add74, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @ferror(%struct._IO_FILE* %59) #5
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end70
  call void @writeerr()
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end62
  %60 = load i32, i32* %canary
  %61 = icmp eq i32 %60, 478899808
  br i1 %61, label %62, label %func_exit

62:                                               ; preds = %if.end80, %func_exit
  ret void

func_exit:                                        ; preds = %if.end80
  call void @detect_breach()
  br label %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystat.26(i8* %ifname, i8* %ofname) #0 {
entry:
  %canary = alloca i32
  store i32 1688498572, i32* %canary
  %ofname.addr = alloca i8*, align 8
  %ifname.addr = alloca i8*, align 8
  %timep = alloca %struct.utimbuf, align 8
  %mode = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  store i8* %ifname, i8** %ifname.addr, align 8
  store i8* %ofname, i8** %ofname.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fclose(%struct._IO_FILE* %0)
  %1 = load i8*, i8** %ifname.addr, align 8
  %call1 = call i32 @stat(i8* %1, %struct.stat* %statbuf) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %2)
  br label %if.end48

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %3 = load i32, i32* %st_mode, align 8
  %and = and i32 %3, 61440
  %cmp = icmp ne i32 %and, 32768
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @quiet, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %ifname.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* @exit_stat, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %8 = load i64, i64* %st_nlink, align 8
  %cmp8 = icmp ugt i64 %8, 1
  br i1 %cmp8, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %9 = load i32, i32* @quiet, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %ifname.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %11)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %st_nlink14 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 2
  %13 = load i64, i64* %st_nlink14, align 8
  %sub = sub i64 %13, 1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i64 %sub)
  store i32 1, i32* @exit_stat, align 4
  br label %if.end43

if.else16:                                        ; preds = %if.else
  %14 = load i32, i32* @exit_stat, align 4
  %cmp17 = icmp eq i32 %14, 2
  br i1 %cmp17, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else16
  %15 = load i32, i32* @force, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.else24, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i32, i32* @quiet, align 4
  %tobool20 = icmp ne i32 %16, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  br label %if.end42

if.else24:                                        ; preds = %land.lhs.true, %if.else16
  store i32 0, i32* @exit_stat, align 4
  %st_mode25 = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %18 = load i32, i32* %st_mode25, align 8
  %and26 = and i32 %18, 4095
  store i32 %and26, i32* %mode, align 4
  %19 = load i8*, i8** %ofname.addr, align 8
  %20 = load i32, i32* %mode, align 4
  %call27 = call i32 @chmod(i8* %19, i32 %20) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else24
  %21 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %21)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else24
  %22 = load i8*, i8** %ofname.addr, align 8
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 4
  %23 = load i32, i32* %st_uid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 5
  %24 = load i32, i32* %st_gid, align 8
  %call31 = call i32 @chown(i8* %22, i32 %23, i32 %24) #5
  %st_atim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 11
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_atim, i32 0, i32 0
  %25 = load i64, i64* %tv_sec, align 8
  %actime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 0
  store i64 %25, i64* %actime, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 12
  %tv_sec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %26 = load i64, i64* %tv_sec32, align 8
  %modtime = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %timep, i32 0, i32 1
  store i64 %26, i64* %modtime, align 8
  %27 = load i8*, i8** %ofname.addr, align 8
  %call33 = call i32 @utime(i8* %27, %struct.utimbuf* %timep) #5
  %28 = load i8*, i8** %ifname.addr, align 8
  %call34 = call i32 @unlink(i8* %28) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %29 = load i8*, i8** %ifname.addr, align 8
  call void @perror(i8* %29)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  %30 = load i32, i32* @quiet, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.end37
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** %ofname.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %32)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end37
  br label %if.end48

if.end42:                                         ; preds = %if.end23
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end13
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end6
  %33 = load i8*, i8** %ofname.addr, align 8
  %call45 = call i32 @unlink(i8* %33) #5
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  %34 = load i8*, i8** %ofname.addr, align 8
  call void @perror(i8* %34)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44, %if.end41, %if.then
  %35 = load i32, i32* %canary
  %36 = icmp eq i32 %35, 1688498572
  br i1 %36, label %37, label %func_exit

37:                                               ; preds = %if.end48, %func_exit
  ret void

func_exit:                                        ; preds = %if.end48
  call void @detect_breach()
  br label %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_hash.27(i64 %hsize) #0 {
entry:
  %htab_p = alloca i64*, align 8
  %i = alloca i64, align 8
  %m1 = alloca i64, align 8
  %canary = alloca i32
  store i32 1796162221, i32* %canary
  %hsize.addr = alloca i64, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %0 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([69001 x i64], [69001 x i64]* @htab, i64 0, i64 0), i64 %0
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %1 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %1, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i64, i64* %m1, align 8
  %3 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %3, i64 -16
  store i64 %2, i64* %add.ptr1, align 8
  %4 = load i64, i64* %m1, align 8
  %5 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -15
  store i64 %4, i64* %add.ptr2, align 8
  %6 = load i64, i64* %m1, align 8
  %7 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %7, i64 -14
  store i64 %6, i64* %add.ptr3, align 8
  %8 = load i64, i64* %m1, align 8
  %9 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %9, i64 -13
  store i64 %8, i64* %add.ptr4, align 8
  %10 = load i64, i64* %m1, align 8
  %11 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 -12
  store i64 %10, i64* %add.ptr5, align 8
  %12 = load i64, i64* %m1, align 8
  %13 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %13, i64 -11
  store i64 %12, i64* %add.ptr6, align 8
  %14 = load i64, i64* %m1, align 8
  %15 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %15, i64 -10
  store i64 %14, i64* %add.ptr7, align 8
  %16 = load i64, i64* %m1, align 8
  %17 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %17, i64 -9
  store i64 %16, i64* %add.ptr8, align 8
  %18 = load i64, i64* %m1, align 8
  %19 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %19, i64 -8
  store i64 %18, i64* %add.ptr9, align 8
  %20 = load i64, i64* %m1, align 8
  %21 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %21, i64 -7
  store i64 %20, i64* %add.ptr10, align 8
  %22 = load i64, i64* %m1, align 8
  %23 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %23, i64 -6
  store i64 %22, i64* %add.ptr11, align 8
  %24 = load i64, i64* %m1, align 8
  %25 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %25, i64 -5
  store i64 %24, i64* %add.ptr12, align 8
  %26 = load i64, i64* %m1, align 8
  %27 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %27, i64 -4
  store i64 %26, i64* %add.ptr13, align 8
  %28 = load i64, i64* %m1, align 8
  %29 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 -3
  store i64 %28, i64* %add.ptr14, align 8
  %30 = load i64, i64* %m1, align 8
  %31 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %31, i64 -2
  store i64 %30, i64* %add.ptr15, align 8
  %32 = load i64, i64* %m1, align 8
  %33 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64 %32, i64* %add.ptr16, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %34, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %35, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %i, align 8
  %add = add nsw i64 %36, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %37, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %m1, align 8
  %39 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %38, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %i, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 1796162221
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %for.end, %func_exit
  ret void

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prratio.28(%struct._IO_FILE* %stream, i64 %num, i64 %den) #0 {
entry:
  %den.addr = alloca i64, align 8
  %canary = alloca i32
  store i32 2096470145, i32* %canary
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca i64, align 8
  %q = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  store i64 %den, i64* %den.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %cmp = icmp sgt i64 %0, 214748
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %num.addr, align 8
  %2 = load i64, i64* %den.addr, align 8
  %div = sdiv i64 %2, 10000
  %div1 = sdiv i64 %1, %div
  %conv = trunc i64 %div1 to i32
  store i32 %conv, i32* %q, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %num.addr, align 8
  %mul = mul nsw i64 10000, %3
  %4 = load i64, i64* %den.addr, align 8
  %div2 = sdiv i64 %mul, %4
  %conv3 = trunc i64 %div2 to i32
  store i32 %conv3, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %q, align 4
  %cmp4 = icmp slt i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %6)
  %7 = load i32, i32* %q, align 4
  %sub = sub nsw i32 0, %7
  store i32 %sub, i32* %q, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i32, i32* %q, align 4
  %div8 = sdiv i32 %9, 100
  %10 = load i32, i32* %q, align 4
  %rem = srem i32 %10, 100
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %div8, i32 %rem)
  %11 = load i32, i32* %canary
  %12 = icmp eq i32 %11, 2096470145
  br i1 %12, label %13, label %func_exit

13:                                               ; preds = %if.end7, %func_exit
  ret void

func_exit:                                        ; preds = %if.end7
  call void @detect_breach()
  br label %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress.29() #0 {
entry:
  %hsize_reg = alloca i64, align 8
  %hshift = alloca i32, align 4
  %i = alloca i64, align 8
  %disp = alloca i32, align 4
  %c95 = alloca i32, align 4
  %c = alloca i32, align 4
  %canary = alloca i32
  store i32 1816453256, i32* %canary
  %ent = alloca i64, align 8
  %fcode = alloca i64, align 8
  store i64 0, i64* %i, align 8
  %0 = load i32, i32* @nomagic, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 0), align 1
  %conv = zext i8 %1 to i32
  %call = call i32 @putchar(i32 %conv)
  %2 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @magic_header, i64 0, i64 1), align 1
  %conv1 = zext i8 %2 to i32
  %call2 = call i32 @putchar(i32 %conv1)
  %3 = load i32, i32* @maxbits, align 4
  %4 = load i32, i32* @block_compress, align 4
  %or = or i32 %3, %4
  %conv3 = trunc i32 %or to i8
  %conv4 = sext i8 %conv3 to i32
  %call5 = call i32 @putchar(i32 %conv4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @writeerr()
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %6 = load i32, i32* @block_compress, align 4
  %tobool9 = icmp ne i32 %6, 0
  %7 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, i32 257, i32 256
  %conv10 = sext i32 %cond to i64
  store i64 %conv10, i64* @free_ent, align 8
  %call11 = call i32 @getchar()
  %conv12 = sext i32 %call11 to i64
  store i64 %conv12, i64* %ent, align 8
  store i32 0, i32* %hshift, align 4
  %8 = load i64, i64* @hsize, align 8
  store i64 %8, i64* %fcode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i64, i64* %fcode, align 8
  %cmp13 = icmp slt i64 %9, 65536
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %hshift, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %hshift, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %fcode, align 8
  %mul = mul nsw i64 %11, 2
  store i64 %mul, i64* %fcode, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %hshift, align 4
  %sub = sub nsw i32 8, %12
  store i32 %sub, i32* %hshift, align 4
  %13 = load i64, i64* @hsize, align 8
  store i64 %13, i64* %hsize_reg, align 8
  %14 = load i64, i64* %hsize_reg, align 8
  call void @cl_hash(i64 %14)
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.then99, %if.then87, %if.then68, %if.then49, %if.then24, %for.end
  %call15 = call i32 @getchar()
  store i32 %call15, i32* %c, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* @in_count, align 8
  %inc18 = add nsw i64 %15, 1
  store i64 %inc18, i64* @in_count, align 8
  %16 = load i32, i32* %c, align 4
  %conv19 = sext i32 %16 to i64
  %17 = load i32, i32* @maxbits, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %conv19, %sh_prom
  %18 = load i64, i64* %ent, align 8
  %add = add nsw i64 %shl, %18
  store i64 %add, i64* %fcode, align 8
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %hshift, align 4
  %shl20 = shl i32 %19, %20
  %conv21 = sext i32 %shl20 to i64
  %21 = load i64, i64* %ent, align 8
  %xor = xor i64 %conv21, %21
  store i64 %xor, i64* %i, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %22
  %23 = load i64, i64* %arrayidx, align 8
  %24 = load i64, i64* %fcode, align 8
  %cmp22 = icmp eq i64 %23, %24
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.body
  %25 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %25
  %26 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %26 to i64
  store i64 %conv26, i64* %ent, align 8
  br label %while.cond

if.else:                                          ; preds = %while.body
  %27 = load i64, i64* %i, align 8
  %arrayidx27 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %27
  %28 = load i64, i64* %arrayidx27, align 8
  %cmp28 = icmp slt i64 %28, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.else
  br label %nomatch

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  %29 = load i64, i64* %hsize_reg, align 8
  %30 = load i64, i64* %i, align 8
  %sub33 = sub nsw i64 %29, %30
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, i32* %disp, align 4
  %31 = load i64, i64* %i, align 8
  %cmp35 = icmp eq i64 %31, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i32 1, i32* %disp, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end32
  %32 = load i32, i32* %disp, align 4
  %conv39 = sext i32 %32 to i64
  %33 = load i64, i64* %i, align 8
  %sub40 = sub nsw i64 %33, %conv39
  store i64 %sub40, i64* %i, align 8
  %cmp41 = icmp slt i64 %sub40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end38
  %34 = load i64, i64* %hsize_reg, align 8
  %35 = load i64, i64* %i, align 8
  %add44 = add nsw i64 %35, %34
  store i64 %add44, i64* %i, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38
  %36 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %36
  %37 = load i64, i64* %arrayidx46, align 8
  %38 = load i64, i64* %fcode, align 8
  %cmp47 = icmp eq i64 %37, %38
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %39 = load i64, i64* %i, align 8
  %arrayidx50 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %39
  %40 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %40 to i64
  store i64 %conv51, i64* %ent, align 8
  br label %while.cond

if.end52:                                         ; preds = %if.end45
  %41 = load i64, i64* %i, align 8
  %arrayidx53 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %41
  %42 = load i64, i64* %arrayidx53, align 8
  %cmp54 = icmp sle i64 %42, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end52
  br label %nomatch

if.end57:                                         ; preds = %if.end52
  %43 = load i32, i32* %disp, align 4
  %conv58 = sext i32 %43 to i64
  %44 = load i64, i64* %i, align 8
  %sub59 = sub nsw i64 %44, %conv58
  store i64 %sub59, i64* %i, align 8
  %cmp60 = icmp slt i64 %sub59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  %45 = load i64, i64* %hsize_reg, align 8
  %46 = load i64, i64* %i, align 8
  %add63 = add nsw i64 %46, %45
  store i64 %add63, i64* %i, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end57
  %47 = load i64, i64* %i, align 8
  %arrayidx65 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %47
  %48 = load i64, i64* %arrayidx65, align 8
  %49 = load i64, i64* %fcode, align 8
  %cmp66 = icmp eq i64 %48, %49
  br i1 %cmp66, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end64
  %50 = load i64, i64* %i, align 8
  %arrayidx69 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %50
  %51 = load i16, i16* %arrayidx69, align 2
  %conv70 = zext i16 %51 to i64
  store i64 %conv70, i64* %ent, align 8
  br label %while.cond

if.end71:                                         ; preds = %if.end64
  %52 = load i64, i64* %i, align 8
  %arrayidx72 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %52
  %53 = load i64, i64* %arrayidx72, align 8
  %cmp73 = icmp sle i64 %53, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  br label %nomatch

if.end76:                                         ; preds = %if.end71
  %54 = load i32, i32* %disp, align 4
  %conv77 = sext i32 %54 to i64
  %55 = load i64, i64* %i, align 8
  %sub78 = sub nsw i64 %55, %conv77
  store i64 %sub78, i64* %i, align 8
  %cmp79 = icmp slt i64 %sub78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end76
  %56 = load i64, i64* %hsize_reg, align 8
  %57 = load i64, i64* %i, align 8
  %add82 = add nsw i64 %57, %56
  store i64 %add82, i64* %i, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76
  %58 = load i64, i64* %i, align 8
  %arrayidx84 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %58
  %59 = load i64, i64* %arrayidx84, align 8
  %60 = load i64, i64* %fcode, align 8
  %cmp85 = icmp eq i64 %59, %60
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end83
  %61 = load i64, i64* %i, align 8
  %arrayidx88 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %61
  %62 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %62 to i64
  store i64 %conv89, i64* %ent, align 8
  br label %while.cond

if.end90:                                         ; preds = %if.end83
  %63 = load i64, i64* %i, align 8
  %arrayidx91 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %63
  %64 = load i64, i64* %arrayidx91, align 8
  %cmp92 = icmp sgt i64 %64, 0
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.end90
  store i32 0, i32* %c95, align 4
  %65 = load i64, i64* %fcode, align 8
  %66 = load i32, i32* %disp, align 4
  %67 = load i64, i64* %hsize_reg, align 8
  %conv96 = trunc i64 %67 to i32
  %call97 = call i32 @scott_hack(i64* %i, i64 %65, i32 %66, i32 %conv96, i64* %ent)
  store i32 %call97, i32* %c95, align 4
  %68 = load i32, i32* %c95, align 4
  %tobool98 = icmp ne i32 %68, 0
  br i1 %tobool98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then94
  br label %while.cond

if.end100:                                        ; preds = %if.then94
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end90
  br label %nomatch

nomatch:                                          ; preds = %if.end101, %if.then75, %if.then56, %if.then30
  %69 = load i64, i64* %ent, align 8
  call void @output(i64 %69)
  %70 = load i64, i64* @out_count, align 8
  %inc102 = add nsw i64 %70, 1
  store i64 %inc102, i64* @out_count, align 8
  %71 = load i32, i32* %c, align 4
  %conv103 = sext i32 %71 to i64
  store i64 %conv103, i64* %ent, align 8
  %72 = load i64, i64* @free_ent, align 8
  %73 = load i64, i64* @maxmaxcode, align 8
  %cmp104 = icmp slt i64 %72, %73
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %nomatch
  %74 = load i64, i64* @free_ent, align 8
  %inc107 = add nsw i64 %74, 1
  store i64 %inc107, i64* @free_ent, align 8
  %conv108 = trunc i64 %74 to i16
  %75 = load i64, i64* %i, align 8
  %arrayidx109 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %75
  store i16 %conv108, i16* %arrayidx109, align 2
  %76 = load i64, i64* %fcode, align 8
  %77 = load i64, i64* %i, align 8
  %arrayidx110 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %77
  store i64 %76, i64* %arrayidx110, align 8
  br label %if.end117

if.else111:                                       ; preds = %nomatch
  %78 = load i64, i64* @in_count, align 8
  %79 = load i64, i64* @checkpoint, align 8
  %cmp112 = icmp sge i64 %78, %79
  br i1 %cmp112, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %if.else111
  %80 = load i32, i32* @block_compress, align 4
  %tobool114 = icmp ne i32 %80, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %land.lhs.true
  call void @cl_block()
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %land.lhs.true, %if.else111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then106
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load i64, i64* %ent, align 8
  call void @output(i64 %81)
  %82 = load i64, i64* @out_count, align 8
  %inc118 = add nsw i64 %82, 1
  store i64 %inc118, i64* @out_count, align 8
  call void @output(i64 -1)
  %83 = load i32, i32* @zcat_flg, align 4
  %cmp119 = icmp eq i32 %83, 0
  br i1 %cmp119, label %land.lhs.true121, label %if.end126

land.lhs.true121:                                 ; preds = %while.end
  %84 = load i32, i32* @quiet, align 4
  %tobool122 = icmp ne i32 %84, 0
  br i1 %tobool122, label %if.end126, label %if.then123

if.then123:                                       ; preds = %land.lhs.true121
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load i64, i64* @in_count, align 8
  %88 = load i64, i64* @bytes_out, align 8
  %sub125 = sub nsw i64 %87, %88
  %89 = load i64, i64* @in_count, align 8
  call void @prratio(%struct._IO_FILE* %86, i64 %sub125, i64 %89)
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %land.lhs.true121, %while.end
  %90 = load i64, i64* @bytes_out, align 8
  %91 = load i64, i64* @in_count, align 8
  %cmp127 = icmp sgt i64 %90, %91
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  store i32 2, i32* @exit_stat, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end126
  %92 = load i32, i32* %canary
  %93 = icmp eq i32 %92, 1816453256
  br i1 %93, label %94, label %func_exit

94:                                               ; preds = %if.end130, %func_exit
  ret void

func_exit:                                        ; preds = %if.end130
  call void @detect_breach()
  br label %94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_hash.30(i64 %hsize) #0 {
entry:
  %htab_p = alloca i64*, align 8
  %m1 = alloca i64, align 8
  %hsize.addr = alloca i64, align 8
  %canary = alloca i32
  store i32 297767107, i32* %canary
  %i = alloca i64, align 8
  store i64 %hsize, i64* %hsize.addr, align 8
  %0 = load i64, i64* %hsize.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* getelementptr inbounds ([69001 x i64], [69001 x i64]* @htab, i64 0, i64 0), i64 %0
  store i64* %add.ptr, i64** %htab_p, align 8
  store i64 -1, i64* %m1, align 8
  %1 = load i64, i64* %hsize.addr, align 8
  %sub = sub nsw i64 %1, 16
  store i64 %sub, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i64, i64* %m1, align 8
  %3 = load i64*, i64** %htab_p, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %3, i64 -16
  store i64 %2, i64* %add.ptr1, align 8
  %4 = load i64, i64* %m1, align 8
  %5 = load i64*, i64** %htab_p, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %5, i64 -15
  store i64 %4, i64* %add.ptr2, align 8
  %6 = load i64, i64* %m1, align 8
  %7 = load i64*, i64** %htab_p, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %7, i64 -14
  store i64 %6, i64* %add.ptr3, align 8
  %8 = load i64, i64* %m1, align 8
  %9 = load i64*, i64** %htab_p, align 8
  %add.ptr4 = getelementptr inbounds i64, i64* %9, i64 -13
  store i64 %8, i64* %add.ptr4, align 8
  %10 = load i64, i64* %m1, align 8
  %11 = load i64*, i64** %htab_p, align 8
  %add.ptr5 = getelementptr inbounds i64, i64* %11, i64 -12
  store i64 %10, i64* %add.ptr5, align 8
  %12 = load i64, i64* %m1, align 8
  %13 = load i64*, i64** %htab_p, align 8
  %add.ptr6 = getelementptr inbounds i64, i64* %13, i64 -11
  store i64 %12, i64* %add.ptr6, align 8
  %14 = load i64, i64* %m1, align 8
  %15 = load i64*, i64** %htab_p, align 8
  %add.ptr7 = getelementptr inbounds i64, i64* %15, i64 -10
  store i64 %14, i64* %add.ptr7, align 8
  %16 = load i64, i64* %m1, align 8
  %17 = load i64*, i64** %htab_p, align 8
  %add.ptr8 = getelementptr inbounds i64, i64* %17, i64 -9
  store i64 %16, i64* %add.ptr8, align 8
  %18 = load i64, i64* %m1, align 8
  %19 = load i64*, i64** %htab_p, align 8
  %add.ptr9 = getelementptr inbounds i64, i64* %19, i64 -8
  store i64 %18, i64* %add.ptr9, align 8
  %20 = load i64, i64* %m1, align 8
  %21 = load i64*, i64** %htab_p, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %21, i64 -7
  store i64 %20, i64* %add.ptr10, align 8
  %22 = load i64, i64* %m1, align 8
  %23 = load i64*, i64** %htab_p, align 8
  %add.ptr11 = getelementptr inbounds i64, i64* %23, i64 -6
  store i64 %22, i64* %add.ptr11, align 8
  %24 = load i64, i64* %m1, align 8
  %25 = load i64*, i64** %htab_p, align 8
  %add.ptr12 = getelementptr inbounds i64, i64* %25, i64 -5
  store i64 %24, i64* %add.ptr12, align 8
  %26 = load i64, i64* %m1, align 8
  %27 = load i64*, i64** %htab_p, align 8
  %add.ptr13 = getelementptr inbounds i64, i64* %27, i64 -4
  store i64 %26, i64* %add.ptr13, align 8
  %28 = load i64, i64* %m1, align 8
  %29 = load i64*, i64** %htab_p, align 8
  %add.ptr14 = getelementptr inbounds i64, i64* %29, i64 -3
  store i64 %28, i64* %add.ptr14, align 8
  %30 = load i64, i64* %m1, align 8
  %31 = load i64*, i64** %htab_p, align 8
  %add.ptr15 = getelementptr inbounds i64, i64* %31, i64 -2
  store i64 %30, i64* %add.ptr15, align 8
  %32 = load i64, i64* %m1, align 8
  %33 = load i64*, i64** %htab_p, align 8
  %add.ptr16 = getelementptr inbounds i64, i64* %33, i64 -1
  store i64 %32, i64* %add.ptr16, align 8
  %34 = load i64*, i64** %htab_p, align 8
  %add.ptr17 = getelementptr inbounds i64, i64* %34, i64 -16
  store i64* %add.ptr17, i64** %htab_p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i64, i64* %i, align 8
  %sub18 = sub nsw i64 %35, 16
  store i64 %sub18, i64* %i, align 8
  %cmp = icmp sge i64 %sub18, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* %i, align 8
  %add = add nsw i64 %36, 16
  store i64 %add, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %37 = load i64, i64* %i, align 8
  %cmp19 = icmp sgt i64 %37, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i64, i64* %m1, align 8
  %39 = load i64*, i64** %htab_p, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %39, i32 -1
  store i64* %incdec.ptr, i64** %htab_p, align 8
  store i64 %38, i64* %incdec.ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i64, i64* %i, align 8
  %dec = add nsw i64 %40, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %canary
  %42 = icmp eq i32 %41, 297767107
  br i1 %42, label %43, label %func_exit

43:                                               ; preds = %for.end, %func_exit
  ret void

func_exit:                                        ; preds = %for.end
  call void @detect_breach()
  br label %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scott_hack.31(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent) #0 {
entry:
  %hsize_reg.addr = alloca i32, align 4
  %i.addr = alloca i64*, align 8
  %fcode.addr = alloca i64, align 8
  %retval = alloca i32, align 4
  %canary = alloca i32
  store i32 1307435323, i32* %canary
  %ent.addr = alloca i64*, align 8
  %disp.addr = alloca i32, align 4
  store i64* %i, i64** %i.addr, align 8
  store i64 %fcode, i64* %fcode.addr, align 8
  store i32 %disp, i32* %disp.addr, align 4
  store i32 %hsize_reg, i32* %hsize_reg.addr, align 4
  store i64* %ent, i64** %ent.addr, align 8
  br label %probeSH

probeSH:                                          ; preds = %if.then12, %entry
  %0 = load i32, i32* %disp.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %i.addr, align 8
  %2 = load i64, i64* %1, align 8
  %sub = sub nsw i64 %2, %conv
  store i64 %sub, i64* %1, align 8
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %probeSH
  %3 = load i32, i32* %hsize_reg.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64*, i64** %i.addr, align 8
  %5 = load i64, i64* %4, align 8
  %add = add nsw i64 %5, %conv2
  store i64 %add, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %probeSH
  %6 = load i64*, i64** %i.addr, align 8
  %7 = load i64, i64* %6, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %fcode.addr, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load i64*, i64** %i.addr, align 8
  %11 = load i64, i64* %10, align 8
  %arrayidx6 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %11
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %12 to i64
  %13 = load i64*, i64** %ent.addr, align 8
  store i64 %conv7, i64* %13, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %14 = load i64*, i64** %i.addr, align 8
  %15 = load i64, i64* %14, align 8
  %arrayidx9 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp sgt i64 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %probeSH

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then5
  %17 = load i32, i32* %retval, align 4
  %18 = load i32, i32* %canary
  %19 = icmp eq i32 %18, 1307435323
  br i1 %19, label %20, label %func_exit

20:                                               ; preds = %return, %func_exit
  ret i32 %17

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scott_hack.32(i64* %i, i64 %fcode, i32 %disp, i32 %hsize_reg, i64* %ent) #0 {
entry:
  %canary = alloca i32
  store i32 851033829, i32* %canary
  %ent.addr = alloca i64*, align 8
  %fcode.addr = alloca i64, align 8
  %retval = alloca i32, align 4
  %hsize_reg.addr = alloca i32, align 4
  %disp.addr = alloca i32, align 4
  %i.addr = alloca i64*, align 8
  store i64* %i, i64** %i.addr, align 8
  store i64 %fcode, i64* %fcode.addr, align 8
  store i32 %disp, i32* %disp.addr, align 4
  store i32 %hsize_reg, i32* %hsize_reg.addr, align 4
  store i64* %ent, i64** %ent.addr, align 8
  br label %probeSH

probeSH:                                          ; preds = %if.then12, %entry
  %0 = load i32, i32* %disp.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64*, i64** %i.addr, align 8
  %2 = load i64, i64* %1, align 8
  %sub = sub nsw i64 %2, %conv
  store i64 %sub, i64* %1, align 8
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %probeSH
  %3 = load i32, i32* %hsize_reg.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64*, i64** %i.addr, align 8
  %5 = load i64, i64* %4, align 8
  %add = add nsw i64 %5, %conv2
  store i64 %add, i64* %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %probeSH
  %6 = load i64*, i64** %i.addr, align 8
  %7 = load i64, i64* %6, align 8
  %arrayidx = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %fcode.addr, align 8
  %cmp3 = icmp eq i64 %8, %9
  br i1 %cmp3, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load i64*, i64** %i.addr, align 8
  %11 = load i64, i64* %10, align 8
  %arrayidx6 = getelementptr inbounds [69001 x i16], [69001 x i16]* @codetab, i64 0, i64 %11
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %12 to i64
  %13 = load i64*, i64** %ent.addr, align 8
  store i64 %conv7, i64* %13, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %14 = load i64*, i64** %i.addr, align 8
  %15 = load i64, i64* %14, align 8
  %arrayidx9 = getelementptr inbounds [69001 x i64], [69001 x i64]* @htab, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp sgt i64 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %probeSH

if.end13:                                         ; preds = %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then5
  %17 = load i32, i32* %retval, align 4
  %18 = load i32, i32* %canary
  %19 = icmp eq i32 %18, 851033829
  br i1 %19, label %20, label %func_exit

20:                                               ; preds = %return, %func_exit
  ret i32 %17

func_exit:                                        ; preds = %return
  call void @detect_breach()
  br label %20
}

declare void @detect_breach()

declare i32 @get_urand()

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"}
