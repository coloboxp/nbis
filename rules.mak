#*******************************************************************************
#
# License: 
# This software and/or related materials was developed at the National Institute
# of Standards and Technology (NIST) by employees of the Federal Government
# in the course of their official duties. Pursuant to title 17 Section 105
# of the United States Code, this software is not subject to copyright
# protection and is in the public domain. 
#
# This software and/or related materials have been determined to be not subject
# to the EAR (see Part 734.3 of the EAR for exact details) because it is
# a publicly available technology and software, and is freely distributed
# to any interested party with no licensing requirements.  Therefore, it is 
# permissible to distribute this software as a free download from the internet.
#
# Disclaimer: 
# This software and/or related materials was developed to promote biometric
# standards and biometric technology testing for the Federal Government
# in accordance with the USA PATRIOT Act and the Enhanced Border Security
# and Visa Entry Reform Act. Specific hardware and software products identified
# in this software were used in order to perform the software development.
# In no case does such identification imply recommendation or endorsement
# by the National Institute of Standards and Technology, nor does it imply that
# the products and equipment identified are necessarily the best available
# for the purpose.
#
# This software and/or related materials are provided "AS-IS" without warranty
# of any kind including NO WARRANTY OF PERFORMANCE, MERCHANTABILITY,
# NO WARRANTY OF NON-INFRINGEMENT OF ANY 3RD PARTY INTELLECTUAL PROPERTY
# or FITNESS FOR A PARTICULAR PURPOSE or for any purpose whatsoever, for the
# licensed product, however used. In no event shall NIST be liable for any
# damages and/or costs, including but not limited to incidental or consequential
# damages of any kind, including economic damage or injury to property and lost
# profits, regardless of whether NIST shall be advised, have reason to know,
# or in fact shall know of the possibility.
#
# By using this software, you agree to bear all risk relating to quality,
# use and performance of the software and/or related materials.  You agree
# to hold the Government harmless from any claim arising from your use
# of the software.
#
#*******************************************************************************
# Project:              NIST Fingerprint Software
# SubTree:              /NBIS/Main
# Filename:             rules.mak.src
# Integrators:          Kenneth Ko
# Organization:         NIST/ITL
# Host System:          GNU GCC/GMAKE GENERIC (UNIX)
# Date Created:         08/20/2006
# Date Updated:		03/27/2007
#                       10/23/2007
#                       04/02/2008
#			09/09/2008 by Joseph C. Konczal
#                       12/10/2008 by Kenneth Ko - Fix to support 64-bit
#                       12/16/2008 by Kenneth Ko - Add command line option for
#                                                  HPUX
#			05/04/2011 by Kenneht Ko
#			08/05/2014 by John Grantham - Added CYGWIN_FLAG
#
# ******************************************************************************
#
# This rules file contains all the necessary variables to build "NBIS".
#
# ******************************************************************************
SHELL	:= /bin/sh
#
# ------------------------------------------------------------------------------
#
PROJ_NAME	:= nbis
#
# ---------------------- Variables set by setup.sh------------------------------
#
PACKAGES			:= ijg png openjp2 commonnbis an2k bozorth3 imgtools mindtct nfseg nfiq pcasys
#
DIR_ROOT			:= /Users/alejandroaleman/git/nbis
FINAL_INSTALLATION_DIR 		:= /Users/alejandroaleman/nbis_install
X11_FLAG			:= 1
X11_INC				:= /opt/homebrew/include
X11_LIB				:= /opt/homebrew/lib

ENDIAN_FLAG			:= -D__NBISLE__
NBIS_JASPER_FLAG		:= 
NBIS_OPENJP2_FLAG		:= -D__NBIS_OPENJP2__
NBIS_PNG_FLAG			:= -D__NBIS_PNG__

ARCH_FLAG			:=  -fPIC

MSYS_FLAG			:= 
CYGWIN_FLAG			:= 

OS_FLAG				:= DARWIN
#
# ------------------------------------------------------------------------------
#
INSTALL_ROOT_INC_DIR		:= $(FINAL_INSTALLATION_DIR)/include
INSTALL_ROOT_BIN_DIR		:= $(FINAL_INSTALLATION_DIR)/bin
INSTALL_ROOT_LIB_DIR		:= $(FINAL_INSTALLATION_DIR)/lib
INSTALL_RUNTIME_DATA_DIR	:= $(FINAL_INSTALLATION_DIR)/$(PROJ_NAME)
#
# ------------------------------------------------------------------------------
#
EXPORTS_DIR	:= $(DIR_ROOT)/exports
EXPORTS_INC_DIR	:= $(EXPORTS_DIR)/include
EXPORTS_LIB_DIR	:= $(EXPORTS_DIR)/lib
EXPORTS_DIRS	:= $(EXPORTS_DIR) \
		$(EXPORTS_INC_DIR) \
		$(EXPORTS_LIB_DIR) 
# 
# ------------------------------------------------------------------------------
#
RUNTIME_DATA_PACKAGES		:= an2k nfiq pcasys
RUNTIME_DATA_DIR		:= runtimedata
#
# ------------------------------------------------------------------------------
#
DOC_DIR		:= $(DIR_ROOT)/doc
DOC_CATS_DIR	:= $(DOC_DIR)/catalogs
DOC_INSTALL_DIR	:= $(DOC_DIR)/install
DOC_REFS_DIR	:= $(DOC_DIR)/refs
DOC_DIRS	:= $(DOC_REFS_DIR)
#
# ------------------------------------------------------------------------------
#
PCASYS_X11_DIR	:= $(DIR_ROOT)/pcasys/obj/src/lib/pca/x11
#
# ------------------------------------------------------------------------------
#
MAN_DIR		:= $(DIR_ROOT)/man
#
# ------------------------------------------------------------------------------
#
EXTRA_DIR	:= $(MAN_DIR) \
		$(DOC_DIR)
#
# ------------------------------------------------------------------------------
#
DIR_ROOT_BUILDUTIL:= $(DIR_ROOT)/buildutil
#
# ------------------------------------------------------------------------------
#
CC		:= $(shell which gcc)
CFLAGS	:= -O2 -w -ansi -D_POSIX_SOURCE $(ENDIAN_FLAG) $(NBIS_JASPER_FLAG) $(NBIS_OPENJP2_FLAG) $(NBIS_PNG_FLAG) $(ARCH_FLAG)
#CFLAGS	:= -g $(ENDIAN_FLAG) $(NBIS_JASPER_FLAG) $(NBIS_PNG_FLAG) $(ARCH_FLAG)
CDEFS	:=
CCC		:= $(CC) $(CFLAGS) $(CDEFS)
LDFLAGS	:= $(ARCH_FLAG)
M		:= -M
#M		:= -MM
#
UNAME	:= $(shell uname)
#
AWK		:= $(shell which awk)
#
OWNER	:= $(shell whoami)
GROUP	:= $(shell id -gn)
#
PERMS1	:= 755
PERMS2	:= 644
#
INSTALL		:= $(shell which install)
INSTALL_BIN	:= $(INSTALL) -p -m $(PERMS1)
INSTALL_LIB	:= $(INSTALL) -p -m $(PERMS1)
RM		:= $(shell which rm) -f
MV		:= $(shell which mv) -f
CP		:= $(shell which cp)
CAT		:= $(shell which cat)
SED		:= $(shell which sed)
CHMOD	:= $(shell which chmod)
MKDIR	:= $(shell which mkdir)
TOUCH	:= $(shell which touch)
AR		:= $(shell which ar)
#
