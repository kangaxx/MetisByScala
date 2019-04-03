#!/bin/bash
if [ $# -gt 1 ]
then
  send_user "Error, no argument , usage: expect  crtMvnProj.exp projName\n"
  exit
else
  mkdir $1
  cd $1
  touch build.properties
  echo "sbt.version=1.2.8" > build.properties
  touch build.sbt
  echo "name:=\"$1\"" > build.sbt
  echo "organization:=\"cn.sh.corpize\"" >> build.sbt
  echo "version:=\"0.1-SNAPSHOT\"" >> build.sbt
  echo "scalaVersion:=\"2.11.8\"" >> build.sbt

fi
