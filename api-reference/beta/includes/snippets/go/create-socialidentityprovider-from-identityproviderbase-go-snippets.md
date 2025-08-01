---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewIdentityProviderBase()
displayName := "Login with Amazon"
requestBody.SetDisplayName(&displayName) 
identityProviderType := "Amazon"
requestBody.SetIdentityProviderType(&identityProviderType) 
clientId := "00001111-aaaa-2222-bbbb-3333cccc4444"
requestBody.SetClientId(&clientId) 
clientSecret := "42*****96"
requestBody.SetClientSecret(&clientSecret) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
identityProviders, err := graphClient.Identity().IdentityProviders().Post(context.Background(), requestBody, nil)


```