#!/bin/bash

rm ./packaging/usr/lib/CalcApp/*
rm ./packaging.deb

cd ./src/CalcApp/
dotnet publish
cp -a ./bin/Release/net9.0/publish/* ../../packaging/usr/lib/CalcApp/
cd ../../

chmod 755 ./packaging/usr/
chmod 755 ./packaging/usr/bin/
chmod 755 ./packaging/usr/lib/
chmod 755 ./packaging/usr/lib/CalcApp

chmod 644 ./packaging/usr/lib/CalcApp/*.*
chmod +x ./packaging/usr/lib/CalcApp

chmod 755 ./packaging/usr/bin/calc-app

dpkg-deb --build ./packaging/

mv ./packaging.deb ./calc-app.deb

lintian ./calc-app.deb