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


requestBody := graphmodelsindustrydata.NewYearTimePeriodDefinition()
displayName := "Fiscal Year 2022"
requestBody.SetDisplayName(&displayName) 
id := "ebf18762-ab92-487e-21d1-08daddab28bb"
requestBody.SetId(&id) 

result, err := graphClient.External().IndustryData().Years().ByYearId("yearTimePeriodDefinition-id").Patch(context.Background(), requestBody, nil)


```