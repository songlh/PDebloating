; Function Attrs: noinline nounwind optnone
define internal i32 @midiReadGetNextMessage(i8*, i32, %struct.MIDI_MSG*) #0 !dbg !2543 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MIDI_MSG*, align 4
  %8 = alloca %struct.MIDI_FILE_TRACK*, align 4
  %9 = alloca i8*, align 4
  %10 = alloca i8*, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._MIDI_FILE*, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2645, metadata !502), !dbg !2646
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2647, metadata !502), !dbg !2648
  store %struct.MIDI_MSG* %2, %struct.MIDI_MSG** %7, align 4
  call void @llvm.dbg.declare(metadata %struct.MIDI_MSG** %7, metadata !2649, metadata !502), !dbg !2650
  call void @llvm.dbg.declare(metadata %struct.MIDI_FILE_TRACK** %8, metadata !2651, metadata !502), !dbg !2652
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2653, metadata !502), !dbg !2654
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2655, metadata !502), !dbg !2656
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2657, metadata !502), !dbg !2658
  call void @llvm.dbg.declare(metadata %struct._MIDI_FILE** %12, metadata !2659, metadata !502), !dbg !2660
  %14 = load i8*, i8** %5, align 4, !dbg !2660
  %15 = bitcast i8* %14 to %struct._MIDI_FILE*, !dbg !2660
  store %struct._MIDI_FILE* %15, %struct._MIDI_FILE** %12, align 4, !dbg !2660
  %16 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2661
  %17 = load i32, i32* %6, align 4, !dbg !2661
  %18 = call i32 @_midiValidateTrack(%struct._MIDI_FILE* %16, i32 %17), !dbg !2661
  %19 = icmp ne i32 %18, 0, !dbg !2661
  br i1 %19, label %21, label %20, !dbg !2663

; <label>:20:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2664
  br label %682, !dbg !2664

; <label>:21:                                     ; preds = %3
  %22 = load %struct._MIDI_FILE*, %struct._MIDI_FILE** %12, align 4, !dbg !2665
  %23 = getelementptr inbounds %struct._MIDI_FILE, %struct._MIDI_FILE* %22, i32 0, i32 5, !dbg !2666
  %24 = load i32, i32* %6, align 4, !dbg !2667
  %25 = getelementptr inbounds [256 x %struct.MIDI_FILE_TRACK], [256 x %struct.MIDI_FILE_TRACK]* %23, i32 0, i32 %24, !dbg !2665
  store %struct.MIDI_FILE_TRACK* %25, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2668
  %26 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2669
  %27 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %26, i32 0, i32 0, !dbg !2671
  %28 = load i8*, i8** %27, align 4, !dbg !2671
  %29 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2672
  %30 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %29, i32 0, i32 2, !dbg !2673
  %31 = load i8*, i8** %30, align 4, !dbg !2673
  %32 = icmp uge i8* %28, %31, !dbg !2674
  br i1 %32, label %33, label %34, !dbg !2675

; <label>:33:                                     ; preds = %21
  store i32 0, i32* %4, align 4, !dbg !2676
  br label %682, !dbg !2676

; <label>:34:                                     ; preds = %21
  %35 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2677
  %36 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %35, i32 0, i32 0, !dbg !2678
  %37 = load i8*, i8** %36, align 4, !dbg !2678
  %38 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2679
  %39 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %38, i32 0, i32 1, !dbg !2680
  %40 = call i8* @_midiReadVarLen(i8* %37, i32* %39), !dbg !2681
  %41 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2682
  %42 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %41, i32 0, i32 0, !dbg !2683
  store i8* %40, i8** %42, align 4, !dbg !2684
  %43 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2685
  %44 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %43, i32 0, i32 1, !dbg !2686
  %45 = load i32, i32* %44, align 4, !dbg !2686
  %46 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2687
  %47 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %46, i32 0, i32 3, !dbg !2688
  %48 = load i32, i32* %47, align 4, !dbg !2689
  %49 = add i32 %48, %45, !dbg !2689
  store i32 %49, i32* %47, align 4, !dbg !2689
  %50 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2690
  %51 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %50, i32 0, i32 3, !dbg !2691
  %52 = load i32, i32* %51, align 4, !dbg !2691
  %53 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2692
  %54 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %53, i32 0, i32 2, !dbg !2693
  store i32 %52, i32* %54, align 4, !dbg !2694
  %55 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2695
  %56 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %55, i32 0, i32 0, !dbg !2697
  %57 = load i8*, i8** %56, align 4, !dbg !2697
  %58 = load i8, i8* %57, align 1, !dbg !2698
  %59 = zext i8 %58 to i32, !dbg !2698
  %60 = and i32 %59, 128, !dbg !2699
  %61 = icmp ne i32 %60, 0, !dbg !2699
  br i1 %61, label %62, label %88, !dbg !2700

; <label>:62:                                     ; preds = %34
  %63 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2701
  %64 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %63, i32 0, i32 0, !dbg !2703
  %65 = load i8*, i8** %64, align 4, !dbg !2703
  %66 = load i8, i8* %65, align 1, !dbg !2704
  %67 = zext i8 %66 to i32, !dbg !2705
  %68 = and i32 %67, 240, !dbg !2706
  %69 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2707
  %70 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %69, i32 0, i32 0, !dbg !2708
  store i32 %68, i32* %70, align 4, !dbg !2709
  %71 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2710
  %72 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %71, i32 0, i32 0, !dbg !2711
  %73 = load i8*, i8** %72, align 4, !dbg !2711
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !2712
  store i8* %74, i8** %10, align 4, !dbg !2713
  %75 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2714
  %76 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %75, i32 0, i32 0, !dbg !2716
  %77 = load i32, i32* %76, align 4, !dbg !2716
  %78 = icmp eq i32 %77, 240, !dbg !2717
  br i1 %78, label %79, label %87, !dbg !2718

; <label>:79:                                     ; preds = %62
  %80 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2719
  %81 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %80, i32 0, i32 0, !dbg !2720
  %82 = load i8*, i8** %81, align 4, !dbg !2720
  %83 = load i8, i8* %82, align 1, !dbg !2721
  %84 = zext i8 %83 to i32, !dbg !2722
  %85 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2723
  %86 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %85, i32 0, i32 0, !dbg !2724
  store i32 %84, i32* %86, align 4, !dbg !2725
  br label %87, !dbg !2723

; <label>:87:                                     ; preds = %79, %62
  br label %97, !dbg !2726

