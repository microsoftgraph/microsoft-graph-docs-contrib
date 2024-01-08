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



passwordlessMicrosoftAuthenticatorMethods, err := graphClient.Me().Authentication().PasswordlessMicrosoftAuthenticatorMethods().ByPasswordlessMicrosoftAuthenticatorAuthenticationMethodId("passwordlessMicrosoftAuthenticatorAuthenticationMethod-id").Get(context.Background(), nil)


```