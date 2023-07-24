---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceLink deviceLink = new DeviceLink();
deviceLink.name = "device link 1";
deviceLink.ipAddress = "24.123.22.168";
deviceLink.deviceVendor = DeviceVendor.BARRACUDA_NETWORKS;
deviceLink.bandwidthCapacityInMbps = BandwidthCapacityInMbps.MBPS250;
BgpConfiguration bgpConfiguration = new BgpConfiguration();
bgpConfiguration.localIpAddress = "1.128.24.22";
bgpConfiguration.peerIpAddress = "1.128.24.28";
bgpConfiguration.asn = 4;
deviceLink.bgpConfiguration = bgpConfiguration;
RedundancyConfiguration redundancyConfiguration = new RedundancyConfiguration();
redundancyConfiguration.zoneLocalIpAddress = "1.128.23.20";
redundancyConfiguration.redundancyTier = RedundancyTier.ZONE_REDUNDANCY;
deviceLink.redundancyConfiguration = redundancyConfiguration;
TunnelConfigurationIKEv2Default tunnelConfiguration = new TunnelConfigurationIKEv2Default();
tunnelConfiguration.preSharedKey = "/microsoft/keyVault/placeholder";
deviceLink.tunnelConfiguration = tunnelConfiguration;

graphClient.networkAccess().connectivity().branches("19a92090-c14e-4cea-a933-27d38f72c4d1").deviceLinks()
	.buildRequest()
	.post(deviceLink);

```