; <label>:88:                                     ; preds = %34
  %89 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2727
  %90 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %89, i32 0, i32 9, !dbg !2729
  %91 = load i32, i32* %90, align 4, !dbg !2729
  %92 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2730
  %93 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %92, i32 0, i32 0, !dbg !2731
  store i32 %91, i32* %93, align 4, !dbg !2732
  %94 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2733
  %95 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %94, i32 0, i32 0, !dbg !2734
  %96 = load i8*, i8** %95, align 4, !dbg !2734
  store i8* %96, i8** %10, align 4, !dbg !2735
  br label %97

; <label>:97:                                     ; preds = %88, %87
  %98 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2736
  %99 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %98, i32 0, i32 0, !dbg !2737
  %100 = load i32, i32* %99, align 4, !dbg !2737
  %101 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2738
  %102 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %101, i32 0, i32 9, !dbg !2739
  store i32 %100, i32* %102, align 4, !dbg !2740
  %103 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2741
  %104 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %103, i32 0, i32 0, !dbg !2742
  %105 = load i8*, i8** %104, align 4, !dbg !2742
  %106 = load i8, i8* %105, align 1, !dbg !2743
  %107 = zext i8 %106 to i32, !dbg !2744
  %108 = and i32 %107, 15, !dbg !2745
  %109 = trunc i32 %108 to i8, !dbg !2746
  %110 = zext i8 %109 to i32, !dbg !2746
  %111 = add nsw i32 %110, 1, !dbg !2747
  %112 = trunc i32 %111 to i8, !dbg !2746
  %113 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2748
  %114 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %113, i32 0, i32 10, !dbg !2749
  store i8 %112, i8* %114, align 4, !dbg !2750
  %115 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2751
  %116 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %115, i32 0, i32 0, !dbg !2752
  %117 = load i32, i32* %116, align 4, !dbg !2752
  switch i32 %117, label %636 [
    i32 144, label %118
    i32 128, label %144
    i32 160, label %162
    i32 176, label %188
    i32 192, label %214
    i32 208, label %232
    i32 224, label %250
    i32 255, label %280
    i32 240, label %576
    i32 247, label %576
  ], !dbg !2753

; <label>:118:                                    ; preds = %97
  %119 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2754
  %120 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %119, i32 0, i32 10, !dbg !2756
  %121 = load i8, i8* %120, align 4, !dbg !2756
  %122 = zext i8 %121 to i32, !dbg !2754
  %123 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2757
  %124 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %123, i32 0, i32 8, !dbg !2758
  %125 = bitcast %union.anon* %124 to %struct.anon*, !dbg !2759
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %125, i32 0, i32 1, !dbg !2760
  store i32 %122, i32* %126, align 4, !dbg !2761
  %127 = load i8*, i8** %10, align 4, !dbg !2762
  %128 = load i8, i8* %127, align 1, !dbg !2763
  %129 = zext i8 %128 to i32, !dbg !2763
  %130 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2764
  %131 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %130, i32 0, i32 8, !dbg !2765
  %132 = bitcast %union.anon* %131 to %struct.anon*, !dbg !2766
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 0, !dbg !2767
  store i32 %129, i32* %133, align 4, !dbg !2768
  %134 = load i8*, i8** %10, align 4, !dbg !2769
  %135 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !2770
  %136 = load i8, i8* %135, align 1, !dbg !2771
  %137 = zext i8 %136 to i32, !dbg !2771
  %138 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2772
  %139 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %138, i32 0, i32 8, !dbg !2773
  %140 = bitcast %union.anon* %139 to %struct.anon*, !dbg !2774
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 2, !dbg !2775
  store i32 %137, i32* %141, align 4, !dbg !2776
  %142 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2777
  %143 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %142, i32 0, i32 3, !dbg !2778
  store i32 3, i32* %143, align 4, !dbg !2779
  br label %636, !dbg !2780

; <label>:144:                                    ; preds = %97
  %145 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2781
  %146 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %145, i32 0, i32 10, !dbg !2782
  %147 = load i8, i8* %146, align 4, !dbg !2782
  %148 = zext i8 %147 to i32, !dbg !2781
  %149 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2783
  %150 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %149, i32 0, i32 8, !dbg !2784
  %151 = bitcast %union.anon* %150 to %struct.MIDI_END_POINT*, !dbg !2785
  %152 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %151, i32 0, i32 1, !dbg !2786
  store i32 %148, i32* %152, align 4, !dbg !2787
  %153 = load i8*, i8** %10, align 4, !dbg !2788
  %154 = load i8, i8* %153, align 1, !dbg !2789
  %155 = zext i8 %154 to i32, !dbg !2789
  %156 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2790
  %157 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %156, i32 0, i32 8, !dbg !2791
  %158 = bitcast %union.anon* %157 to %struct.MIDI_END_POINT*, !dbg !2792
  %159 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %158, i32 0, i32 0, !dbg !2793
  store i32 %155, i32* %159, align 4, !dbg !2794
  %160 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2795
  %161 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %160, i32 0, i32 3, !dbg !2796
  store i32 3, i32* %161, align 4, !dbg !2797
  br label %636, !dbg !2798

; <label>:162:                                    ; preds = %97
  %163 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2799 //delete
  %164 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %163, i32 0, i32 10, !dbg !2800 //delete
  %165 = load i8, i8* %164, align 4, !dbg !2800 //delete
  %166 = zext i8 %165 to i32, !dbg !2799 //delete
  %167 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2801 //delete
  %168 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %167, i32 0, i32 8, !dbg !2802 //delete
  %169 = bitcast %union.anon* %168 to %struct.anon*, !dbg !2803 //delete
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 1, !dbg !2804 //delete
  store i32 %166, i32* %170, align 4, !dbg !2805 //delete
  %171 = load i8*, i8** %10, align 4, !dbg !2806 //delete
  %172 = load i8, i8* %171, align 1, !dbg !2807 //delete
  %173 = zext i8 %172 to i32, !dbg !2807 //delete
  %174 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2808 //delete
  %175 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %174, i32 0, i32 8, !dbg !2809 //delete
  %176 = bitcast %union.anon* %175 to %struct.anon*, !dbg !2810 //delete
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 0, !dbg !2811 //delete
  store i32 %173, i32* %177, align 4, !dbg !2812 //delete
  %178 = load i8*, i8** %10, align 4, !dbg !2813 //delete
  %179 = getelementptr inbounds i8, i8* %178, i32 1, !dbg !2814 //delete
  %180 = load i8, i8* %179, align 1, !dbg !2815 //delete
  %181 = zext i8 %180 to i32, !dbg !2815 //delete
  %182 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2816 //delete
  %183 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %182, i32 0, i32 8, !dbg !2817 //delete
  %184 = bitcast %union.anon* %183 to %struct.anon*, !dbg !2818 //delete
  %185 = getelementptr inbounds %struct.anon, %struct.anon* %184, i32 0, i32 2, !dbg !2819 //delete
  store i32 %181, i32* %185, align 4, !dbg !2820 //delete
  %186 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2821
  %187 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %186, i32 0, i32 3, !dbg !2822
  store i32 3, i32* %187, align 4, !dbg !2823
  br label %636, !dbg !2824

