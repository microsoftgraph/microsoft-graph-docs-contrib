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



graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").UserFlowIdentityProviders().ByIdentityProviderBaseId("identityProviderBase-id").Ref().Delete(context.Background(), nil)


```