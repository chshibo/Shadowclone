; ModuleID = 'pbla.c.rand.16R3.bc'
source_filename = "pbla.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
rand_bb:
  %0 = call i32 @get_urand()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %func_primal_iminus.1, label %ctrl0

func_primal_iminus.1:                             ; preds = %rand_bb
  %2 = call %struct.node* @primal_iminus.1(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %2

func_primal_iminus.2:                             ; preds = %ctrl0
  %3 = call %struct.node* @primal_iminus.2(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %3

func_primal_iminus.3:                             ; preds = %ctrl1
  %4 = call %struct.node* @primal_iminus.3(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %4

func_primal_iminus.4:                             ; preds = %ctrl2
  %5 = call %struct.node* @primal_iminus.4(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %5

func_primal_iminus.5:                             ; preds = %ctrl3
  %6 = call %struct.node* @primal_iminus.5(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %6

func_primal_iminus.6:                             ; preds = %ctrl4
  %7 = call %struct.node* @primal_iminus.6(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %7

func_primal_iminus.7:                             ; preds = %ctrl5
  %8 = call %struct.node* @primal_iminus.7(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %8

func_primal_iminus.8:                             ; preds = %ctrl6
  %9 = call %struct.node* @primal_iminus.8(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %9

func_primal_iminus.9:                             ; preds = %ctrl7
  %10 = call %struct.node* @primal_iminus.9(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %10

func_primal_iminus.10:                            ; preds = %ctrl8
  %11 = call %struct.node* @primal_iminus.10(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %11

func_primal_iminus.11:                            ; preds = %ctrl9
  %12 = call %struct.node* @primal_iminus.11(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %12

func_primal_iminus.12:                            ; preds = %ctrl10
  %13 = call %struct.node* @primal_iminus.12(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %13

func_primal_iminus.13:                            ; preds = %ctrl11
  %14 = call %struct.node* @primal_iminus.13(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %14

func_primal_iminus.14:                            ; preds = %ctrl12
  %15 = call %struct.node* @primal_iminus.14(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %15

func_primal_iminus.15:                            ; preds = %ctrl13
  %16 = call %struct.node* @primal_iminus.15(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %16

func_primal_iminus.16:                            ; preds = %ctrl13
  %17 = call %struct.node* @primal_iminus.16(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w)
  ret %struct.node* %17

ctrl0:                                            ; preds = %rand_bb
  %18 = icmp eq i32 %0, 1
  br i1 %18, label %func_primal_iminus.2, label %ctrl1

ctrl1:                                            ; preds = %ctrl0
  %19 = icmp eq i32 %0, 2
  br i1 %19, label %func_primal_iminus.3, label %ctrl2

ctrl2:                                            ; preds = %ctrl1
  %20 = icmp eq i32 %0, 3
  br i1 %20, label %func_primal_iminus.4, label %ctrl3

ctrl3:                                            ; preds = %ctrl2
  %21 = icmp eq i32 %0, 4
  br i1 %21, label %func_primal_iminus.5, label %ctrl4

ctrl4:                                            ; preds = %ctrl3
  %22 = icmp eq i32 %0, 5
  br i1 %22, label %func_primal_iminus.6, label %ctrl5

ctrl5:                                            ; preds = %ctrl4
  %23 = icmp eq i32 %0, 6
  br i1 %23, label %func_primal_iminus.7, label %ctrl6

ctrl6:                                            ; preds = %ctrl5
  %24 = icmp eq i32 %0, 7
  br i1 %24, label %func_primal_iminus.8, label %ctrl7

ctrl7:                                            ; preds = %ctrl6
  %25 = icmp eq i32 %0, 8
  br i1 %25, label %func_primal_iminus.9, label %ctrl8

ctrl8:                                            ; preds = %ctrl7
  %26 = icmp eq i32 %0, 9
  br i1 %26, label %func_primal_iminus.10, label %ctrl9

ctrl9:                                            ; preds = %ctrl8
  %27 = icmp eq i32 %0, 10
  br i1 %27, label %func_primal_iminus.11, label %ctrl10

ctrl10:                                           ; preds = %ctrl9
  %28 = icmp eq i32 %0, 11
  br i1 %28, label %func_primal_iminus.12, label %ctrl11

ctrl11:                                           ; preds = %ctrl10
  %29 = icmp eq i32 %0, 12
  br i1 %29, label %func_primal_iminus.13, label %ctrl12

ctrl12:                                           ; preds = %ctrl11
  %30 = icmp eq i32 %0, 13
  br i1 %30, label %func_primal_iminus.14, label %ctrl13

ctrl13:                                           ; preds = %ctrl12
  %31 = icmp eq i32 %0, 14
  br i1 %31, label %func_primal_iminus.15, label %func_primal_iminus.16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.1(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  %xchange.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 1015341639, i32* %canary
  %iminus = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1015341639
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.2(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %jplus.addr = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %xchange.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  %canary = alloca i32
  store i32 341756774, i32* %canary
  %iplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 341756774
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.3(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %canary = alloca i32
  store i32 827956902, i32* %canary
  %w.addr = alloca %struct.node**, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %iminus = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 827956902
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.4(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %w.addr = alloca %struct.node**, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %iminus = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 1786020668, i32* %canary
  %xchange.addr = alloca i64*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1786020668
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.5(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %delta.addr = alloca i64*, align 8
  %xchange.addr = alloca i64*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 638347141, i32* %canary
  %w.addr = alloca %struct.node**, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 638347141
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.6(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %xchange.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 1780970907, i32* %canary
  %delta.addr = alloca i64*, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1780970907
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.7(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %delta.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  %canary = alloca i32
  store i32 275417241, i32* %canary
  %iminus = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 275417241
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.8(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %canary = alloca i32
  store i32 135192351, i32* %canary
  %w.addr = alloca %struct.node**, align 8
  %delta.addr = alloca i64*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 135192351
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.9(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %iplus.addr = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 666612567, i32* %canary
  %iminus = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 666612567
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.10(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %canary = alloca i32
  store i32 1865867259, i32* %canary
  %delta.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  %xchange.addr = alloca i64*, align 8
  %iminus = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1865867259
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.11(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %xchange.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  %canary = alloca i32
  store i32 549380580, i32* %canary
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %iminus = alloca %struct.node*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 549380580
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.12(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %xchange.addr = alloca i64*, align 8
  %canary = alloca i32
  store i32 1569551800, i32* %canary
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1569551800
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.13(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %jplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 573415719, i32* %canary
  %xchange.addr = alloca i64*, align 8
  %delta.addr = alloca i64*, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 573415719
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.14(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %canary = alloca i32
  store i32 527231158, i32* %canary
  %iplus.addr = alloca %struct.node*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %xchange.addr = alloca i64*, align 8
  %w.addr = alloca %struct.node**, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 527231158
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.15(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %jplus.addr = alloca %struct.node*, align 8
  %iminus = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  %delta.addr = alloca i64*, align 8
  %canary = alloca i32
  store i32 1562059361, i32* %canary
  %iplus.addr = alloca %struct.node*, align 8
  %w.addr = alloca %struct.node**, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 1562059361
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @primal_iminus.16(i64* %delta, i64* %xchange, %struct.node* %iplus, %struct.node* %jplus, %struct.node** %w) #0 {
entry:
  %iminus = alloca %struct.node*, align 8
  %delta.addr = alloca i64*, align 8
  %jplus.addr = alloca %struct.node*, align 8
  %xchange.addr = alloca i64*, align 8
  %iplus.addr = alloca %struct.node*, align 8
  %canary = alloca i32
  store i32 935811721, i32* %canary
  %w.addr = alloca %struct.node**, align 8
  store i64* %delta, i64** %delta.addr, align 8
  store i64* %xchange, i64** %xchange.addr, align 8
  store %struct.node* %iplus, %struct.node** %iplus.addr, align 8
  store %struct.node* %jplus, %struct.node** %jplus.addr, align 8
  store %struct.node** %w, %struct.node*** %w.addr, align 8
  store %struct.node* null, %struct.node** %iminus, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %0 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %1 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %cmp = icmp ne %struct.node* %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %depth = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 11
  %3 = load i64, i64* %depth, align 8
  %4 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 11
  %5 = load i64, i64* %depth1, align 8
  %cmp2 = icmp slt i64 %3, %5
  br i1 %cmp2, label %if.then, label %if.else19

if.then:                                          ; preds = %while.body
  %6 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %orientation = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load i32, i32* %orientation, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %8 = load i64*, i64** %delta.addr, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 10
  %11 = load i64, i64* %flow, align 8
  %cmp4 = icmp sgt i64 %9, %11
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %12, %struct.node** %iminus, align 8
  %13 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 10
  %14 = load i64, i64* %flow6, align 8
  %15 = load i64*, i64** %delta.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end17

if.else:                                          ; preds = %if.then
  %17 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 3
  %18 = load %struct.node*, %struct.node** %pred, align 8
  %pred7 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %19 = load %struct.node*, %struct.node** %pred7, align 8
  %tobool8 = icmp ne %struct.node* %19, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.else
  %20 = load i64*, i64** %delta.addr, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow10 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 10
  %23 = load i64, i64* %flow10, align 8
  %sub = sub nsw i64 1, %23
  %cmp11 = icmp sgt i64 %21, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %24 = load %struct.node*, %struct.node** %iplus.addr, align 8
  store %struct.node* %24, %struct.node** %iminus, align 8
  %25 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %flow13 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 10
  %26 = load i64, i64* %flow13, align 8
  %sub14 = sub nsw i64 1, %26
  %27 = load i64*, i64** %delta.addr, align 8
  store i64 %sub14, i64* %27, align 8
  %28 = load i64*, i64** %xchange.addr, align 8
  store i64 0, i64* %28, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %29 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %pred18 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %30 = load %struct.node*, %struct.node** %pred18, align 8
  store %struct.node* %30, %struct.node** %iplus.addr, align 8
  br label %if.end43

if.else19:                                        ; preds = %while.body
  %31 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %orientation20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load i32, i32* %orientation20, align 8
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.else28, label %if.then22

if.then22:                                        ; preds = %if.else19
  %33 = load i64*, i64** %delta.addr, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow23 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 10
  %36 = load i64, i64* %flow23, align 8
  %cmp24 = icmp sge i64 %34, %36
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then22
  %37 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %37, %struct.node** %iminus, align 8
  %38 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow26 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 10
  %39 = load i64, i64* %flow26, align 8
  %40 = load i64*, i64** %delta.addr, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %41, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end41

if.else28:                                        ; preds = %if.else19
  %42 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred29 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 3
  %43 = load %struct.node*, %struct.node** %pred29, align 8
  %pred30 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 3
  %44 = load %struct.node*, %struct.node** %pred30, align 8
  %tobool31 = icmp ne %struct.node* %44, null
  br i1 %tobool31, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.else28
  %45 = load i64*, i64** %delta.addr, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow33 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 10
  %48 = load i64, i64* %flow33, align 8
  %sub34 = sub nsw i64 1, %48
  %cmp35 = icmp sge i64 %46, %sub34
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  %49 = load %struct.node*, %struct.node** %jplus.addr, align 8
  store %struct.node* %49, %struct.node** %iminus, align 8
  %50 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %flow37 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 10
  %51 = load i64, i64* %flow37, align 8
  %sub38 = sub nsw i64 1, %51
  %52 = load i64*, i64** %delta.addr, align 8
  store i64 %sub38, i64* %52, align 8
  %53 = load i64*, i64** %xchange.addr, align 8
  store i64 1, i64* %53, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else28
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end27
  %54 = load %struct.node*, %struct.node** %jplus.addr, align 8
  %pred42 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %pred42, align 8
  store %struct.node* %55, %struct.node** %jplus.addr, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end17
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %56 = load %struct.node*, %struct.node** %iplus.addr, align 8
  %57 = load %struct.node**, %struct.node*** %w.addr, align 8
  store %struct.node* %56, %struct.node** %57, align 8
  %58 = load %struct.node*, %struct.node** %iminus, align 8
  %59 = load i32, i32* %canary
  %60 = icmp eq i32 %59, 935811721
  br i1 %60, label %61, label %func_exit

61:                                               ; preds = %while.end, %func_exit
  ret %struct.node* %58

func_exit:                                        ; preds = %while.end
  call void @detect_breach()
  br label %61
}

declare void @detect_breach()

declare i32 @get_urand()

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"}
