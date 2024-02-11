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


requestBody := graphusers.NewWipeManagedAppRegistrationsByDeviceTagPostRequestBody()
deviceTag := "Device Tag value"
requestBody.SetDeviceTag(&deviceTag) 

graphClient.Users().ByUserId("user-id").WipeManagedAppRegistrationsByDeviceTag().Post(context.Background(), requestBody, nil)


```