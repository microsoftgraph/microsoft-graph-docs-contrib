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



pendingExternalUserProfiles, err := graphClient.Directory().PendingExternalUserProfiles().ByPendingExternalUserProfileId("pendingExternalUserProfile-id").Get(context.Background(), nil)


```