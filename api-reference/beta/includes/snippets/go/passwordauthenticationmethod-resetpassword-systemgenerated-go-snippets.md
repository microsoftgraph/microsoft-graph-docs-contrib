---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewResetPasswordPostRequestBody()

resetPassword, err := graphClient.Users().ByUserId("user-id").Authentication().Methods().ByAuthenticationMethodId("authenticationMethod-id").ResetPassword().Post(context.Background(), requestBody, nil)


```