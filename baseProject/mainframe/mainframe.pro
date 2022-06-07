#TEMPLATE  模板变量 告诉qmake为这个应用程序生成哪种makefile
#->app     - 建立一个应用程序的makefile。这是默认值，所以如果模板没有被指定，这个将被使用。
#->lib     - 建立一个库的makefile。
#->vcapp   - 建立一个应用程序的VisualStudio项目文件。
#->vclib   - 建立一个库的VisualStudio项目文件。
#->subdirs - 这是一个特殊的模板，它可以创建一个能够进入特定目录并且为一个项目文件生成makefile并且为它调用make的makefile。
TEMPLATE = app

#C++语言
#LANGUAGE = C++   

#指定生成的应用程序名
TARGET = baseProject

#CONFIG 用来告诉qmake关于应用程序的配置信息。
#->qt 部分告诉qmake这个应用程序是使用Qt来连编的。这也就是说qmake在连接和为编译添加所需的包含路径的时候会考虑到Qt库的。
#->warn_on 部分告诉qmake要把编译器设置为输出警告信息的。
#->release 部分告诉qmake应用程序必须被连编为一个发布的应用程序。在开发过程中，程序员也可以使用debug来替换release
CONFIG+= qt warn_on release

CONFIG(debug, debug|release){
	#指定生成的应用程序放置的目录
    DESTDIR = ../bin/debug
	QMAKE_LIBDIR += ../bin/debug 
}
else{
    DESTDIR = ../bin/release
	QMAKE_LIBDIR += ../bin/release 
}

# #指定uic命令将.ui文件转化成ui_*.h文件的存放的目录
# UI_DIR += forms
# #指定rcc命令将.qrc文件转换成qrc_*.h文件的存放目录
# RCC_DIR += ../temp1
# #指定moc命令将含Q_OBJECT的头文件转换成标准.h文件的存放目录
# MOC_DIR += ../temp2
# #指定目标文件(obj)的存放目录
# OBJECTS_DIR += ../temp3

#程序编译时依赖的相关路径
DEPENDPATH += . forms include
#头文件包含路径
INCLUDEPATH += .
#定义编译选项，在.h文件中就可以使用 ：#ifdefine xx_xx_xxx
DEFINES += mainframe

# 引入的lib文件的路径  -L：引入路径
#LIBS += -L ../bin/release   
#引入的lib文件,用于引入动态链接库
#LIBS += dwbase.lib
## release 版引入的lib文件路径
#Release:LIBS += -L ../bin/release  
## Debug 版引入的lib 文件路径
#Debug:LIBS += -L ../bin/release  

#RC_FILE = xxx.icns

#增加makefile编译宏
#指定/mp编译选项，编译器将使用并行编译，同时起多个编译进程并行编译不同的cpp
QMAKE_CXXFLAGS += /MP	
#工程中包含的预编译头文件(打开了编译预处理头文件PCH)
PRECOMPILED_HEADER = src/stable.h
#工程中包含的头文件
HEADERS += src/mainwindow.h
#工程中包含的Cpp文件
SOURCES += src/main.cpp
SOURCES += src/mainwindow.cpp

#工程中包含的资源文件
RESOURCES += mainframe.qrc
#工程中包含的.ui设计文件
#FORMS += forms/scdmainform.ui 

