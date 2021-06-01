#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bit/catkin_ws1/src/vision_opencv/image_geometry"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bit/catkin_ws1/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bit/catkin_ws1/install/lib/python2.7/dist-packages:/home/bit/catkin_ws1/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bit/catkin_ws1/build" \
    "/usr/bin/python2" \
    "/home/bit/catkin_ws1/src/vision_opencv/image_geometry/setup.py" \
     \
    build --build-base "/home/bit/catkin_ws1/build/vision_opencv/image_geometry" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bit/catkin_ws1/install" --install-scripts="/home/bit/catkin_ws1/install/bin"
