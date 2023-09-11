---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



emails, err := graphClient.Users().ByUserId("user-id").Profile().Emails().ByItemEmailId("itemEmail-id").Get(context.Background(), nil)


```