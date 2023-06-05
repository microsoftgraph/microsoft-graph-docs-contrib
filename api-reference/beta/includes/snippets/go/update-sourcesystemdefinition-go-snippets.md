---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSourceSystemDefinition()
vendor := "LMS Vendor"
requestBody.SetVendor(&vendor) 

result, err := graphClient.External().IndustryData().SourceSystems().BySourceSystemId("sourceSystemDefinition-id").Patch(context.Background(), requestBody, nil)


```