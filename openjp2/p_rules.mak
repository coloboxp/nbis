# ******************************************************************************
# License: 
# This software was developed at the National Institute of Standards and 
# Technology (NIST) by employees of the Federal Government in the course 
# of their official duties. Pursuant to title 17 Section 105 of the 
# United States Code, this software is not subject to copyright protection 
# and is in the public domain. NIST assumes no responsibility  whatsoever for 
# its use by other parties, and makes no guarantees, expressed or implied, 
# about its quality, reliability, or any other characteristic. 
#
# Disclaimer: 
# This software was developed to promote biometric standards and biometric
# technology testing for the Federal Government in accordance with the USA
# PATRIOT Act and the Enhanced Border Security and Visa Entry Reform Act.
# Specific hardware and software products identified in this software were used
# in order to perform the software development.  In no case does such
# identification imply recommendation or endorsement by the National Institute
# of Standards and Technology, nor does it imply that the products and equipment
# identified are necessarily the best available for the purpose.  
#
# ******************************************************************************
# Project:              NIST Fingerprint Software
# SubTree:              /NBIS/Main/openjp2
# Filename:             p_rules.mak.src
# Integrators:          Kenneth Ko
# Organization:         NIST/ITL
# Host System:          GNU GCC/GMAKE GENERIC (UNIX)
# Date Created:         11/16/2007
# (UPDATED 9/30/2013 for experimental testing)
#
# ******************************************************************************
#
# This rules file contains all the necessary variables to build "openjp2".
#
# ******************************************************************************
include /Users/alejandroaleman/git/nbis/rules.mak
#
# ------------------------------------------------------------------------------
#
PACKAGE		:= openjp2
PROGRAMS	:= dummy
LIBRARYS	:= openjp2
LIBRARY_NAMES	:= $(LIBRARYS:%=lib%.a)
#
# ------------------------------------------------------------------------------
#
DIR_ROOT_PACKAGE	:= $(DIR_ROOT)/$(PACKAGE)
INSTALL_BIN_DIR		:=
INSTALL_LIB_DIR		:=
#
# ------------------------------------------------------------------------------
#
DIR_INC		:=
DIR_SRC		:= $(DIR_ROOT_PACKAGE)/src
DIR_SRC_LIB	:= $(DIR_SRC)/lib
#
BASE_DIR := \
	$(DIR_SRC) \
	$(DIR_SRC_LIB) \
	$(DIR_SRC_LIB)/$(LIBRARYS)
#
# ------------------------------------------------------------------------------
#
OBJ_BASE_DIR	:= dummy
#
# ------------------------------------------------------------------------------
#
