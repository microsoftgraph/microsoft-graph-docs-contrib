---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewResetPasswordPostRequestBody()
newPassword := "Cuyo5459"
requestBody.SetNewPassword(&newPassword) 

result, err := graphClient.Users().ByUserId("user-id").Authentication().Methods().ByMethodId("authenticationMethod-id").ResetPassword().Post(context.Background(), requestBody, nil)


```