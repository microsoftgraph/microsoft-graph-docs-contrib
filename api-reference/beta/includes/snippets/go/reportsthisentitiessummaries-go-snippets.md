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



startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
microsoftGraphNetworkaccessEntitiesSummaries, err := graphClient.NetworkAccess().Reports().MicrosoftGraphNetworkaccessEntitiesSummariesWithStartDateTimeWithEndDateTime(&startDateTime, &endDateTime).GetAsEntitiesSummariesWithStartDateTimeWithEndDateTimeGetResponse(context.Background(), nil)


```