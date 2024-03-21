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



convertExternalToInternalMemberUser, err := graphClient.Users().ByUserId("user-id").ConvertExternalToInternalMemberUser().Post(context.Background(), nil)


```