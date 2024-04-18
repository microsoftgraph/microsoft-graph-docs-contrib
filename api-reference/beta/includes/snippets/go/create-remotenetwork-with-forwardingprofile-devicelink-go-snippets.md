---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsnetworkaccess.NewRemoteNetwork()
name := "Bellevue branch w/ device link"
requestBody.SetName(&name) 
region := graphmodels.CANADAEAST_REGION 
requestBody.SetRegion(&region) 


forwardingProfile := graphmodelsnetworkaccess.NewForwardingProfile()
id := "1adaf535-1e31-4e14-983f-2270408162bf"
forwardingProfile.SetId(&id) 

forwardingProfiles := []graphmodelsnetworkaccess.ForwardingProfileable {
	forwardingProfile,
}
requestBody.SetForwardingProfiles(forwardingProfiles)


deviceLink := graphmodelsnetworkaccess.NewDeviceLink()
name := "CPE1"
deviceLink.SetName(&name) 
ipAddress := "52.13.21.25"
deviceLink.SetIpAddress(&ipAddress) 
bandwidthCapacityInMbps := graphmodels.MBPS500_BANDWIDTHCAPACITYINMBPS 
deviceLink.SetBandwidthCapacityInMbps(&bandwidthCapacityInMbps) 
deviceVendor := graphmodels.BARRACUDANETWORKS_DEVICEVENDOR 
deviceLink.SetDeviceVendor(&deviceVendor) 
bgpConfiguration := graphmodelsnetworkaccess.NewBgpConfiguration()
localIpAddress := "192.168.1.2"
bgpConfiguration.SetLocalIpAddress(&localIpAddress) 
peerIpAddress := "10.1.1.2"
bgpConfiguration.SetPeerIpAddress(&peerIpAddress) 
asn := int32(65533)
bgpConfiguration.SetAsn(&asn) 
deviceLink.SetBgpConfiguration(bgpConfiguration)
redundancyConfiguration := graphmodelsnetworkaccess.NewRedundancyConfiguration()
zoneLocalIpAddress := null
redundancyConfiguration.SetZoneLocalIpAddress(&zoneLocalIpAddress) 
redundancyTier := graphmodels.NOREDUNDANCY_REDUNDANCYTIER 
redundancyConfiguration.SetRedundancyTier(&redundancyTier) 
deviceLink.SetRedundancyConfiguration(redundancyConfiguration)
tunnelConfiguration := graphmodelsnetworkaccess.NewTunnelConfigurationIKEv2Default()
preSharedKey := "test123"
tunnelConfiguration.SetPreSharedKey(&preSharedKey) 
deviceLink.SetTunnelConfiguration(tunnelConfiguration)

deviceLinks := []graphmodelsnetworkaccess.DeviceLinkable {
	deviceLink,
}
requestBody.SetDeviceLinks(deviceLinks)

remoteNetworks, err := graphClient.NetworkAccess().Connectivity().RemoteNetworks().Post(context.Background(), requestBody, nil)


```