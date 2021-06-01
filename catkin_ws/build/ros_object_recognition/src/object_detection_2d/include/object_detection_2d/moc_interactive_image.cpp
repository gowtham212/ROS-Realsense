/****************************************************************************
** Meta object code from reading C++ file 'interactive_image.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/ros_object_recognition/src/object_detection_2d/include/object_detection_2d/interactive_image.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'interactive_image.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_object_detection_2d__InteractiveImage_t {
    QByteArrayData data[8];
    char stringdata0[128];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_object_detection_2d__InteractiveImage_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_object_detection_2d__InteractiveImage_t qt_meta_stringdata_object_detection_2d__InteractiveImage = {
    {
QT_MOC_LITERAL(0, 0, 37), // "object_detection_2d::Interact..."
QT_MOC_LITERAL(1, 38, 16), // "mousePressSignal"
QT_MOC_LITERAL(2, 55, 0), // ""
QT_MOC_LITERAL(3, 56, 18), // "const QMouseEvent*"
QT_MOC_LITERAL(4, 75, 15), // "mouseMoveSignal"
QT_MOC_LITERAL(5, 91, 18), // "mouseReleaseSignal"
QT_MOC_LITERAL(6, 110, 12), // "areaSelected"
QT_MOC_LITERAL(7, 123, 4) // "area"

    },
    "object_detection_2d::InteractiveImage\0"
    "mousePressSignal\0\0const QMouseEvent*\0"
    "mouseMoveSignal\0mouseReleaseSignal\0"
    "areaSelected\0area"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_object_detection_2d__InteractiveImage[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x06 /* Public */,
       4,    1,   37,    2, 0x06 /* Public */,
       5,    1,   40,    2, 0x06 /* Public */,
       6,    1,   43,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, QMetaType::QRect,    7,

       0        // eod
};

void object_detection_2d::InteractiveImage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        InteractiveImage *_t = static_cast<InteractiveImage *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mousePressSignal((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        case 1: _t->mouseMoveSignal((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        case 2: _t->mouseReleaseSignal((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        case 3: _t->areaSelected((*reinterpret_cast< const QRect(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            typedef void (InteractiveImage::*_t)(const QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&InteractiveImage::mousePressSignal)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (InteractiveImage::*_t)(const QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&InteractiveImage::mouseMoveSignal)) {
                *result = 1;
                return;
            }
        }
        {
            typedef void (InteractiveImage::*_t)(const QMouseEvent * );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&InteractiveImage::mouseReleaseSignal)) {
                *result = 2;
                return;
            }
        }
        {
            typedef void (InteractiveImage::*_t)(const QRect & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&InteractiveImage::areaSelected)) {
                *result = 3;
                return;
            }
        }
    }
}

const QMetaObject object_detection_2d::InteractiveImage::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_object_detection_2d__InteractiveImage.data,
      qt_meta_data_object_detection_2d__InteractiveImage,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *object_detection_2d::InteractiveImage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *object_detection_2d::InteractiveImage::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_object_detection_2d__InteractiveImage.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int object_detection_2d::InteractiveImage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
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
void object_detection_2d::InteractiveImage::mousePressSignal(const QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void object_detection_2d::InteractiveImage::mouseMoveSignal(const QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void object_detection_2d::InteractiveImage::mouseReleaseSignal(const QMouseEvent * _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void object_detection_2d::InteractiveImage::areaSelected(const QRect & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
