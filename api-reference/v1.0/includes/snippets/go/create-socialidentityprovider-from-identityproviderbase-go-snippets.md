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
displayName := "Login with Amazon"
requestBody.SetDisplayName(&displayName) 
identityProviderType := "Amazon"
requestBody.SetIdentityProviderType(&identityProviderType) 
clientId := "56433757-cadd-4135-8431-2c9e3fd68ae8"
requestBody.SetClientId(&clientId) 
clientSecret := "000000000000"
requestBody.SetClientSecret(&clientSecret) 

result, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```