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

result, err := graphClient.NetworkAccess().Connectivity().Branches().ByBrancheId("branchSite-id").DeviceLinks().Post(context.Background(), requestBody, nil)


```