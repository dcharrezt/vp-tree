#-------------------------------------------------
#
# Project created by QtCreator 2017-12-28T18:22:39
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = vp-tree
TEMPLATE = app

LIBS += -pthread
LIBS += -lX11
QMAKE_CXXFLAGS += -std=c++11 -lX11 -pthread

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h \
    VpTree.h \
    CImg.h \
    CImg.h \
    mainwindow.h \
    VpTree.h

FORMS += \
        mainwindow.ui

DISTFILES += \
    jaffe/7.123 \
    jaffe/convertir.sh \
    jaffe/1.104 \
    jaffe/1.105 \
    jaffe/1.106 \
    jaffe/1.125 \
    jaffe/1.126 \
    jaffe/1.127 \
    jaffe/1.146 \
    jaffe/1.147 \
    jaffe/1.148 \
    jaffe/1.167 \
    jaffe/1.168 \
    jaffe/1.169 \
    jaffe/1.17 \
    jaffe/1.18 \
    jaffe/1.19 \
    jaffe/1.190 \
    jaffe/1.191 \
    jaffe/1.192 \
    jaffe/1.211 \
    jaffe/1.212 \
    jaffe/1.213 \
    jaffe/1.39 \
    jaffe/1.40 \
    jaffe/1.41 \
    jaffe/1.61 \
    jaffe/1.62 \
    jaffe/1.63 \
    jaffe/1.83 \
    jaffe/1.84 \
    jaffe/1.85 \
    jaffe/2.107 \
    jaffe/2.109 \
    jaffe/2.128 \
    jaffe/2.129 \
    jaffe/2.130 \
    jaffe/2.149 \
    jaffe/2.150 \
    jaffe/2.151 \
    jaffe/2.170 \
    jaffe/2.171 \
    jaffe/2.172 \
    jaffe/2.173 \
    jaffe/2.193 \
    jaffe/2.194 \
    jaffe/2.195 \
    jaffe/2.20 \
    jaffe/2.214 \
    jaffe/2.215 \
    jaffe/2.216 \
    jaffe/2.22 \
    jaffe/2.42 \
    jaffe/2.43 \
    jaffe/2.44 \
    jaffe/2.64 \
    jaffe/2.65 \
    jaffe/2.66 \
    jaffe/2.86 \
    jaffe/2.87 \
    jaffe/2.88 \
    jaffe/3.110 \
    jaffe/3.111 \
    jaffe/3.112 \
    jaffe/3.131 \
    jaffe/3.132 \
    jaffe/3.133 \
    jaffe/3.152 \
    jaffe/3.153 \
    jaffe/3.154 \
    jaffe/3.174 \
    jaffe/3.175 \
    jaffe/3.176 \
    jaffe/3.196 \
    jaffe/3.197 \
    jaffe/3.198 \
    jaffe/3.217 \
    jaffe/3.218 \
    jaffe/3.219 \
    jaffe/3.23 \
    jaffe/3.24 \
    jaffe/3.25 \
    jaffe/3.45 \
    jaffe/3.46 \
    jaffe/3.47 \
    jaffe/3.48 \
    jaffe/3.67 \
    jaffe/3.68 \
    jaffe/3.69 \
    jaffe/3.70 \
    jaffe/3.89 \
    jaffe/3.90 \
    jaffe/3.91 \
    jaffe/4.116 \
    jaffe/4.117 \
    jaffe/4.118 \
    jaffe/4.137 \
    jaffe/4.138 \
    jaffe/4.139 \
    jaffe/4.158 \
    jaffe/4.159 \
    jaffe/4.160 \
    jaffe/4.180 \
    jaffe/4.181 \
    jaffe/4.182 \
    jaffe/4.202 \
    jaffe/4.203 \
    jaffe/4.204 \
    jaffe/4.29 \
    jaffe/4.30 \
    jaffe/4.31 \
    jaffe/4.32 \
    jaffe/4.4 \
    jaffe/4.5 \
    jaffe/4.52 \
    jaffe/4.53 \
    jaffe/4.54 \
    jaffe/4.6 \
    jaffe/4.7 \
    jaffe/4.74 \
    jaffe/4.75 \
    jaffe/4.95 \
    jaffe/4.96 \
    jaffe/4.97 \
    jaffe/5.1 \
    jaffe/5.113 \
    jaffe/5.114 \
    jaffe/5.115 \
    jaffe/5.134 \
    jaffe/5.135 \
    jaffe/5.136 \
    jaffe/5.155 \
    jaffe/5.156 \
    jaffe/5.157 \
    jaffe/5.177 \
    jaffe/5.178 \
    jaffe/5.179 \
    jaffe/5.199 \
    jaffe/5.2 \
    jaffe/5.200 \
    jaffe/5.201 \
    jaffe/5.26 \
    jaffe/5.27 \
    jaffe/5.28 \
    jaffe/5.3 \
    jaffe/5.49 \
    jaffe/5.50 \
    jaffe/5.51 \
    jaffe/5.71 \
    jaffe/5.72 \
    jaffe/5.73 \
    jaffe/5.92 \
    jaffe/5.93 \
    jaffe/5.94 \
    jaffe/6.10 \
    jaffe/6.100 \
    jaffe/6.11 \
    jaffe/6.119 \
    jaffe/6.120 \
    jaffe/6.121 \
    jaffe/6.13 \
    jaffe/6.140 \
    jaffe/6.141 \
    jaffe/6.142 \
    jaffe/6.161 \
    jaffe/6.162 \
    jaffe/6.163 \
    jaffe/6.184 \
    jaffe/6.185 \
    jaffe/6.186 \
    jaffe/6.205 \
    jaffe/6.206 \
    jaffe/6.207 \
    jaffe/6.33 \
    jaffe/6.34 \
    jaffe/6.35 \
    jaffe/6.55 \
    jaffe/6.56 \
    jaffe/6.57 \
    jaffe/6.77 \
    jaffe/6.78 \
    jaffe/6.79 \
    jaffe/6.9 \
    jaffe/6.98 \
    jaffe/6.99 \
    jaffe/7.101 \
    jaffe/7.102 \
    jaffe/7.103 \
    jaffe/7.122 \
    jaffe/7.124 \
    jaffe/7.14 \
    jaffe/7.143 \
    jaffe/7.144 \
    jaffe/7.145 \
    jaffe/7.15 \
    jaffe/7.16 \
    jaffe/7.164 \
    jaffe/7.165 \
    jaffe/7.166 \
    jaffe/7.187 \
    jaffe/7.188 \
    jaffe/7.189 \
    jaffe/7.208 \
    jaffe/7.209 \
    jaffe/7.210 \
    jaffe/7.36 \
    jaffe/7.37 \
    jaffe/7.38 \
    jaffe/7.58 \
    jaffe/7.59 \
    jaffe/7.60 \
    jaffe/7.80 \
    jaffe/7.81 \
    jaffe/7.82 \
    jaffe/moods.dat \
    jaffe/names.dat \
    jaffe/mod_names.py \
    jaffe/README
