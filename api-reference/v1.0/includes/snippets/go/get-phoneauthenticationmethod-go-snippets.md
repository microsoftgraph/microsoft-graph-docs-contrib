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



phoneMethods, err := graphClient.Me().Authentication().PhoneMethods().ByPhoneAuthenticationMethodId("phoneAuthenticationMethod-id").Get(context.Background(), nil)


```