; <label>:188:                                    ; preds = %97
  %189 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2825 //delete
  %190 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %189, i32 0, i32 10, !dbg !2826 //delete
  %191 = load i8, i8* %190, align 4, !dbg !2826 //delete
  %192 = zext i8 %191 to i32, !dbg !2825 //delete
  %193 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2827 //delete
  %194 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %193, i32 0, i32 8, !dbg !2828 //delete
  %195 = bitcast %union.anon* %194 to %struct.anon*, !dbg !2829 //delete
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 0, !dbg !2830 //delete
  store i32 %192, i32* %196, align 4, !dbg !2831 //delete
  %197 = load i8*, i8** %10, align 4, !dbg !2832 //delete
  %198 = load i8, i8* %197, align 1, !dbg !2833 //delete
  %199 = zext i8 %198 to i32, !dbg !2834 //delete
  %200 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2835 //delete
  %201 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %200, i32 0, i32 8, !dbg !2836 //delete
  %202 = bitcast %union.anon* %201 to %struct.anon*, !dbg !2837 //delete
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 1, !dbg !2838 //delete
  store i32 %199, i32* %203, align 4, !dbg !2839 //delete
  %204 = load i8*, i8** %10, align 4, !dbg !2840 //delete
  %205 = getelementptr inbounds i8, i8* %204, i32 1, !dbg !2841 //delete
  %206 = load i8, i8* %205, align 1, !dbg !2842 ////delete
  %207 = zext i8 %206 to i32, !dbg !2842 ////delete
  %208 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2843 ////delete
  %209 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %208, i32 0, i32 8, !dbg !2844 ////delete
  %210 = bitcast %union.anon* %209 to %struct.anon*, !dbg !2845 ////delete
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 2, !dbg !2846 ////delete
  store i32 %207, i32* %211, align 4, !dbg !2847 //delete
  %212 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2848
  %213 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %212, i32 0, i32 3, !dbg !2849
  store i32 3, i32* %213, align 4, !dbg !2850
  br label %636, !dbg !2851

; <label>:214:                                    ; preds = %97
  %215 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2852 //delete
  %216 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %215, i32 0, i32 10, !dbg !2853 //delete
  %217 = load i8, i8* %216, align 4, !dbg !2853 //delete
  %218 = zext i8 %217 to i32, !dbg !2852 //delete
  %219 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2854 //delete
  %220 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %219, i32 0, i32 8, !dbg !2855 //delete
  %221 = bitcast %union.anon* %220 to %struct.MIDI_END_POINT*, !dbg !2856 //delete
  %222 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %221, i32 0, i32 0, !dbg !2857 //delete
  store i32 %218, i32* %222, align 4, !dbg !2858 //delete
  %223 = load i8*, i8** %10, align 4, !dbg !2859 //delete
  %224 = load i8, i8* %223, align 1, !dbg !2860  //delete
  %225 = zext i8 %224 to i32, !dbg !2860 //delete
  %226 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2861 //delete
  %227 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %226, i32 0, i32 8, !dbg !2862 //delete
  %228 = bitcast %union.anon* %227 to %struct.MIDI_END_POINT*, !dbg !2863 //delete
  %229 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %228, i32 0, i32 1, !dbg !2864 //delete
  store i32 %225, i32* %229, align 4, !dbg !2865 //delete
  %230 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2866
  %231 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %230, i32 0, i32 3, !dbg !2867
  store i32 2, i32* %231, align 4, !dbg !2868
  br label %636, !dbg !2869

; <label>:232:                                    ; preds = %97
  %233 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2870 //delete
  %234 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %233, i32 0, i32 10, !dbg !2871 //delete
  %235 = load i8, i8* %234, align 4, !dbg !2871 //delete
  %236 = zext i8 %235 to i32, !dbg !2870 //delete
  %237 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2872 //delete
  %238 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %237, i32 0, i32 8, !dbg !2873 //delete
  %239 = bitcast %union.anon* %238 to %struct.MIDI_END_POINT*, !dbg !2874 //delete
  %240 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %239, i32 0, i32 0, !dbg !2875 //delete
  store i32 %236, i32* %240, align 4, !dbg !2876 //delete
  %241 = load i8*, i8** %10, align 4, !dbg !2877 //delete
  %242 = load i8, i8* %241, align 1, !dbg !2878 //delete
  %243 = zext i8 %242 to i32, !dbg !2878 //delete
  %244 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2879 //delete
  %245 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %244, i32 0, i32 8, !dbg !2880 //delete
  %246 = bitcast %union.anon* %245 to %struct.MIDI_END_POINT*, !dbg !2881 //delete
  %247 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %246, i32 0, i32 1, !dbg !2882 //delete
  store i32 %243, i32* %247, align 4, !dbg !2883 //delete
  %248 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2884
  %249 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %248, i32 0, i32 3, !dbg !2885
  store i32 2, i32* %249, align 4, !dbg !2886
  br label %636, !dbg !2887

