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



offerShiftRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().OfferShiftRequests().ByOfferShiftRequestId("offerShiftRequest-id").Get(context.Background(), nil)


```