FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/linux-3.4/${MACHINE}:"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

require ${PN}/linux-3.4/${MACHINE}/${MACHINE}.inc

# for local repo
#KSRC_linux_custom ?= "/home/pbutler/work/repos/lsi_axxia_yocto_public/"
#SRC_URI_${MACHINE} ?= "git://${KSRC_linux_custom};protocol=file;bareclone=1;branch=${KBRANCH}"

# for gtihub repo
KSRC_linux_custom ?= "github.com/lsigithub/lsi_axxia_yocto_public.git"
SRC_URI_${MACHINE} ?= "git://${KSRC_linux_custom};bareclone=1;branch=${KBRANCH}"

SRC_URI_${MACHINE} += "file://defconfig"

SRCREV="${AUTOREV}"
LINUX_VERSION ?= "3.4.28"
LINUX_VERSION_EXTENSION = "-custom"

PR = "r0"
PV = "${LINUX_VERSION}+git${SRCPV}"

