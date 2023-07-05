---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNamedLocation()
displayName := "Untrusted named location with only IPv4 address"
requestBody.SetDisplayName(&displayName) 
isTrusted := false
requestBody.SetIsTrusted(&isTrusted) 


ipRange := graphmodels.NewIPv4CidrRange()
cidrAddress := "6.5.4.3/18"
ipRange.SetCidrAddress(&cidrAddress) 

ipRanges := []graphmodels.IpRangeable {
	ipRange,
}
requestBody.SetIpRanges(ipRanges)

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().ByNamedLocationId("namedLocation-id").Patch(context.Background(), requestBody, nil)


```