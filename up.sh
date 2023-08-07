#!/bin/sh
./nomadup vagrant up --provider=libvirt --no-provision $@ \
    && ./nomadup vagrant --provider=libvirt provision
