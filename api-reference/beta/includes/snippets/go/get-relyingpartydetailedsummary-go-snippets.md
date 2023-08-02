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



getRelyingPartyDetailedSummary(period='{period}'), err := graphClient.Reports().GetRelyingPartyDetailedSummary(period='{period}')().Get(context.Background(), nil)


```