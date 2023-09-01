---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Apple"
requestBody.SetDisplayName(&displayName) 

identityProviders, err := graphClient.Identity().IdentityProviders().ByIdentityProviderBaseId("identityProviderBase-id").Patch(context.Background(), requestBody, nil)


```