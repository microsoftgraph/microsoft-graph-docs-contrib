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


requestBody := graphusers.NewValidatePasswordPostRequestBody()
password := "1234567890"
requestBody.SetPassword(&password) 

validatePassword, err := graphClient.Users().ValidatePassword().Post(context.Background(), requestBody, nil)


```