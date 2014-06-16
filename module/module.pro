#-------------------------------------------------
#
# Project created by QtCreator 2014-06-10T09:08:52
#
#-------------------------------------------------

QT       -= gui

TARGET = module
TEMPLATE = lib
CONFIG += staticlib

SOURCES += module.cpp

HEADERS += module.h
unix {
    target.path = /usr/lib
    INSTALLS += target
}