; <label>:250:                                    ; preds = %97
  %251 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2888 //delete
  %252 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %251, i32 0, i32 10, !dbg !2889 //delete
  %253 = load i8, i8* %252, align 4, !dbg !2889 //delete
  %254 = zext i8 %253 to i32, !dbg !2888 //delete
  %255 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2890 //delete
  %256 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %255, i32 0, i32 8, !dbg !2891 //delete
  %257 = bitcast %union.anon* %256 to %struct.MIDI_END_POINT*, !dbg !2892 //delete
  %258 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %257, i32 0, i32 0, !dbg !2893 //delete
  store i32 %254, i32* %258, align 4, !dbg !2894 //delete
  %259 = load i8*, i8** %10, align 4, !dbg !2895 //delete
  %260 = load i8, i8* %259, align 1, !dbg !2896 //delete
  %261 = zext i8 %260 to i32, !dbg !2896 //delete
  %262 = load i8*, i8** %10, align 4, !dbg !2897 //delete
  %263 = getelementptr inbounds i8, i8* %262, i32 1, !dbg !2898 //delete
  %264 = load i8, i8* %263, align 1, !dbg !2899 //delete
  %265 = zext i8 %264 to i32, !dbg !2899 //delete
  %266 = shl i32 %265, 7, !dbg !2900 //delete
  %267 = or i32 %261, %266, !dbg !2901 //delete
  %268 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2902 //delete
  %269 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %268, i32 0, i32 8, !dbg !2903 //delete
  %270 = bitcast %union.anon* %269 to %struct.MIDI_END_POINT*, !dbg !2904 //delete
  %271 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %270, i32 0, i32 1, !dbg !2905 //delete
  store i32 %267, i32* %271, align 4, !dbg !2906 //delete
  %272 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2907 //delete
  %273 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %272, i32 0, i32 8, !dbg !2908 //delete
  %274 = bitcast %union.anon* %273 to %struct.MIDI_END_POINT*, !dbg !2909 //delete
  %275 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %274, i32 0, i32 1, !dbg !2910 //delete
  %276 = load i32, i32* %275, align 4, !dbg !2911 //delete
  %277 = sub nsw i32 %276, 8192, !dbg !2911 //delete
  store i32 %277, i32* %275, align 4, !dbg !2911 //delete
  %278 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2912
  %279 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %278, i32 0, i32 3, !dbg !2913
  store i32 3, i32* %279, align 4, !dbg !2914
  br label %636, !dbg !2915

; <label>:280:                                    ; preds = %97
  %281 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2916
  %282 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %281, i32 0, i32 0, !dbg !2917
  %283 = load i8*, i8** %282, align 4, !dbg !2917
  store i8* %283, i8** %9, align 4, !dbg !2918
  %284 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2919
  %285 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %284, i32 0, i32 0, !dbg !2920
  %286 = load i8*, i8** %285, align 4, !dbg !2920
  %287 = getelementptr inbounds i8, i8* %286, i32 1, !dbg !2921
  %288 = load i8, i8* %287, align 1, !dbg !2922
  %289 = zext i8 %288 to i32, !dbg !2923
  %290 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2924
  %291 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %290, i32 0, i32 8, !dbg !2925
  %292 = bitcast %union.anon* %291 to %struct.anon.6*, !dbg !2926
  %293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %292, i32 0, i32 0, !dbg !2927
  store i32 %289, i32* %293, align 4, !dbg !2928
  %294 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2929
  %295 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %294, i32 0, i32 0, !dbg !2930
  %296 = load i8*, i8** %295, align 4, !dbg !2930
  %297 = getelementptr inbounds i8, i8* %296, i32 2, !dbg !2931
  %298 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2932
  %299 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %298, i32 0, i32 3, !dbg !2933
  %300 = call i8* @_midiReadVarLen(i8* %297, i32* %299), !dbg !2934
  %301 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2935
  %302 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %301, i32 0, i32 0, !dbg !2936
  store i8* %300, i8** %302, align 4, !dbg !2937
  %303 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2938
  %304 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %303, i32 0, i32 0, !dbg !2939
  %305 = load i8*, i8** %304, align 4, !dbg !2939
  %306 = load i8*, i8** %9, align 4, !dbg !2940
  %307 = ptrtoint i8* %305 to i32, !dbg !2941
  %308 = ptrtoint i8* %306 to i32, !dbg !2941
  %309 = sub i32 %307, %308, !dbg !2941
  %310 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2942
  %311 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %310, i32 0, i32 3, !dbg !2943
  %312 = load i32, i32* %311, align 4, !dbg !2943
  %313 = add i32 %309, %312, !dbg !2944
  store i32 %313, i32* %11, align 4, !dbg !2945
  %314 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2946
  %315 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2948
  %316 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %315, i32 0, i32 0, !dbg !2949
  %317 = load i8*, i8** %316, align 4, !dbg !2949
  %318 = load i32, i32* %11, align 4, !dbg !2950
  %319 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %314, i8* %317, i32 %318, i32 0), !dbg !2951
  %320 = icmp eq i32 %319, 0, !dbg !2952
  br i1 %320, label %321, label %322, !dbg !2953

; <label>:321:                                    ; preds = %280
  store i32 0, i32* %4, align 4, !dbg !2954
  br label %682, !dbg !2954

; <label>:322:                                    ; preds = %280
  %323 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2955
  %324 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %323, i32 0, i32 6, !dbg !2956
  %325 = load i8*, i8** %324, align 4, !dbg !2956 //delete
  %326 = load i8*, i8** %9, align 4, !dbg !2957   //delete
  %327 = load i32, i32* %11, align 4, !dbg !2958  //delete
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %325, i8* %326, i32 %327, i32 1, i1 false), !dbg !2959 //delete
  %328 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2960
  %329 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %328, i32 0, i32 8, !dbg !2961
  %330 = bitcast %union.anon* %329 to %struct.anon.6*, !dbg !2962
  %331 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %330, i32 0, i32 0, !dbg !2963
  %332 = load i32, i32* %331, align 4, !dbg !2963
  switch i32 %332, label %565 [
    i32 33, label %333
    i32 0, label %345
    i32 1, label %357
    i32 2, label %357
    i32 3, label %357
    i32 4, label %357
    i32 5, label %357
    i32 6, label %357
    i32 7, label %357
    i32 47, label %367
    i32 81, label %368
    i32 84, label %399
    i32 88, label %460
    i32 89, label %486
    i32 127, label %546
  ], !dbg !2964

; <label>:333:                                    ; preds = %322
  %334 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2965 //delete
  %335 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %334, i32 0, i32 0, !dbg !2967 //delete
  %336 = load i8*, i8** %335, align 4, !dbg !2967 //delete
  %337 = getelementptr inbounds i8, i8* %336, i32 0, !dbg !2968 //delete
  %338 = load i8, i8* %337, align 1, !dbg !2969 //delete
  %339 = zext i8 %338 to i32, !dbg !2969 //delete
  %340 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2970 //delete
  %341 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %340, i32 0, i32 8, !dbg !2971 //delete
  %342 = bitcast %union.anon* %341 to %struct.anon.6*, !dbg !2972 //delete
  %343 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %342, i32 0, i32 1, !dbg !2973 //delete
  %344 = bitcast %union.anon.7* %343 to i32*, !dbg !2974 //delete
  store i32 %339, i32* %344, align 4, !dbg !2975 //delete
  br label %565, !dbg !2976 //delete

