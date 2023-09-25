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



errors, err := graphClient.Education().SynchronizationProfiles().ByEducationSynchronizationProfileId("educationSynchronizationProfile-id").Errors().Get(context.Background(), nil)


```