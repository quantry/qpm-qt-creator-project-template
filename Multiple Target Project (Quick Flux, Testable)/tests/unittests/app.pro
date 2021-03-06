QT       += testlib qml

TARGET = %{ProjectName}
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += \
    main.cpp \
    tests.cpp

DEFINES += SRCDIR=\\\\\\"$$PWD/\\\\\\"
ROOTDIR = $$PWD/../../

include(vendor/vendor.pri)
include($$ROOTDIR/app/%{ApplicationProjectName}/%{ApplicationProjectName}.pri)


DISTFILES += \
    qpm.json \
    qmltests/tst_QmlTests.qml

HEADERS += \
    tests.h