; <label>:345:                                    ; preds = %322
  %346 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2977 //delete
  %347 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %346, i32 0, i32 0, !dbg !2978 //delete
  %348 = load i8*, i8** %347, align 4, !dbg !2978 //delete
  %349 = getelementptr inbounds i8, i8* %348, i32 0, !dbg !2979 //delete
  %350 = load i8, i8* %349, align 1, !dbg !2980 //delete
  %351 = zext i8 %350 to i32, !dbg !2980 //delete
  %352 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2981 //delete
  %353 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %352, i32 0, i32 8, !dbg !2982 //delete
  %354 = bitcast %union.anon* %353 to %struct.anon.6*, !dbg !2983 //delete
  %355 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %354, i32 0, i32 1, !dbg !2984 //delete
  %356 = bitcast %union.anon.7* %355 to i32*, !dbg !2985 //delete
  store i32 %351, i32* %356, align 4, !dbg !2986 //delete
  br label %565, !dbg !2987 //delete

; <label>:357:                                    ; preds = %322, %322, %322, %322, %322, %322, %322
  %358 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !2988 //delete
  %359 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %358, i32 0, i32 0, !dbg !2989 //delete
  %360 = load i8*, i8** %359, align 4, !dbg !2989 //delete
  %361 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !2990 //delete
  %362 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %361, i32 0, i32 8, !dbg !2991 //delete
  %363 = bitcast %union.anon* %362 to %struct.anon.6*, !dbg !2992 //delete
  %364 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %363, i32 0, i32 1, !dbg !2993 //delete
  %365 = bitcast %union.anon.7* %364 to %struct.anon.8*, !dbg !2994 //delete
  %366 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %365, i32 0, i32 0, !dbg !2995 //delete
  store i8* %360, i8** %366, align 4, !dbg !2996 //delete
  br label %565, !dbg !2997 //delete

; <label>:367:                                    ; preds = %322
  br label %565, !dbg !2998 //delete

; <label>:368:                                    ; preds = %322
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2999, metadata !502), !dbg !3001
  %369 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3002
  %370 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %369, i32 0, i32 0, !dbg !3003
  %371 = load i8*, i8** %370, align 4, !dbg !3003
  %372 = getelementptr inbounds i8, i8* %371, i32 0, !dbg !3004
  %373 = load i8, i8* %372, align 1, !dbg !3005
  %374 = zext i8 %373 to i32, !dbg !3006
  %375 = shl i32 %374, 16, !dbg !3007
  %376 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3008
  %377 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %376, i32 0, i32 0, !dbg !3009
  %378 = load i8*, i8** %377, align 4, !dbg !3009
  %379 = getelementptr inbounds i8, i8* %378, i32 1, !dbg !3010
  %380 = load i8, i8* %379, align 1, !dbg !3011
  %381 = zext i8 %380 to i32, !dbg !3012
  %382 = shl i32 %381, 8, !dbg !3013
  %383 = or i32 %375, %382, !dbg !3014
  %384 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3015
  %385 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %384, i32 0, i32 0, !dbg !3016
  %386 = load i8*, i8** %385, align 4, !dbg !3016
  %387 = getelementptr inbounds i8, i8* %386, i32 2, !dbg !3017
  %388 = load i8, i8* %387, align 1, !dbg !3018
  %389 = zext i8 %388 to i32, !dbg !3019
  %390 = or i32 %383, %389, !dbg !3020
  store i32 %390, i32* %13, align 4, !dbg !3001
  %391 = load i32, i32* %13, align 4, !dbg !3021
  %392 = udiv i32 60000000, %391, !dbg !3022
  %393 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3023
  %394 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %393, i32 0, i32 8, !dbg !3024
  %395 = bitcast %union.anon* %394 to %struct.anon.6*, !dbg !3025
  %396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %395, i32 0, i32 1, !dbg !3026
  %397 = bitcast %union.anon.7* %396 to %struct.anon.9*, !dbg !3027
  %398 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %397, i32 0, i32 0, !dbg !3028
  store i32 %392, i32* %398, align 4, !dbg !3029
  br label %565, !dbg !3030

; <label>:399:                                    ; preds = %322
  %400 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3031 //delete
  %401 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %400, i32 0, i32 0, !dbg !3032 //delete
  %402 = load i8*, i8** %401, align 4, !dbg !3032 //delete
  %403 = getelementptr inbounds i8, i8* %402, i32 0, !dbg !3033 //delete
  %404 = load i8, i8* %403, align 1, !dbg !3034 //delete
  %405 = zext i8 %404 to i32, !dbg !3034 //delete
  %406 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3035 //delete
  %407 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %406, i32 0, i32 8, !dbg !3036 //delete
  %408 = bitcast %union.anon* %407 to %struct.anon.6*, !dbg !3037 //delete
  %409 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %408, i32 0, i32 1, !dbg !3038 //delete
  %410 = bitcast %union.anon.7* %409 to %struct.anon.10*, !dbg !3039 //delete
  %411 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %410, i32 0, i32 0, !dbg !3040 //delete
  store i32 %405, i32* %411, align 4, !dbg !3041 //delete
  %412 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3042 //delete
  %413 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %412, i32 0, i32 0, !dbg !3043 //delete
  %414 = load i8*, i8** %413, align 4, !dbg !3043 //delete
  %415 = getelementptr inbounds i8, i8* %414, i32 1, !dbg !3044 //delete
  %416 = load i8, i8* %415, align 1, !dbg !3045 //delete
  %417 = zext i8 %416 to i32, !dbg !3045 //delete
  %418 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3046 //delete
  %419 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %418, i32 0, i32 8, !dbg !3047 //delete
  %420 = bitcast %union.anon* %419 to %struct.anon.6*, !dbg !3048 //delete
  %421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %420, i32 0, i32 1, !dbg !3049 //delete
  %422 = bitcast %union.anon.7* %421 to %struct.anon.10*, !dbg !3050 //delete
  %423 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %422, i32 0, i32 1, !dbg !3051 //delete
  store i32 %417, i32* %423, align 4, !dbg !3052 //delete
  %424 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3053 //delete
  %425 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %424, i32 0, i32 0, !dbg !3054 //delete
  %426 = load i8*, i8** %425, align 4, !dbg !3054 //delete
  %427 = getelementptr inbounds i8, i8* %426, i32 2, !dbg !3055 //delete
  %428 = load i8, i8* %427, align 1, !dbg !3056 //delete
  %429 = zext i8 %428 to i32, !dbg !3056 //delete
  %430 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3057 //delete
  %431 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %430, i32 0, i32 8, !dbg !3058 //delete
  %432 = bitcast %union.anon* %431 to %struct.anon.6*, !dbg !3059 //delete
  %433 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %432, i32 0, i32 1, !dbg !3060 //delete
  %434 = bitcast %union.anon.7* %433 to %struct.anon.10*, !dbg !3061 //delete
  %435 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %434, i32 0, i32 2, !dbg !3062 //delete
  store i32 %429, i32* %435, align 4, !dbg !3063 //delete
  %436 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3064 //delete
  %437 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %436, i32 0, i32 0, !dbg !3065 //delete
  %438 = load i8*, i8** %437, align 4, !dbg !3065 //delete
  %439 = getelementptr inbounds i8, i8* %438, i32 3, !dbg !3066 //delete
  %440 = load i8, i8* %439, align 1, !dbg !3067 //delete
  %441 = zext i8 %440 to i32, !dbg !3067 //delete
  %442 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3068 //delete
  %443 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %442, i32 0, i32 8, !dbg !3069 //delete
  %444 = bitcast %union.anon* %443 to %struct.anon.6*, !dbg !3070 //delete
  %445 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %444, i32 0, i32 1, !dbg !3071 //delete
  %446 = bitcast %union.anon.7* %445 to %struct.anon.10*, !dbg !3072 //delete
  %447 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %446, i32 0, i32 3, !dbg !3073 //delete
  store i32 %441, i32* %447, align 4, !dbg !3074 //delete
  %448 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3075 //delete
  %449 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %448, i32 0, i32 0, !dbg !3076 //delete
  %450 = load i8*, i8** %449, align 4, !dbg !3076 //delete
  %451 = getelementptr inbounds i8, i8* %450, i32 4, !dbg !3077 //delete
  %452 = load i8, i8* %451, align 1, !dbg !3078 //delete
  %453 = zext i8 %452 to i32, !dbg !3078 //delete
  %454 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3079 //delete
  %455 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %454, i32 0, i32 8, !dbg !3080 //delete
  %456 = bitcast %union.anon* %455 to %struct.anon.6*, !dbg !3081 //delete
  %457 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %456, i32 0, i32 1, !dbg !3082 //delete
  %458 = bitcast %union.anon.7* %457 to %struct.anon.10*, !dbg !3083 //delete
  %459 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %458, i32 0, i32 4, !dbg !3084 //delete
  store i32 %453, i32* %459, align 4, !dbg !3085 //delete
  br label %565, !dbg !3086 //delete

