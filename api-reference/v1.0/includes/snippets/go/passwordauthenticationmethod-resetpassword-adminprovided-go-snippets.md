---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Users/Item/Authentication/Methods/Item/ResetPassword"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewResetPasswordPostRequestBody()
newPassword := "Cuyo5459"
requestBody.SetNewPassword(&newPassword) 

result, err := graphClient.Users().ByUserId("user-id").Authentication().Methods().ByMethodId("authenticationMethod-id").ResetPassword().Post(context.Background(), requestBody, nil)


```