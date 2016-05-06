#!/usr/bin/env bash
set -e
compiler/vm/build.sh --build=release
mvn clean install
mvn -f plugins/idea/pom.xml clean install
mvn -f plugins/eclipse/pom.xml clean install
./plugins/gradle/gradlew -b plugins/gradle/build.gradle clean assemble install