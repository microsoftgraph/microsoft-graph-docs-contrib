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

requestBody := graphmodels.NewSignInIdentifierBase()
name := "CustomUsername1"
requestBody.SetName(&name) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
validationRegex := "^[a-zA-Z]{4}\d{5}$"
requestBody.SetValidationRegex(&validationRegex) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
signInIdentifiers, err := graphClient.Identity().SignInIdentifiers().BySignInIdentifierBaseName("signInIdentifierBase-name").Patch(context.Background(), requestBody, nil)


```