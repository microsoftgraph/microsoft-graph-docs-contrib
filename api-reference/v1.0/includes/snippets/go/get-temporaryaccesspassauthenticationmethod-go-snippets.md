---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



temporaryAccessPassMethods, err := graphClient.Users().ByUserId("user-id").Authentication().TemporaryAccessPassMethods().ByTemporaryAccessPassAuthenticationMethodId("temporaryAccessPassAuthenticationMethod-id").Get(context.Background(), nil)


```