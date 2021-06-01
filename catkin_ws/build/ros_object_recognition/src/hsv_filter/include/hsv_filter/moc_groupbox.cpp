/****************************************************************************
** Meta object code from reading C++ file 'groupbox.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/ros_object_recognition/src/hsv_filter/include/hsv_filter/groupbox.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'groupbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_hsv_filter__GroupBox_t {
    QByteArrayData data[9];
    char stringdata0[134];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_hsv_filter__GroupBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_hsv_filter__GroupBox_t qt_meta_stringdata_hsv_filter__GroupBox = {
    {
QT_MOC_LITERAL(0, 0, 20), // "hsv_filter::GroupBox"
QT_MOC_LITERAL(1, 21, 17), // "requestHMinChange"
QT_MOC_LITERAL(2, 39, 0), // ""
QT_MOC_LITERAL(3, 40, 3), // "val"
QT_MOC_LITERAL(4, 44, 17), // "requestHMaxChange"
QT_MOC_LITERAL(5, 62, 17), // "requestSMinChange"
QT_MOC_LITERAL(6, 80, 17), // "requestSMaxChange"
QT_MOC_LITERAL(7, 98, 17), // "requestVMinChange"
QT_MOC_LITERAL(8, 116, 17) // "requestVMaxChange"

    },
    "hsv_filter::GroupBox\0requestHMinChange\0"
    "\0val\0requestHMaxChange\0requestSMinChange\0"
    "requestSMaxChange\0requestVMinChange\0"
    "requestVMaxChange"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_hsv_filter__GroupBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x08 /* Private */,
       4,    1,   47,    2, 0x08 /* Private */,
       5,    1,   50,    2, 0x08 /* Private */,
       6,    1,   53,    2, 0x08 /* Private */,
       7,    1,   56,    2, 0x08 /* Private */,
       8,    1,   59,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void, QMetaType::Int,    3,

       0        // eod
};

void hsv_filter::GroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GroupBox *_t = static_cast<GroupBox *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->requestHMinChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 1: _t->requestHMaxChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 2: _t->requestSMinChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 3: _t->requestSMaxChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 4: _t->requestVMinChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 5: _t->requestVMaxChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject hsv_filter::GroupBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_hsv_filter__GroupBox.data,
      qt_meta_data_hsv_filter__GroupBox,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *hsv_filter::GroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *hsv_filter::GroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_hsv_filter__GroupBox.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "object_detection::Observer"))
        return static_cast< object_detection::Observer*>(this);
    return QGroupBox::qt_metacast(_clname);
}

int hsv_filter::GroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
