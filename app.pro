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





win32:CONFIG(release, debug|release): LIBS += -L$$PWD/module/build-module1-Desktop_Qt_5_3_0_MSVC2010_OpenGL_32bit-Debug/release/ -lmodule1
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/module/build-module1-Desktop_Qt_5_3_0_MSVC2010_OpenGL_32bit-Debug/debug/ -lmodule1

INCLUDEPATH += $$PWD/module/module1
DEPENDPATH += $$PWD/module/module1
