##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=SDLproject
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2"
ProjectPath            :="C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=carlo
Date                   :=25/02/2019
CodeLitePath           :=C:/cseapp/CodeLite
LinkerName             :=$(CodeLiteDir)/tools/gcc/bin/g++
SharedObjectLinkerName :=$(CodeLiteDir)/tools/gcc/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
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
ObjectsFileList        :="SDLproject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=$(CodeLiteDir)/tools/gcc/bin/windres
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)SDL2\include\SDL2 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)mingw32 $(LibrarySwitch)SDL2main $(LibrarySwitch)SDL2 $(LibrarySwitch)SDL2_image $(LibrarySwitch)SDL2_ttf 
ArLibs                 :=  "mingw32" "SDL2main" "SDL2" "SDL2_image" "SDL2_ttf" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)SDL2\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := $(CodeLiteDir)/tools/gcc/bin/ar rcus
CXX      := $(CodeLiteDir)/tools/gcc/bin/g++
CC       := $(CodeLiteDir)/tools/gcc/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -std=c99 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := $(CodeLiteDir)/tools/gcc/bin/as


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp\CodeLite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IntermediateDirectory)/player.c$(ObjectSuffix) $(IntermediateDirectory)/background.c$(ObjectSuffix) $(IntermediateDirectory)/aliens.c$(ObjectSuffix) $(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IntermediateDirectory)/apple.c$(ObjectSuffix) $(IntermediateDirectory)/heart.c$(ObjectSuffix) 



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

PostBuild:
	@echo Executing Post Build commands ...
	cp SDL2/bin/* ./Debug/.
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/renderer.c$(ObjectSuffix): renderer.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/renderer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/renderer.c$(PreprocessSuffix): renderer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/renderer.c$(PreprocessSuffix) renderer.c

$(IntermediateDirectory)/player.c$(ObjectSuffix): player.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/player.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/player.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/player.c$(PreprocessSuffix): player.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/player.c$(PreprocessSuffix) player.c

$(IntermediateDirectory)/background.c$(ObjectSuffix): background.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/background.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/background.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/background.c$(PreprocessSuffix): background.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/background.c$(PreprocessSuffix) background.c

$(IntermediateDirectory)/aliens.c$(ObjectSuffix): aliens.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/aliens.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/aliens.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/aliens.c$(PreprocessSuffix): aliens.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/aliens.c$(PreprocessSuffix) aliens.c

$(IntermediateDirectory)/gameobject.c$(ObjectSuffix): gameobject.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/gameobject.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gameobject.c$(PreprocessSuffix): gameobject.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gameobject.c$(PreprocessSuffix) gameobject.c

$(IntermediateDirectory)/apple.c$(ObjectSuffix): apple.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/apple.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/apple.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/apple.c$(PreprocessSuffix): apple.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/apple.c$(PreprocessSuffix) apple.c

$(IntermediateDirectory)/heart.c$(ObjectSuffix): heart.c 
	$(CC) $(SourceSwitch) "C:/Users/carlo/Documents/_Skola/DAT017 - Maskinorienterad programmering/Hemuppgift 2/SDLproject/heart.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/heart.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/heart.c$(PreprocessSuffix): heart.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/heart.c$(PreprocessSuffix) heart.c

##
## Clean
##
clean:
	$(RM) -r ./Debug/


