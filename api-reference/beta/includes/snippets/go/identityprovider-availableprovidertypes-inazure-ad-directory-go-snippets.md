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



availableProviderTypes, err := graphClient.Identity().IdentityProviders().AvailableProviderTypes().GetAsAvailableProviderTypesGetResponse(context.Background(), nil)


```