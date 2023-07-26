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


requestBody := graphmodelsnetworkaccess.NewBranchSite()
name := "test branch - 11:50"
requestBody.SetName(&name) 
country := "United States"
requestBody.SetCountry(&country) 
region := graphmodels.EAST US_REGION 
requestBody.SetRegion(&region) 
bandwidthCapacity := int64(500)
requestBody.SetBandwidthCapacity(&bandwidthCapacity) 

result, err := graphClient.NetworkAccess().Connectivity().Branches().Post(context.Background(), requestBody, nil)


```