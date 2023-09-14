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



resetPassword, err := graphClient.Users().ByUserId("user-id").Authentication().Methods().ByAuthenticationMethodId("authenticationMethod-id").ResetPassword().Post(context.Background(), nil)


```