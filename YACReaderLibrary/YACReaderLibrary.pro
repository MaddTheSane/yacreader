######################################################################
# Automatically generated by qmake (2.01a) dom 12. oct 20:47:48 2008
######################################################################

TEMPLATE = app
TARGET = YACReaderLibrary
DEPENDPATH += .
INCLUDEPATH += .
INCLUDEPATH += ../common \
	           ./server \
			   ./db \
			   ../custom_widgets \
			   ./comic_vine \
			   ./comic_vine/model

DEFINES += SERVER_RELEASE NOMINMAX YACREADER_LIBRARY

CONFIG(no_opengl) {
	DEFINES += NO_OPENGL
}
			   
win32 {

LIBS += -L../dependencies/poppler/lib -loleaut32 -lole32 -lshell32

LIBS += -lpoppler-qt5
INCLUDEPATH += ../dependencies/poppler/include/qt5

QMAKE_CXXFLAGS_RELEASE += /MP /Ob2 /Oi /Ot /GT
!CONFIG(no_opengl) {
	QMAKE_CXXFLAGS_RELEASE +=  /GL
}
QMAKE_LFLAGS_RELEASE += /LTCG
CONFIG -= embed_manifest_exe
}

unix:!macx{

INCLUDEPATH  += /usr/include/poppler/qt5
LIBS         += -L/usr/lib -lpoppler-qt5

!CONFIG(no_opengl) {
	LIBS	     += -lGLU
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
#QT += macextras

LIBS += -framework Foundation -framework ApplicationServices -framework AppKit

OBJECTIVE_SOURCES += $$PWD/../common/pdf_comic.mm
HEADERS += $$PWD/../common/pdf_comic.h
CONFIG += objective_c
QT += macextras gui-private
}

unix{
QMAKE_CXXFLAGS += -std=c++11
}

#CONFIG += release
CONFIG -= flat
QT += sql network widgets script
!CONFIG(no_opengl) {
	QT += opengl
}

# Input
HEADERS += comic_flow.h \
           create_library_dialog.h \
           library_creator.h \
           library_window.h \
           add_library_dialog.h \
           rename_library_dialog.h \
           properties_dialog.h \
           options_dialog.h \
           export_library_dialog.h \
           import_library_dialog.h \
           package_manager.h \
           bundle_creator.h \
           export_comics_info_dialog.h \
           import_comics_info_dialog.h \
           server_config_dialog.h \
           comic_flow_widget.h \
           db_helper.h \
           ./db/data_base_management.h \
           ./db/folder_item.h \
           ./db/folder_model.h \
           ./db/comic_model.h \
           ./db/comic_item.h \
           ../common/comic_db.h \
           ../common/folder.h \
           ../common/library_item.h \
           ../common/comic.h \
           ../common/bookmarks.h \
           ../common/pictureflow.h \
           ../common/custom_widgets.h \
           ../common/qnaturalsorting.h \
           ../common/yacreader_global.h \
           ../common/onstart_flow_selection_dialog.h \
           no_libraries_widget.h \
           import_widget.h \
           yacreader_local_server.h \
           yacreader_main_toolbar.h \
           comics_remover.h \
           ../common/http_worker.h \
           yacreader_libraries.h \
           ../common/exit_check.h \
           comics_view.h \
           classic_comics_view.h \
           empty_folder_widget.h \
           no_search_results_widget.h \
           comic_files_manager.h \
           db/reading_list_model.h \
           db/reading_list_item.h \
    yacreader_folders_view.h \
    yacreader_reading_lists_view.h \
    add_label_dialog.h \
    yacreader_history_controller.h \
    yacreader_navigation_controller.h \
    empty_label_widget.h \
    empty_container_info.h \
    empty_special_list.h \
    empty_reading_list_widget.h \
    ../common/scroll_management.h

!CONFIG(no_opengl) {
	HEADERS += ../common/yacreader_flow_gl.h
	}
		   
SOURCES += comic_flow.cpp \
           create_library_dialog.cpp \
           library_creator.cpp \
           library_window.cpp \
           main.cpp \
           add_library_dialog.cpp \
           rename_library_dialog.cpp \
           properties_dialog.cpp \
           options_dialog.cpp \
           export_library_dialog.cpp \
           import_library_dialog.cpp \
           package_manager.cpp \
           bundle_creator.cpp \
           export_comics_info_dialog.cpp \
           import_comics_info_dialog.cpp \
           server_config_dialog.cpp \
           comic_flow_widget.cpp \
           db_helper.cpp \
           ./db/data_base_management.cpp \
           ./db/folder_item.cpp \
           ./db/folder_model.cpp \
           ./db/comic_model.cpp \
           ./db/comic_item.cpp \
           ../common/comic_db.cpp \
           ../common/folder.cpp \
           ../common/library_item.cpp \
           ../common/comic.cpp \
           ../common/bookmarks.cpp \
           ../common/pictureflow.cpp \
           ../common/custom_widgets.cpp \
           ../common/qnaturalsorting.cpp \
           ../common/onstart_flow_selection_dialog.cpp \
           no_libraries_widget.cpp \
           import_widget.cpp \
           yacreader_local_server.cpp \
           yacreader_main_toolbar.cpp \
           comics_remover.cpp \
           ../common/http_worker.cpp \
           ../common/yacreader_global.cpp \
           yacreader_libraries.cpp \
           ../common/exit_check.cpp \
           comics_view.cpp \
           classic_comics_view.cpp \
           empty_folder_widget.cpp \
           no_search_results_widget.cpp \
           comic_files_manager.cpp \
           db/reading_list_model.cpp \
           db/reading_list_item.cpp \
    yacreader_folders_view.cpp \
    yacreader_reading_lists_view.cpp \
    add_label_dialog.cpp \
    yacreader_history_controller.cpp \
    yacreader_navigation_controller.cpp \
    empty_label_widget.cpp \
    empty_container_info.cpp \
    empty_special_list.cpp \
    empty_reading_list_widget.cpp \
    ../common/scroll_management.cpp

!CONFIG(no_opengl) {
         SOURCES += ../common/yacreader_flow_gl.cpp
}

				   
include(./server/server.pri)
include(../custom_widgets/custom_widgets_yacreaderlibrary.pri)
include(../compressed_archive/wrapper.pri)
include(./comic_vine/comic_vine.pri)
include(../QsLog/QsLog.pri)
include(../shortcuts_management/shortcuts_management.pri)

RESOURCES += images.qrc files.qrc
win32:RESOURCES += images_win.qrc
unix:!macx:RESOURCES += images_win.qrc
macx:RESOURCES += images_osx.qrc

RC_FILE = icon.rc

macx {
	ICON = YACReaderLibrary.icns
}

TRANSLATIONS    = yacreaderlibrary_es.ts \ 
									yacreaderlibrary_ru.ts \
									yacreaderlibrary_pt.ts \
									yacreaderlibrary_fr.ts \
									yacreaderlibrary_nl.ts \
									yacreaderlibrary_tr.ts \
									yacreaderlibrary_de.ts \
									yacreaderlibrary_source.ts


Release:DESTDIR = ../release
Debug:DESTDIR = ../debug

#QML/GridView
QT += quick qml

HEADERS += grid_comics_view.h \
           comics_view_transition.h

SOURCES += grid_comics_view.cpp \
           comics_view_transition.cpp

RESOURCES += qml.qrc
win32:RESOURCES += qml_win.qrc
unix:!macx:RESOURCES += qml_win.qrc
macx:RESOURCES += qml_osx.qrc

} else {
	Release:DESTDIR = ../release
	Debug:DESTDIR = ../debug
}

