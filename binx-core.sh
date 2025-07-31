#!/bin/bash
# BinX Core Library - Maintained by ONKI

function __binx::init() {
    echo -e "⛓ BinX يفتح القناة الآمنة: تحميل المكتبات الحيوية قيد التنفيذ..."
    sleep 0.6
}

function __binx::log_info() {
    echo -e "🔹 [INFO] $1"
}

function __binx::log_warn() {
    echo -e "🟠 [WARN] $1"
}

function __binx::log_error() {
    echo -e "🔴 [ERROR] $1"
}

function __binx::check_dep() {
    command -v "$1" >/dev/null 2>&1 || {
        __binx::log_warn "$1 غير مثبت. قد تحدث أخطاء مستقبلًا."
    }
}

function __binx::banner() {
    echo -e "██████╗ ██╗███╗   ██╗██╗  ██╗"
    echo -e "██╔══██╗██║████╗  ██║██║ ██╔╝"
    echo -e "██████╔╝██║██╔██╗ ██║█████╔╝ "
    echo -e "██╔═══╝ ██║██║╚██╗██║██╔═██╗ "
    echo -e "██║     ██║██║ ╚████║██║  ██╗"
    echo -e "╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝"
    echo -e "🔧 BinX Core Module Loaded"
}

function __binx::verify_root() {
    if [ "$(id -u)" != "0" ]; then
        __binx::log_error "يجب تشغيل هذا السكربت بصلاحيات الجذر (Root)."
        exit 1
    fi
}
