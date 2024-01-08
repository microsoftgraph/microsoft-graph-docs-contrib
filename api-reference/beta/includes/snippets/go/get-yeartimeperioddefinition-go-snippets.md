---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



years, err := graphClient.External().IndustryData().Years().ByYearTimePeriodDefinitionId("yearTimePeriodDefinition-id").Get(context.Background(), nil)


```