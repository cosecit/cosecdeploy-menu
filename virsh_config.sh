#!/bin/bash
############################################################################
# CoSecIT
#
# virsh settings
#
#
####################################################################pl######
virsh pool-destroy default
virsh pool-delete default
virsh pool-undefine default
sleep 1
virsh pool-define-as default dir --target /daten/vm
virsh pool-build default
virsh pool-start default
virsh pool-autostart default
