#*************************************************************
# Copyright (c) 2015, Emerging Threats/Proofpoint
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the
# following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this list of conditions and the following
# disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided with the distribution.
# * Neither the name of the nor the names of its contributors may be used to endorse or promote products derived
# from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS AS IS AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
# USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#*************************************************************

#ETPRO IPREP for BRO

@load base/frameworks/intel
@load frameworks/intel/seen
@load frameworks/intel/do_notice

redef Intel::read_files += {

# @DIR + "/etpro-AbusedTLD-domainrepdata.intel",
# @DIR + "/etpro-AbusedTLD-iprepdata.intel",
# @DIR + "/etpro-Bitcoin_Related-domainrepdata.intel",
# @DIR + "/etpro-Bitcoin_Related-iprepdata.intel",
# @DIR + "/etpro-Blackhole-domainrepdata.intel",
# @DIR + "/etpro-Blackhole-iprepdata.intel",
  @DIR + "/etpro-Bot-domainrepdata.intel",
  @DIR + "/etpro-Bot-iprepdata.intel",
# @DIR + "/etpro-Brute_Forcer-domainrepdata.intel",
# @DIR + "/etpro-Brute_Forcer-iprepdata.intel",
# @DIR + "/etpro-ChatServer-domainrepdata.intel",
# @DIR + "/etpro-ChatServer-iprepdata.intel",
  @DIR + "/etpro-CnC-domainrepdata.intel",
  @DIR + "/etpro-CnC-iprepdata.intel",
  @DIR + "/etpro-Compromised-domainrepdata.intel",
  @DIR + "/etpro-Compromised-iprepdata.intel",
# @DIR + "/etpro-DDoSAttacker-domainrepdata.intel",
# @DIR + "/etpro-DDoSAttacker-iprepdata.intel",
# @DIR + "/etpro-DDoSTarget-domainrepdata.intel",
# @DIR + "/etpro-DDoSTarget-iprepdata.intel",
  @DIR + "/etpro-DriveBySrc-domainrepdata.intel",
  @DIR + "/etpro-DriveBySrc-iprepdata.intel",
# @DIR + "/etpro-Drop-domainrepdata.intel",
# @DIR + "/etpro-Drop-iprepdata.intel",
# @DIR + "/etpro-DynDNS-domainrepdata.intel",
# @DIR + "/etpro-DynDNS-iprepdata.intel",
# @DIR + "/etpro-EXE_Source-domainrepdata.intel",
# @DIR + "/etpro-EXE_Source-iprepdata.intel",
# @DIR + "/etpro-FakeAV-domainrepdata.intel",
# @DIR + "/etpro-FakeAV-iprepdata.intel",
# @DIR + "/etpro-IPCheck-domainrepdata.intel",
# @DIR + "/etpro-IPCheck-iprepdata.intel",
# @DIR + "/etpro-Mobile_CnC-domainrepdata.intel",
# @DIR + "/etpro-Mobile_CnC-iprepdata.intel",
# @DIR + "/etpro-Mobile_Spyware_CnC-domainrepdata.intel",
# @DIR + "/etpro-Mobile_Spyware_CnC-iprepdata.intel",
# @DIR + "/etpro-OnlineGaming-domainrepdata.intel",
# @DIR + "/etpro-OnlineGaming-iprepdata.intel",
# @DIR + "/etpro-P2P-domainrepdata.intel",
# @DIR + "/etpro-P2P-iprepdata.intel",
# @DIR + "/etpro-P2PCnC-domainrepdata.intel",
# @DIR + "/etpro-P2PCnC-iprepdata.intel",
# @DIR + "/etpro-Parking-domainrepdata.intel",
# @DIR + "/etpro-Parking-iprepdata.intel",
# @DIR + "/etpro-Proxy-domainrepdata.intel",
# @DIR + "/etpro-Proxy-iprepdata.intel",
# @DIR + "/etpro-RemoteAccessService-domainrepdata.intel",
# @DIR + "/etpro-RemoteAccessService-iprepdata.intel",
# @DIR + "/etpro-Scanner-domainrepdata.intel",
# @DIR + "/etpro-Scanner-iprepdata.intel",
# @DIR + "/etpro-SelfSignedSSL-domainrepdata.intel",
# @DIR + "/etpro-SelfSignedSSL-iprepdata.intel",
# @DIR + "/etpro-Skype_SuperNode-domainrepdata.intel",
# @DIR + "/etpro-Skype_SuperNode-iprepdata.intel",
# @DIR + "/etpro-Spam-domainrepdata.intel",
# @DIR + "/etpro-Spam-iprepdata.intel",
  @DIR + "/etpro-SpywareCnC-domainrepdata.intel",
  @DIR + "/etpro-SpywareCnC-iprepdata.intel"
# @DIR + "/etpro-TorNode-domainrepdata.intel",
# @DIR + "/etpro-TorNode-iprepdata.intel",
# @DIR + "/etpro-Undesirable-domainrepdata.intel",
# @DIR + "/etpro-Undesirable-iprepdata.intel",
# @DIR + "/etpro-Utility-domainrepdata.intel",
# @DIR + "/etpro-Utility-iprepdata.intel",
# @DIR + "/etpro-VPN-domainrepdata.intel",
# @DIR + "/etpro-VPN-iprepdata.intel"

};
