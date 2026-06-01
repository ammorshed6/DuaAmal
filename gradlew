#!/bin/sh
exec "$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar" "$@" 2>/dev/null || \
JAVA_HOME="${JAVA_HOME:-$(dirname "$(readlink -f "$(which java")")")/..}" \
java -classpath "$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar" \
  org.gradle.wrapper.GradleWrapperMain "$@" 2>/dev/null || \
gradle "$@"
