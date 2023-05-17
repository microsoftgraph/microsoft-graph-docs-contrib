---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewYearTimePeriodDefinition()
displayName := "Fiscal Year 2022"
requestBody.SetDisplayName(&displayName) 
id := "ebf18762-ab92-487e-21d1-08daddab28bb"
requestBody.SetId(&id) 

result, err := graphClient.External().IndustryData().Years().ByYearId("yearTimePeriodDefinition-id").Patch(context.Background(), requestBody, nil)


```