; <label>:460:                                    ; preds = %322
  %461 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3087 //delete
  %462 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %461, i32 0, i32 0, !dbg !3088//delete
  %463 = load i8*, i8** %462, align 4, !dbg !3088 //delete
  %464 = getelementptr inbounds i8, i8* %463, i32 0, !dbg !3089 //delete
  %465 = load i8, i8* %464, align 1, !dbg !3090 //delete
  %466 = zext i8 %465 to i32, !dbg !3090 //delete
  %467 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3091 //delete
  %468 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %467, i32 0, i32 8, !dbg !3092 //delete
  %469 = bitcast %union.anon* %468 to %struct.anon.6*, !dbg !3093 //delete
  %470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %469, i32 0, i32 1, !dbg !3094 //delete
  %471 = bitcast %union.anon.7* %470 to %struct.MIDI_END_POINT*, !dbg !3095 //delete
  %472 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %471, i32 0, i32 0, !dbg !3096 //delete
  store i32 %466, i32* %472, align 4, !dbg !3097 //delete
  %473 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3098 //delete
  %474 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %473, i32 0, i32 0, !dbg !3099 //delete
  %475 = load i8*, i8** %474, align 4, !dbg !3099 //delete
  %476 = getelementptr inbounds i8, i8* %475, i32 1, !dbg !3100 //delete
  %477 = load i8, i8* %476, align 1, !dbg !3101 //delete
  %478 = zext i8 %477 to i32, !dbg !3101 //delete
  %479 = mul nsw i32 %478, 768, !dbg !3102 //delete
  %480 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3103 //delete
  %481 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %480, i32 0, i32 8, !dbg !3104 //delete
  %482 = bitcast %union.anon* %481 to %struct.anon.6*, !dbg !3105 //delete
  %483 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %482, i32 0, i32 1, !dbg !3106 //delete
  %484 = bitcast %union.anon.7* %483 to %struct.MIDI_END_POINT*, !dbg !3107 //delete
  %485 = getelementptr inbounds %struct.MIDI_END_POINT, %struct.MIDI_END_POINT* %484, i32 0, i32 1, !dbg !3108 //delete
  store i32 %479, i32* %485, align 4, !dbg !3109 //delete
  br label %565, !dbg !3110 //delete

; <label>:486:                                    ; preds = %322
  %487 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3111 //delete
  %488 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %487, i32 0, i32 0, !dbg !3113 //delete
  %489 = load i8*, i8** %488, align 4, !dbg !3113 //delete
  %490 = load i8, i8* %489, align 1, !dbg !3114 //delete
  %491 = zext i8 %490 to i32, !dbg !3114 //delete
  %492 = and i32 %491, 128, !dbg !3115 //delete
  %493 = icmp ne i32 %492, 0, !dbg !3115 //delete
  br i1 %493, label %494, label %516, !dbg !3116 //delete

; <label>:494:                                    ; preds = %486
  %495 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3117 //delete
  %496 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %495, i32 0, i32 0, !dbg !3119 //delete
  %497 = load i8*, i8** %496, align 4, !dbg !3119 //delete
  %498 = load i8, i8* %497, align 1, !dbg !3120 //delete
  %499 = zext i8 %498 to i32, !dbg !3120 //delete
  %500 = sub nsw i32 256, %499, !dbg !3121 //delete
  %501 = and i32 %500, 7, !dbg !3122 //delete
  %502 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3123 //delete
  %503 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %502, i32 0, i32 8, !dbg !3124 //delete
  %504 = bitcast %union.anon* %503 to %struct.anon.6*, !dbg !3125 //delete
  %505 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %504, i32 0, i32 1, !dbg !3126 //delete
  %506 = bitcast %union.anon.7* %505 to %struct.anon.9*, !dbg !3127 //delete
  %507 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %506, i32 0, i32 0, !dbg !3128 //delete
  store i32 %501, i32* %507, align 4, !dbg !3129 //delete
  %508 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3130 //delete
  %509 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %508, i32 0, i32 8, !dbg !3131 //delete
  %510 = bitcast %union.anon* %509 to %struct.anon.6*, !dbg !3132 //delete
  %511 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %510, i32 0, i32 1, !dbg !3133 //delete
  %512 = bitcast %union.anon.7* %511 to %struct.anon.9*, !dbg !3134 //delete
  %513 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %512, i32 0, i32 0, !dbg !3135 //delete
  %514 = load i32, i32* %513, align 4, !dbg !3136 //delete
  %515 = or i32 %514, 128, !dbg !3136 //delete
  store i32 %515, i32* %513, align 4, !dbg !3136 //delete
  br label %529, !dbg !3137 //delete

