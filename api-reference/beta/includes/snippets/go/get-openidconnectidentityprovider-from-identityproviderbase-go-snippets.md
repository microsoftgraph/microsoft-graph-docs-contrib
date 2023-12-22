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



identityProviders, err := graphClient.Identity().IdentityProviders().ByIdentityProviderBaseId("identityProviderBase-id").Get(context.Background(), nil)


```