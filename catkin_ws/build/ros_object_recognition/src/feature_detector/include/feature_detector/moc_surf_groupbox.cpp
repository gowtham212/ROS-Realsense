/****************************************************************************
** Meta object code from reading C++ file 'surf_groupbox.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/ros_object_recognition/src/feature_detector/include/feature_detector/surf_groupbox.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'surf_groupbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_feature_detector__SurfGroupBox_t {
    QByteArrayData data[7];
    char stringdata0[158];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_feature_detector__SurfGroupBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_feature_detector__SurfGroupBox_t qt_meta_stringdata_feature_detector__SurfGroupBox = {
    {
QT_MOC_LITERAL(0, 0, 30), // "feature_detector::SurfGroupBox"
QT_MOC_LITERAL(1, 31, 29), // "requestHessianThresholdChange"
QT_MOC_LITERAL(2, 61, 0), // ""
QT_MOC_LITERAL(3, 62, 23), // "requestNumOctavesChange"
QT_MOC_LITERAL(4, 86, 28), // "requestNumOctaveLayersChange"
QT_MOC_LITERAL(5, 115, 21), // "requestExtendedChange"
QT_MOC_LITERAL(6, 137, 20) // "requestUprightChange"

    },
    "feature_detector::SurfGroupBox\0"
    "requestHessianThresholdChange\0\0"
    "requestNumOctavesChange\0"
    "requestNumOctaveLayersChange\0"
    "requestExtendedChange\0requestUprightChange"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_feature_detector__SurfGroupBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x08 /* Private */,
       3,    1,   42,    2, 0x08 /* Private */,
       4,    1,   45,    2, 0x08 /* Private */,
       5,    1,   48,    2, 0x08 /* Private */,
       6,    1,   51,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::Double,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Bool,    2,
    QMetaType::Void, QMetaType::Bool,    2,

       0        // eod
};

void feature_detector::SurfGroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SurfGroupBox *_t = static_cast<SurfGroupBox *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->requestHessianThresholdChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 1: _t->requestNumOctavesChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->requestNumOctaveLayersChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->requestExtendedChange((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: _t->requestUprightChange((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject feature_detector::SurfGroupBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_feature_detector__SurfGroupBox.data,
      qt_meta_data_feature_detector__SurfGroupBox,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *feature_detector::SurfGroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *feature_detector::SurfGroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_feature_detector__SurfGroupBox.stringdata0))
        return static_cast<void*>(this);
    return QGroupBox::qt_metacast(_clname);
}

int feature_detector::SurfGroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
