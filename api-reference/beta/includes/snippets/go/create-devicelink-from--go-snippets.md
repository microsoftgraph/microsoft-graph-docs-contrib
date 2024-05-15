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

requestBody := graphmodelsnetworkaccess.NewDeviceLink()
name := "device link 1"
requestBody.SetName(&name) 
ipAddress := "24.123.22.168"
requestBody.SetIpAddress(&ipAddress) 
deviceVendor := graphmodels.INTEL_DEVICEVENDOR 
requestBody.SetDeviceVendor(&deviceVendor) 
bandwidthCapacityInMbps := graphmodels.MBPS250_BANDWIDTHCAPACITYINMBPS 
requestBody.SetBandwidthCapacityInMbps(&bandwidthCapacityInMbps) 
bgpConfiguration := graphmodelsnetworkaccess.NewBgpConfiguration()
localIpAddress := "1.128.24.22"
bgpConfiguration.SetLocalIpAddress(&localIpAddress) 
peerIpAddress := "1.128.24.28"
bgpConfiguration.SetPeerIpAddress(&peerIpAddress) 
asn := int32(4)
bgpConfiguration.SetAsn(&asn) 
requestBody.SetBgpConfiguration(bgpConfiguration)
redundancyConfiguration := graphmodelsnetworkaccess.NewRedundancyConfiguration()
zoneLocalIpAddress := "1.128.23.20"
redundancyConfiguration.SetZoneLocalIpAddress(&zoneLocalIpAddress) 
redundancyTier := graphmodels.ZONEREDUNDANCY_REDUNDANCYTIER 
redundancyConfiguration.SetRedundancyTier(&redundancyTier) 
requestBody.SetRedundancyConfiguration(redundancyConfiguration)
tunnelConfiguration := graphmodelsnetworkaccess.NewTunnelConfiguration()
preSharedKey := "/microsoft/keyVault/placeholder"
tunnelConfiguration.SetPreSharedKey(&preSharedKey) 
requestBody.SetTunnelConfiguration(tunnelConfiguration)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceLinks, err := graphClient.NetworkAccess().Connectivity().Branches().ByBranchSiteId("branchSite-id").DeviceLinks().Post(context.Background(), requestBody, nil)


```