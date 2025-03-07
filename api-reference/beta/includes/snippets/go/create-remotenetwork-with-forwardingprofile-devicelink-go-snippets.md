---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
remoteNetworks, err := graphClient.NetworkAccess().Connectivity().RemoteNetworks().Post(context.Background(), requestBody, nil)


```