/****************************************************************************
** Meta object code from reading C++ file 'groupbox.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/ros_object_recognition/src/binary_detector/include/binary_detector/groupbox.h"
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
struct qt_meta_stringdata_binary_detector__GroupBox_t {
    QByteArrayData data[6];
    char stringdata0[99];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_binary_detector__GroupBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_binary_detector__GroupBox_t qt_meta_stringdata_binary_detector__GroupBox = {
    {
QT_MOC_LITERAL(0, 0, 25), // "binary_detector::GroupBox"
QT_MOC_LITERAL(1, 26, 12), // "minLCDSignal"
QT_MOC_LITERAL(2, 39, 0), // ""
QT_MOC_LITERAL(3, 40, 12), // "maxLCDSignal"
QT_MOC_LITERAL(4, 53, 22), // "requestMinLengthChange"
QT_MOC_LITERAL(5, 76, 22) // "requestMaxLengthChange"

    },
    "binary_detector::GroupBox\0minLCDSignal\0"
    "\0maxLCDSignal\0requestMinLengthChange\0"
    "requestMaxLengthChange"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_binary_detector__GroupBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06 /* Public */,
       3,    1,   37,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    1,   40,    2, 0x08 /* Private */,
       5,    1,   43,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Double,    2,
    QMetaType::Void, QMetaType::Double,    2,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,

       0        // eod
};

void binary_detector::GroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        GroupBox *_t = static_cast<GroupBox *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->minLCDSignal((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 1: _t->maxLCDSignal((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 2: _t->requestMinLengthChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        case 3: _t->requestMaxLengthChange((*reinterpret_cast< const int(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (GroupBox::*_t)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GroupBox::minLCDSignal)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (GroupBox::*_t)(double );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&GroupBox::maxLCDSignal)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject binary_detector::GroupBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_binary_detector__GroupBox.data,
      qt_meta_data_binary_detector__GroupBox,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *binary_detector::GroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *binary_detector::GroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_binary_detector__GroupBox.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "object_detection::Observer"))
        return static_cast< object_detection::Observer*>(this);
    return QGroupBox::qt_metacast(_clname);
}

int binary_detector::GroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void binary_detector::GroupBox::minLCDSignal(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void binary_detector::GroupBox::maxLCDSignal(double _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
