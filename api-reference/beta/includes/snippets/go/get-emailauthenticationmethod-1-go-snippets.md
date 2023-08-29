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



emailMethods, err := graphClient.Me().Authentication().EmailMethods().ByEmailAuthenticationMethodId("emailAuthenticationMethod-id").Get(context.Background(), nil)


```