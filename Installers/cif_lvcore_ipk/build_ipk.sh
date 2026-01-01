#!/bin/sh
pushd ./data/
tar --numeric-owner --group=0 --owner=0 -czf ../data.tar.gz ./*
popd

pushd ./control/
tar --numeric-owner --group=0 --owner=0 -czf ../control.tar.gz ./*
popd

tar --numeric-owner --group=0 --owner=0 -cf ../cif_lvcore.0.2.1.ipk ./debian-binary ./data.tar.gz ./control.tar.gz
rm ./data.tar.gz
rm ./control.tar.gz
popd
