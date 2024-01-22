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



platformCredentialMethods, err := graphClient.Me().Authentication().PlatformCredentialMethods().ByPlatformCredentialAuthenticationMethodId("platformCredentialAuthenticationMethod-id").Get(context.Background(), nil)


```