; <label>:516:                                    ; preds = %486
  %517 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3138 //delete
  %518 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %517, i32 0, i32 0, !dbg !3140 //delete
  %519 = load i8*, i8** %518, align 4, !dbg !3140 //delete
  %520 = load i8, i8* %519, align 1, !dbg !3141 //delete
  %521 = zext i8 %520 to i32, !dbg !3141 //delete
  %522 = and i32 %521, 7, !dbg !3142 //delete
  %523 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3143 //delete
  %524 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %523, i32 0, i32 8, !dbg !3144 //delete
  %525 = bitcast %union.anon* %524 to %struct.anon.6*, !dbg !3145 //delete
  %526 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %525, i32 0, i32 1, !dbg !3146 //delete
  %527 = bitcast %union.anon.7* %526 to %struct.anon.9*, !dbg !3147 //delete
  %528 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %527, i32 0, i32 0, !dbg !3148 //delete
  store i32 %522, i32* %528, align 4, !dbg !3149 //delete
  br label %529 //delete

; <label>:529:                                    ; preds = %516, %494
  %530 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3150 //delete
  %531 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %530, i32 0, i32 0, !dbg !3152 //delete
  %532 = load i8*, i8** %531, align 4, !dbg !3152 //delete
  %533 = getelementptr inbounds i8, i8* %532, i32 1, !dbg !3153 //delete
  %534 = load i8, i8* %533, align 1, !dbg !3154 //delete
  %535 = icmp ne i8 %534, 0, !dbg !3154 //delete
  br i1 %535, label %536, label %545, !dbg !3155 //delete

; <label>:536:                                    ; preds = %529
  %537 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3156 //delete
  %538 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %537, i32 0, i32 8, !dbg !3157 //delete
  %539 = bitcast %union.anon* %538 to %struct.anon.6*, !dbg !3158 //delete
  %540 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %539, i32 0, i32 1, !dbg !3159 //delete
  %541 = bitcast %union.anon.7* %540 to %struct.anon.9*, !dbg !3160 //delete
  %542 = getelementptr inbounds %struct.anon.9, %struct.anon.9* %541, i32 0, i32 0, !dbg !3161 //delete
  %543 = load i32, i32* %542, align 4, !dbg !3162 //delete
  %544 = or i32 %543, 64, !dbg !3162 //delete
  store i32 %544, i32* %542, align 4, !dbg !3162 //delete
  br label %545, !dbg !3156 //delete

; <label>:545:                                    ; preds = %536, %529
  br label %565, !dbg !3163 //delete

; <label>:546:                                    ; preds = %322
  %547 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3164 //delete
  %548 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %547, i32 0, i32 3, !dbg !3165 //delete
  %549 = load i32, i32* %548, align 4, !dbg !3165 //delete
  %550 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3166 //delete
  %551 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %550, i32 0, i32 8, !dbg !3167 //delete
  %552 = bitcast %union.anon* %551 to %struct.anon.6*, !dbg !3168 //delete
  %553 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %552, i32 0, i32 1, !dbg !3169 //delete
  %554 = bitcast %union.anon.7* %553 to %struct.anon.13*, !dbg !3170 //delete
  %555 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %554, i32 0, i32 1, !dbg !3171 //delete
  store i32 %549, i32* %555, align 4, !dbg !3172 //delete
  %556 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3173 //delete
  %557 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %556, i32 0, i32 0, !dbg !3174 //delete
  %558 = load i8*, i8** %557, align 4, !dbg !3174 //delete
  %559 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3175 //delete
  %560 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %559, i32 0, i32 8, !dbg !3176 //delete
  %561 = bitcast %union.anon* %560 to %struct.anon.6*, !dbg !3177 //delete
  %562 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %561, i32 0, i32 1, !dbg !3178 //delete
  %563 = bitcast %union.anon.7* %562 to %struct.anon.13*, !dbg !3179 //delete
  %564 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %563, i32 0, i32 0, !dbg !3180 //delete
  store i8* %558, i8** %564, align 4, !dbg !3181 //delete
  br label %565, !dbg !3182 //delete

; <label>:565:                                    ; preds = %546, %545, %460, %399, %368, %367, %357, %345, %333, %322
  %566 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3183
  %567 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %566, i32 0, i32 3, !dbg !3184
  %568 = load i32, i32* %567, align 4, !dbg !3184
  %569 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3185
  %570 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %569, i32 0, i32 0, !dbg !3186
  %571 = load i8*, i8** %570, align 4, !dbg !3187
  %572 = getelementptr inbounds i8, i8* %571, i32 %568, !dbg !3187
  store i8* %572, i8** %570, align 4, !dbg !3187
  %573 = load i32, i32* %11, align 4, !dbg !3188
  %574 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3189
  %575 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %574, i32 0, i32 3, !dbg !3190
  store i32 %573, i32* %575, align 4, !dbg !3191
  br label %636, !dbg !3192

; <label>:576:                                    ; preds = %97, %97
  %577 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3193
  %578 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %577, i32 0, i32 0, !dbg !3194
  %579 = load i8*, i8** %578, align 4, !dbg !3194
  store i8* %579, i8** %9, align 4, !dbg !3195
  %580 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3196
  %581 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %580, i32 0, i32 0, !dbg !3197
  %582 = load i8*, i8** %581, align 4, !dbg !3197
  %583 = getelementptr inbounds i8, i8* %582, i32 1, !dbg !3198
  %584 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3199
  %585 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %584, i32 0, i32 3, !dbg !3200
  %586 = call i8* @_midiReadVarLen(i8* %583, i32* %585), !dbg !3201
  %587 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3202
  %588 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %587, i32 0, i32 0, !dbg !3203
  store i8* %586, i8** %588, align 4, !dbg !3204
  %589 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3205
  %590 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %589, i32 0, i32 0, !dbg !3206
  %591 = load i8*, i8** %590, align 4, !dbg !3206
  %592 = load i8*, i8** %9, align 4, !dbg !3207
  %593 = ptrtoint i8* %591 to i32, !dbg !3208
  %594 = ptrtoint i8* %592 to i32, !dbg !3208
  %595 = sub i32 %593, %594, !dbg !3208
  %596 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3209
  %597 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %596, i32 0, i32 3, !dbg !3210
  %598 = load i32, i32* %597, align 4, !dbg !3210
  %599 = add i32 %595, %598, !dbg !3211
  store i32 %599, i32* %11, align 4, !dbg !3212
  %600 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3213
  %601 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3215
  %602 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %601, i32 0, i32 0, !dbg !3216
  %603 = load i8*, i8** %602, align 4, !dbg !3216
  %604 = load i32, i32* %11, align 4, !dbg !3217
  %605 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %600, i8* %603, i32 %604, i32 0), !dbg !3218
  %606 = icmp eq i32 %605, 0, !dbg !3219
  br i1 %606, label %607, label %608, !dbg !3220

