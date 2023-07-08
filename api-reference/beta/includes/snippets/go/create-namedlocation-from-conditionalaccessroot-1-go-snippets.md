---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNamedLocation()
displayName := "Untrusted IP named location"
requestBody.SetDisplayName(&displayName) 
isTrusted := false
requestBody.SetIsTrusted(&isTrusted) 


ipRange := graphmodels.NewIPv4CidrRange()
cidrAddress := "12.34.221.11/22"
ipRange.SetCidrAddress(&cidrAddress) 
ipRange1 := graphmodels.NewIPv6CidrRange()
cidrAddress := "2001:0:9d38:90d6:0:0:0:0/63"
ipRange1.SetCidrAddress(&cidrAddress) 

ipRanges := []graphmodels.IpRangeable {
	ipRange,
	ipRange1,
}
requestBody.SetIpRanges(ipRanges)

result, err := graphClient.Identity().ConditionalAccess().NamedLocations().Post(context.Background(), requestBody, nil)


```