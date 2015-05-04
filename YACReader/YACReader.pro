# #####################################################################
# Automatically generated by qmake (2.01a) mié 8. oct 20:54:05 2008
# #####################################################################
TEMPLATE = app
TARGET = YACReader
DEPENDPATH += . \
    release

DEFINES += NOMINMAX YACREADER

CONFIG(no_opengl) {
	DEFINES += NO_OPENGL
}


 unix:!macx{
QMAKE_CXXFLAGS += -std=c++11
}

Release:DESTDIR = ../release
Debug:DESTDIR = ../debug

SOURCES += main.cpp

INCLUDEPATH += ../common \
                            ../custom_widgets

CONFIG(legacy_gl_widget) {
    INCLUDEPATH += ../common/gl_legacy \
} else {
    INCLUDEPATH += ../common/gl \
}

win32 {
LIBS += -L../dependencies/poppler/lib -loleaut32 -lole32

LIBS += -lpoppler-qt5
INCLUDEPATH += ../dependencies/poppler/include/qt5

QMAKE_CXXFLAGS_RELEASE += /MP /Ob2 /Oi /Ot /GT
!CONFIG(no_opengl) {
        QMAKE_CXXFLAGS_RELEASE += /GL
}
QMAKE_LFLAGS_RELEASE += /LTCG
CONFIG -= embed_manifest_exe
}

unix:!macx{

INCLUDEPATH  += /usr/include/poppler/qt5
LIBS         += -L/usr/lib -lpoppler-qt5

!CONFIG(no_opengl) {
        LIBS += -lGLU
}

}

macx{
#INCLUDEPATH  += "/Volumes/Mac OS X Lion/usr/X11/include"
#isEqual(QT_MAJOR_VERSION, 5) {
#INCLUDEPATH  += /usr/local/include/poppler/qt5
#LIBS         += -L/usr/local/lib -lpoppler-qt5
#}
#else {
#INCLUDEPATH  += /usr/local/include/poppler/qt4
#LIBS         += -L/usr/local/lib -lpoppler-qt4
#}
CONFIG += objective_c
QT += macextras gui-private


LIBS += -framework Foundation -framework ApplicationServices -framework AppKit

OBJECTIVE_SOURCES += ../common/pdf_comic.mm
HEADERS += ../common/pdf_comic.h
}

QT += network widgets core
!CONFIG(no_opengl) {
        QT += opengl
}

#CONFIG += release
CONFIG -= flat

QT += multimedia

# Input
HEADERS += ../common/comic.h \
    configuration.h \
    goto_dialog.h \
    magnifying_glass.h \
        main_window_viewer.h \
    viewer.h \
    goto_flow.h \
    options_dialog.h \
    ../common/bookmarks.h \
    bookmarks_dialog.h \
    render.h \
    shortcuts_dialog.h \
        translator.h \
        goto_flow_widget.h \
        page_label_widget.h \
        goto_flow_toolbar.h \
        goto_flow_decorationbar.h \
        width_slider.h \
        notifications_label_widget.h \
        ../common/pictureflow.h \
    ../common/custom_widgets.h \
    ../common/check_new_version.h \
        ../common/qnaturalsorting.h \
        ../common/yacreader_global.h \
        ../common/onstart_flow_selection_dialog.h \
        ../common/comic_db.h \
        ../common/folder.h \
        ../common/library_item.h \
        yacreader_local_client.h \
        ../common/http_worker.h \
        ../common/exit_check.h \
        ../common/scroll_management.h

!CONFIG(no_opengl) {
    CONFIG(legacy_gl_widget) {
        message("using legacy YACReaderFlowGL (QGLWidget) header")
        HEADERS += ../common/gl_legacy/yacreader_flow_gl.h
    } else {
        HEADERS += ../common/gl/yacreader_flow_gl.h
    }
    HEADERS += 	goto_flow_gl.h
}