; <label>:607:                                    ; preds = %576
  store i32 0, i32* %4, align 4, !dbg !3221
  br label %682, !dbg !3221

; <label>:608:                                    ; preds = %576
  %609 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3222
  %610 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %609, i32 0, i32 6, !dbg !3223
  %611 = load i8*, i8** %610, align 4, !dbg !3223 //delete
  %612 = load i8*, i8** %9, align 4, !dbg !3224   //delete
  %613 = load i32, i32* %11, align 4, !dbg !3225  //delete
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %611, i8* %612, i32 %613, i32 1, i1 false), !dbg !3226 //delete
  %614 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3227
  %615 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %614, i32 0, i32 3, !dbg !3228
  %616 = load i32, i32* %615, align 4, !dbg !3228
  %617 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3229
  %618 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %617, i32 0, i32 0, !dbg !3230
  %619 = load i8*, i8** %618, align 4, !dbg !3231
  %620 = getelementptr inbounds i8, i8* %619, i32 %616, !dbg !3231
  store i8* %620, i8** %618, align 4, !dbg !3231
  %621 = load i32, i32* %11, align 4, !dbg !3232
  %622 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3233
  %623 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %622, i32 0, i32 3, !dbg !3234
  store i32 %621, i32* %623, align 4, !dbg !3235
  %624 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3236 //delete
  %625 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %624, i32 0, i32 6, !dbg !3237 //delete
  %626 = load i8*, i8** %625, align 4, !dbg !3237 //delete
  %627 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3238 //delete
  %628 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %627, i32 0, i32 8, !dbg !3239 //delete
  %629 = bitcast %union.anon* %628 to %struct.anon.13*, !dbg !3240 //delete
  %630 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %629, i32 0, i32 0, !dbg !3241 //delete
  store i8* %626, i8** %630, align 4, !dbg !3242 //delete
  %631 = load i32, i32* %11, align 4, !dbg !3243 //delete
  %632 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3244 //delete
  %633 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %632, i32 0, i32 8, !dbg !3245 //delete
  %634 = bitcast %union.anon* %633 to %struct.anon.13*, !dbg !3246 //delete
  %635 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %634, i32 0, i32 1, !dbg !3247 //delete
  store i32 %631, i32* %635, align 4, !dbg !3248 //delete
  br label %636, !dbg !3249

; <label>:636:                                    ; preds = %608, %565, %250, %232, %214, %188, %162, %144, %118, %97
  %637 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3250 //delete
  %638 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %637, i32 0, i32 4, !dbg !3251 //delete
  store i32 0, i32* %638, align 4, !dbg !3252 //delete
  %639 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3253
  %640 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %639, i32 0, i32 0, !dbg !3255
  %641 = load i32, i32* %640, align 4, !dbg !3255
  %642 = and i32 %641, 240, !dbg !3256
  %643 = icmp ne i32 %642, 240, !dbg !3257
  br i1 %643, label %644, label %681, !dbg !3258

; <label>:644:                                    ; preds = %636
  %645 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3259
  %646 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %645, i32 0, i32 0, !dbg !3262
  %647 = load i8*, i8** %646, align 4, !dbg !3262
  %648 = load i8, i8* %647, align 1, !dbg !3263
  %649 = zext i8 %648 to i32, !dbg !3263
  %650 = and i32 %649, 128, !dbg !3264
  %651 = icmp ne i32 %650, 0, !dbg !3264
  br i1 %651, label %652, label %653, !dbg !3265

; <label>:652:                                    ; preds = %644
  br label %665, !dbg !3266

; <label>:653:                                    ; preds = %644
  %654 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3268 //delete
  %655 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %654, i32 0, i32 4, !dbg !3270 //delete
  store i32 1, i32* %655, align 4, !dbg !3271 //delete
  %656 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3272 //delete
  %657 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %656, i32 0, i32 9, !dbg !3273 //delete
  %658 = load i32, i32* %657, align 4, !dbg !3273 //delete
  %659 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3274 //delete
  %660 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %659, i32 0, i32 5, !dbg !3275 //delete
  store i32 %658, i32* %660, align 4, !dbg !3276 //delete
  %661 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3277
  %662 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %661, i32 0, i32 3, !dbg !3278
  %663 = load i32, i32* %662, align 4, !dbg !3279
  %664 = add i32 %663, -1, !dbg !3279
  store i32 %664, i32* %662, align 4, !dbg !3279
  br label %665

; <label>:665:                                    ; preds = %653, %652
  %666 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3280
  %667 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3281
  %668 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %667, i32 0, i32 0, !dbg !3282
  %669 = load i8*, i8** %668, align 4, !dbg !3282
  %670 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3283
  %671 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %670, i32 0, i32 3, !dbg !3284
  %672 = load i32, i32* %671, align 4, !dbg !3284
  %673 = call i32 @_midiReadTrackCopyData(%struct.MIDI_MSG* %666, i8* %669, i32 %672, i32 1), !dbg !3285
  %674 = load %struct.MIDI_MSG*, %struct.MIDI_MSG** %7, align 4, !dbg !3286
  %675 = getelementptr inbounds %struct.MIDI_MSG, %struct.MIDI_MSG* %674, i32 0, i32 3, !dbg !3287
  %676 = load i32, i32* %675, align 4, !dbg !3287
  %677 = load %struct.MIDI_FILE_TRACK*, %struct.MIDI_FILE_TRACK** %8, align 4, !dbg !3288
  %678 = getelementptr inbounds %struct.MIDI_FILE_TRACK, %struct.MIDI_FILE_TRACK* %677, i32 0, i32 0, !dbg !3289
  %679 = load i8*, i8** %678, align 4, !dbg !3290
  %680 = getelementptr inbounds i8, i8* %679, i32 %676, !dbg !3290
  store i8* %680, i8** %678, align 4, !dbg !3290
  br label %681, !dbg !3291

; <label>:681:                                    ; preds = %665, %636
  store i32 1, i32* %4, align 4, !dbg !3292
  br label %682, !dbg !3292

; <label>:682:                                    ; preds = %681, %607, %321, %33, %20
  %683 = load i32, i32* %4, align 4, !dbg !3293
  ret i32 %683, !dbg !3293
}
