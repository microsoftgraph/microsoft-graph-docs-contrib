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



passwordMethods, err := graphClient.Me().Authentication().PasswordMethods().ByPasswordAuthenticationMethodId("passwordAuthenticationMethod-id").Get(context.Background(), nil)


```