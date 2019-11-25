##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=INTERACTIVE_RPG
ConfigurationName      :=Debug
WorkspacePath          :=/Users/mantasginiunas/Documents/Studies/cpp/VIKO
ProjectPath            :=/Users/mantasginiunas/Documents/Studies/cpp/cmaze
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Mantas Giniunas
Date                   :=25/11/2019
CodeLitePath           :="/Users/mantasginiunas/Library/Application Support/CodeLite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="INTERACTIVE_RPG.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++17 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/5k/r4gt56qd5k59c1lryyxj2w840000gn/T/AppTranslocation/60664A1F-DDD4-40A7-85AB-06A1FC093027/d/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/src_functions_String_xString.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Player_Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(ObjectSuffix) $(IntermediateDirectory)/src_functions_Async_Async.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)


$(IntermediateDirectory)/.d:
	@test -d $(ConfigurationName) || $(MakeDirCommand) $(ConfigurationName)

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_functions_String_xString.cpp$(ObjectSuffix): src/functions/String/xString.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_functions_String_xString.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_functions_String_xString.cpp$(DependSuffix) -MM src/functions/String/xString.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/mantasginiunas/Documents/Studies/cpp/cmaze/src/functions/String/xString.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_functions_String_xString.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_functions_String_xString.cpp$(PreprocessSuffix): src/functions/String/xString.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_functions_String_xString.cpp$(PreprocessSuffix) src/functions/String/xString.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/mantasginiunas/Documents/Studies/cpp/cmaze/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/src_Player_Player.cpp$(ObjectSuffix): src/Player/Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Player_Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Player_Player.cpp$(DependSuffix) -MM src/Player/Player.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/mantasginiunas/Documents/Studies/cpp/cmaze/src/Player/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Player_Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Player_Player.cpp$(PreprocessSuffix): src/Player/Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Player_Player.cpp$(PreprocessSuffix) src/Player/Player.cpp

$(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(ObjectSuffix): src/Gameplay/Gameplay.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(DependSuffix) -MM src/Gameplay/Gameplay.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/mantasginiunas/Documents/Studies/cpp/cmaze/src/Gameplay/Gameplay.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(PreprocessSuffix): src/Gameplay/Gameplay.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Gameplay_Gameplay.cpp$(PreprocessSuffix) src/Gameplay/Gameplay.cpp

$(IntermediateDirectory)/src_functions_Async_Async.cpp$(ObjectSuffix): src/functions/Async/Async.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_functions_Async_Async.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/src_functions_Async_Async.cpp$(DependSuffix) -MM src/functions/Async/Async.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/mantasginiunas/Documents/Studies/cpp/cmaze/src/functions/Async/Async.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_functions_Async_Async.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_functions_Async_Async.cpp$(PreprocessSuffix): src/functions/Async/Async.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_functions_Async_Async.cpp$(PreprocessSuffix) src/functions/Async/Async.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


