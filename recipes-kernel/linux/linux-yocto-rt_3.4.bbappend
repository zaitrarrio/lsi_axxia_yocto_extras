FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/linux-3.4/${MACHINE}:"

require ${PN}/linux-3.4/${MACHINE}/${MACHINE}.inc

LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

COMPATIBLE_MACHINE_${MACHINE} = "${MACHINE}"
KMACHINE_${MACHINE} = "${MACHINE}"

LINUX_VERSION = "3.4.28"
KMETA = "meta"

SRCREV_machine_${MACHINE}="${AUTOREV}"
SRCREV_meta="${AUTOREV}"
LOCALCOUNT = "0"

#KSRC_linux_yocto_3_4 = "/home/pbutler/work/repos/lsi_axxia_yocto/"
#SRC_URI_${MACHINE} = "git://${KSRC_linux_yocto_3_4};protocol=file;bareclone=1;branch=${KBRANCH};name=machine"
KSRC_linux_yocto_3_4 = "git@github.com/lsigithub/lsi_axxia_yocto.git"
SRC_URI_${MACHINE} = "git://${KSRC_linux_yocto_3_4};protocol=ssh;bareclone=1;branch=${KBRANCH};name=machine"

SRC_URI_${MACHINE} += "file://defconfig"

