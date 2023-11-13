---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityProviderBase()
clientSecret := "1111111111111"
requestBody.SetClientSecret(&clientSecret) 

identityProviders, err := graphClient.Identity().IdentityProviders().ByIdentityProviderBaseId("identityProviderBase-id").Patch(context.Background(), requestBody, nil)


```