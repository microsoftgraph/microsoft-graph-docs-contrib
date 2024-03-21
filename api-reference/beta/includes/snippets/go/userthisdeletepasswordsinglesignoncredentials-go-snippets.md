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


requestBody := graphusers.NewDeletePasswordSingleSignOnCredentialsPostRequestBody()
id := "314ac440-129f-4cb3-ad61-24ef4a7de1d9"
requestBody.SetId(&id) 

graphClient.Users().ByUserId("user-id").DeletePasswordSingleSignOnCredentials().Post(context.Background(), requestBody, nil)


```