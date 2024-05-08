#!/bin/bash
cat $1 | docker run --rm -i -a stdin -a stdout msoos/approxmc