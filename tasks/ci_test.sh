#!/bin/bash

EXIT_STATE=0

case $CIRCLE_NODE_INDEX in

    0)
        npm run test-image-gl2d || EXIT_STATE=$?
        exit $EXIT_STATE
        ;;

    1)
        npm run test-jasmine || EXIT_STATE=$?
        exit $EXIT_STATE
        ;;

esac
