---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



installedApps, err := graphClient.Users().ByUserId("user-id").Teamwork().InstalledApps().ByUserScopeTeamsAppInstallationId("userScopeTeamsAppInstallation-id").Get(context.Background(), nil)


```