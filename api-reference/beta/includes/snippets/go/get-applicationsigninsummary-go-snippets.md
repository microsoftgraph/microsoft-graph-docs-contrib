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



period := "{period}"
getAzureADApplicationSignInSummary, err := graphClient.Reports().GetAzureADApplicationSignInSummaryWithPeriod(&period).GetAsGetAzureADApplicationSignInSummaryWithPeriodGetResponse(context.Background(), nil)


```