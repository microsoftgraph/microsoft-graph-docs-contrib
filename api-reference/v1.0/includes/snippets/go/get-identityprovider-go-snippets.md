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



identityProviders, err := graphClient.IdentityProviders().ByIdentityProviderId("identityProvider-id").Get(context.Background(), nil)


```