SOURCES += ../common/comic.cpp \
    configuration.cpp \
    goto_dialog.cpp \
        magnifying_glass.cpp \
    main_window_viewer.cpp \
    viewer.cpp \
    goto_flow.cpp \
    options_dialog.cpp \
    ../common/bookmarks.cpp \
    bookmarks_dialog.cpp \
    render.cpp \
    shortcuts_dialog.cpp \
        translator.cpp \
        goto_flow_widget.cpp \
        page_label_widget.cpp \
        goto_flow_toolbar.cpp \
        goto_flow_decorationbar.cpp \
        width_slider.cpp \
        notifications_label_widget.cpp \
    ../common/pictureflow.cpp \
    ../common/custom_widgets.cpp \
    ../common/check_new_version.cpp \
        ../common/qnaturalsorting.cpp \
        ../common/onstart_flow_selection_dialog.cpp \
        ../common/comic_db.cpp \
        ../common/folder.cpp \
        ../common/library_item.cpp \
        yacreader_local_client.cpp \
    ../common/http_worker.cpp \
    ../common/yacreader_global.cpp \
        ../common/exit_check.cpp \
    ../common/scroll_management.cpp

!CONFIG(no_opengl) {
    CONFIG(legacy_gl_widget) {
        message("using legacy YACReaderFlowGL (QGLWidget) source code")
        SOURCES += ../common/gl_legacy/yacreader_flow_gl.cpp
    } else {
        SOURCES += ../common/gl/yacreader_flow_gl.cpp
    }
    SOURCES += goto_flow_gl.cpp
}

include(../custom_widgets/custom_widgets_yacreader.pri)
!CONFIG(unarr){
include(../compressed_archive/wrapper.pri)
} else {
include(../compressed_archive/unarr/unarr-wrapper.pri)
}
include(../shortcuts_management/shortcuts_management.pri)

RESOURCES += yacreader_images.qrc \
    yacreader_files.qrc

win32:RESOURCES += yacreader_images_win.qrc
unix:!macx:RESOURCES += yacreader_images_win.qrc
macx:RESOURCES += yacreader_images_osx.qrc


include(../QsLog/QsLog.pri)

RC_FILE = icon.rc

macx {
	ICON = YACReader.icns
}

TRANSLATIONS = yacreader_es.ts \
								  yacreader_fr.ts \ 
								  yacreader_ru.ts \
								  yacreader_pt.ts \
								  yacreader_nl.ts \
								  yacreader_tr.ts \
								  yacreader_de.ts \
								  yacreader_source.ts  

!CONFIG(unarr){
win32 {
!exists (../compressed_archive/lib7zip) {
	error(You\'ll need 7zip source code to compile YACReader. \
	Please check the compressed_archive folder for further instructions.)
}
}

unix {
exists (../compressed_archive/libp7zip) {
	message(Found p7zip source code...)
	system(patch -d ../compressed_archive -N -p0 -i libp7zip.patch)
} else {
	error(You\'ll need 7zip source code to compile YACReader. \
	Please check the compressed_archive folder for further instructions.)
}
}
} 

unix:!macx {
#set install prefix if it's empty
isEmpty(PREFIX) {
	PREFIX = /usr
}

BINDIR = $$PREFIX/bin
LIBDIR = $$PREFIX/lib
DATADIR = $$PREFIX/share

DEFINES += "LIBDIR=\\\"$$LIBDIR\\\""  "DATADIR=\\\"$$DATADIR\\\""

#MAKE INSTALL

INSTALLS += bin docs icon desktop translation manpage

bin.path = $$BINDIR
isEmpty(DESTDIR) {
	bin.files = YACReader
} else {
	bin.files = $$DESTDIR/YACReader
}

docs.path = $$DATADIR/doc/yacreader

#rename docs for better packageability
docs.extra = cp ../CHANGELOG.txt ../changelog; cp ../README.txt ../README
docs.files = ../README ../changelog

icon.path = $$DATADIR/yacreader
icon.files = ../images/icon.png

desktop.path = $$DATADIR/applications
desktop.extra = desktop-file-edit --set-icon=$$DATADIR/yacreader/icon.png ../YACReader.desktop
desktop.files = ../YACReader.desktop

#TODO: icons should be located at /usr/share/icons and have the same basename as their application

translation.path = $$DATADIR/yacreader/languages
translation.files = ../release/languages/yacreader_*

manpage.path = $$DATADIR/man/man1
manpage.files = ../YACReader.1

#remove leftover doc files when 'make clean' is invoked
QMAKE_CLEAN += "../changelog" "../README"
}
