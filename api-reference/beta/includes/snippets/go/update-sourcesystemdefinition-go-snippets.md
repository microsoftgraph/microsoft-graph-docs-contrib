---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsindustrydata "github.com/microsoftgraph/msgraph-beta-sdk-go/models/industrydata"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsindustrydata.NewSourceSystemDefinition()
vendor := "LMS Vendor"
requestBody.SetVendor(&vendor) 

result, err := graphClient.External().IndustryData().SourceSystems().BySourceSystemId("sourceSystemDefinition-id").Patch(context.Background(), requestBody, nil)


```