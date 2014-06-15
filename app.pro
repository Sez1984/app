#-------------------------------------------------
#
# Project created by QtCreator 2014-06-10T09:06:24
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = app
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/release/ -lmodule
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/debug/ -lmodule
else:unix: LIBS += -L$$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/ -lmodule

INCLUDEPATH += $$PWD/module
DEPENDPATH += $$PWD/module

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/release/libmodule.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/debug/libmodule.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/release/module.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/debug/module.lib
else:unix: PRE_TARGETDEPS += $$PWD/build-module-Desktop_Qt_5_3_0_MSVC2012_OpenGL_32bit-Debug/libmodule.a
