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



microsoftAuthenticatorMethods, err := graphClient.Users().ByUserId("user-id").Authentication().MicrosoftAuthenticatorMethods().ByMicrosoftAuthenticatorAuthenticationMethodId("microsoftAuthenticatorAuthenticationMethod-id").Get(context.Background(), nil)


```