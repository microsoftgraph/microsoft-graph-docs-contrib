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

requestBody := graphmodels.NewExternalAuthenticationMethod()
configurationId := "26310fee-860b-4eab-8749-ab730dcf335e"
requestBody.SetConfigurationId(&configurationId) 
displayName := "Adatum"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
externalAuthenticationMethods, err := graphClient.Users().ByUserId("user-id").Authentication().ExternalAuthenticationMethods().Post(context.Background(), requestBody, nil)


```