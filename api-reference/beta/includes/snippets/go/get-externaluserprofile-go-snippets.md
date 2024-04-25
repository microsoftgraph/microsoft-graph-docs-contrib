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



externalUserProfiles, err := graphClient.Directory().ExternalUserProfiles().ByExternalUserProfileId("externalUserProfile-id").Get(context.Background(), nil)


```