---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.RemoteNetwork remoteNetwork = new com.microsoft.graph.beta.models.networkaccess.RemoteNetwork();
remoteNetwork.setName("Bellevue branch w/ device link");
remoteNetwork.setRegion(com.microsoft.graph.beta.models.networkaccess.Region.CanadaEast);
LinkedList<com.microsoft.graph.beta.models.networkaccess.ForwardingProfile> forwardingProfiles = new LinkedList<com.microsoft.graph.beta.models.networkaccess.ForwardingProfile>();
com.microsoft.graph.beta.models.networkaccess.ForwardingProfile forwardingProfile = new com.microsoft.graph.beta.models.networkaccess.ForwardingProfile();
forwardingProfile.setId("1adaf535-1e31-4e14-983f-2270408162bf");
forwardingProfiles.add(forwardingProfile);
remoteNetwork.setForwardingProfiles(forwardingProfiles);
LinkedList<com.microsoft.graph.beta.models.networkaccess.DeviceLink> deviceLinks = new LinkedList<com.microsoft.graph.beta.models.networkaccess.DeviceLink>();
com.microsoft.graph.beta.models.networkaccess.DeviceLink deviceLink = new com.microsoft.graph.beta.models.networkaccess.DeviceLink();
deviceLink.setName("CPE1");
deviceLink.setIpAddress("52.13.21.25");
deviceLink.setBandwidthCapacityInMbps(com.microsoft.graph.beta.models.networkaccess.BandwidthCapacityInMbps.Mbps500);
deviceLink.setDeviceVendor(com.microsoft.graph.beta.models.networkaccess.DeviceVendor.BarracudaNetworks);
com.microsoft.graph.beta.models.networkaccess.BgpConfiguration bgpConfiguration = new com.microsoft.graph.beta.models.networkaccess.BgpConfiguration();
bgpConfiguration.setLocalIpAddress("192.168.1.2");
bgpConfiguration.setPeerIpAddress("10.1.1.2");
bgpConfiguration.setAsn(65533);
deviceLink.setBgpConfiguration(bgpConfiguration);
com.microsoft.graph.beta.models.networkaccess.RedundancyConfiguration redundancyConfiguration = new com.microsoft.graph.beta.models.networkaccess.RedundancyConfiguration();
redundancyConfiguration.setZoneLocalIpAddress(null);
redundancyConfiguration.setRedundancyTier(com.microsoft.graph.beta.models.networkaccess.RedundancyTier.NoRedundancy);
deviceLink.setRedundancyConfiguration(redundancyConfiguration);
com.microsoft.graph.beta.models.networkaccess.TunnelConfigurationIKEv2Default tunnelConfiguration = new com.microsoft.graph.beta.models.networkaccess.TunnelConfigurationIKEv2Default();
tunnelConfiguration.setOdataType("#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default");
tunnelConfiguration.setPreSharedKey("test123");
deviceLink.setTunnelConfiguration(tunnelConfiguration);
deviceLinks.add(deviceLink);
remoteNetwork.setDeviceLinks(deviceLinks);
com.microsoft.graph.models.networkaccess.RemoteNetwork result = graphClient.networkAccess().connectivity().remoteNetworks().post(remoteNetwork);


```