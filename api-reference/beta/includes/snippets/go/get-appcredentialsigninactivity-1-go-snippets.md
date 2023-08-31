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



appCredentialSignInActivities, err := graphClient.Reports().AppCredentialSignInActivities().ByAppCredentialSignInActivityId("appCredentialSignInActivity-id").Get(context.Background(), nil)


```