#-------------------------------------------------
#
# Project created by QtCreator 2014-06-18T16:09:46
#
#-------------------------------------------------

QT       -= gui

TARGET = module1
TEMPLATE = lib

DEFINES += MODULE1_LIBRARY

SOURCES += module1.cpp

HEADERS += module1.h\
        module1_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
