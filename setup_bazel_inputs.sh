#!/bin/bash
sbt compile

cp -r compiler-plugin/target/jvm-2.13/src_managed/main compiler-plugin/generated
