#
#   Copyright 2009 Joe Block <jpb@ApesSeekingKnowledge.net>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#       You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# 
#  Luggage makefile for building a package that installs a printer.

include /usr/local/share/luggage/luggage.make

TITLE=FLCWkBigCopier
REVERSE_DOMAIN=com.trinityklein
PAYLOAD=\
	pack-sharp-ppd \
	pack-script-postflight
PACKAGE_VERSION=1.0

pack-sharp-ppd: l_etc_cups_ppd
	@sudo ${CP} ./FLCWkBigCopier.ppd ${WORK_D}/private/etc/cups/ppd/FLCWkBigCopier.ppd
	@sudo chmod 644 ${WORK_D}/private/etc/cups/ppd/FLCWkBigCopier.ppd
	@sudo chown root:_lp ${WORK_D}/private/etc/cups/ppd/FLCWkBigCopier.ppd

l_etc_cups_ppd: l_private_etc
	@sudo mkdir -p ${WORK_D}/private/etc/cups/ppd
	@sudo chown -R root:_lp ${WORK_D}/private/etc/cups/ppd
	@sudo chmod -R 755 ${WORK_D}/private/etc/cups/ppd