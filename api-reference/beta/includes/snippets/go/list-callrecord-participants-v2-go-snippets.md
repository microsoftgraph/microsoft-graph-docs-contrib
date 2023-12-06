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



participants_v2, err := graphClient.Communications().CallRecords().ByCallRecordId("callRecord-id").Participants_v2().Get(context.Background(), nil)


```