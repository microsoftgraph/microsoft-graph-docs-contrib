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



oauth2PermissionGrants, err := graphClient.Users().ByUserId("user-id").Oauth2PermissionGrants().Get(context.Background(), nil)


```