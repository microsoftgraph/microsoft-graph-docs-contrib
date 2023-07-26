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


requestBody := graphusers.NewItemGetMemberGroupsPostRequestBody()
securityEnabledOnly := true
requestBody.SetSecurityEnabledOnly(&securityEnabledOnly) 

result, err := graphClient.Me().GetMemberGroups().Post(context.Background(), requestBody, nil)


```