win32 {
!exists(../compressed_archive/lib7zip){
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

unix:!macx {
#set install prefix if it's empty
isEmpty(PREFIX) {
	PREFIX = /usr
}

BINDIR = $$PREFIX/bin
LIBDIR = $$PREFIX/lib
DATADIR = $$PREFIX/share

DEFINES += "LIBDIR=\\\"$$LIBDIR\\\""  "DATADIR=\\\"$$DATADIR\\\"" "BINDIR=\\\"$$BINDIR\\\""

#MAKE INSTALL
INSTALLS += bin icon desktop server translation manpage

bin.path = $$BINDIR
isEmpty(DESTDIR) {
	bin.files = YACReaderLibrary
} else {
	bin.files = $$DESTDIR/YACReaderLibrary
}

server.path = $$DATADIR/yacreader
server.files = ../release/server

icon.path = $$DATADIR/yacreader
icon.files = ../images/iconLibrary.png ../images/db.png ../images/coversPackage.png

desktop.path = $$DATADIR/applications
desktop.extra = desktop-file-edit --set-icon=$$DATADIR/yacreader/iconLibrary.png $$PWD/../YACReaderLibrary.desktop
desktop.files = ../YACReaderLibrary.desktop
#TODO: icons should be located at /usr/share/icons and have the same basename as their application

translation.path = $$DATADIR/yacreader/languages
translation.files = ../release/languages/yacreaderlibrary_*

manpage.path = $$DATADIR/man/man1
manpage.files = ../YACReaderLibrary.1
}
