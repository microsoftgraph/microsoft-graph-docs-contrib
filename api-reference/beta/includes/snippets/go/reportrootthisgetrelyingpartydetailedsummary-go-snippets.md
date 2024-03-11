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
getRelyingPartyDetailedSummary, err := graphClient.Reports().GetRelyingPartyDetailedSummaryWithPeriod(&period).Get(context.Background(), nil)


```