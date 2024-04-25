---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.DeviceLink deviceLink = new com.microsoft.graph.beta.models.networkaccess.DeviceLink();
deviceLink.setName("device link 1");
deviceLink.setIpAddress("24.123.22.168");
deviceLink.setDeviceVendor(com.microsoft.graph.beta.models.networkaccess.DeviceVendor.BarracudaNetworks);
deviceLink.setBandwidthCapacityInMbps(com.microsoft.graph.beta.models.networkaccess.BandwidthCapacityInMbps.Mbps250);
com.microsoft.graph.beta.models.networkaccess.BgpConfiguration bgpConfiguration = new com.microsoft.graph.beta.models.networkaccess.BgpConfiguration();
bgpConfiguration.setLocalIpAddress("1.128.24.22");
bgpConfiguration.setPeerIpAddress("1.128.24.28");
bgpConfiguration.setAsn(4);
deviceLink.setBgpConfiguration(bgpConfiguration);
com.microsoft.graph.beta.models.networkaccess.RedundancyConfiguration redundancyConfiguration = new com.microsoft.graph.beta.models.networkaccess.RedundancyConfiguration();
redundancyConfiguration.setZoneLocalIpAddress("1.128.23.20");
redundancyConfiguration.setRedundancyTier(com.microsoft.graph.beta.models.networkaccess.RedundancyTier.ZoneRedundancy);
deviceLink.setRedundancyConfiguration(redundancyConfiguration);
com.microsoft.graph.beta.models.networkaccess.TunnelConfiguration tunnelConfiguration = new com.microsoft.graph.beta.models.networkaccess.TunnelConfiguration();
tunnelConfiguration.setOdataType("microsoft.graph.networkAccess.tunnelConfigurationIKEv2Default");
tunnelConfiguration.setPreSharedKey("/microsoft/keyVault/placeholder");
deviceLink.setTunnelConfiguration(tunnelConfiguration);
com.microsoft.graph.models.networkaccess.DeviceLink result = graphClient.networkAccess().connectivity().branches().byBranchSiteId("{branchSite-id}").deviceLinks().post(deviceLink);


```