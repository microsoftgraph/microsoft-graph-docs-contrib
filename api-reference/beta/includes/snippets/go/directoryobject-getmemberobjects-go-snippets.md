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


requestBody := graphusers.NewItemGetMemberObjectsPostRequestBody()
securityEnabledOnly := true
requestBody.SetSecurityEnabledOnly(&securityEnabledOnly) 

result, err := graphClient.Me().GetMemberObjects().Post(context.Background(), requestBody, nil)


```