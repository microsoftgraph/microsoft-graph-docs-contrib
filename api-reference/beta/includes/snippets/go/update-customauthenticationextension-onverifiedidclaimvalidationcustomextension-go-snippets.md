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

requestBody := graphmodels.NewCustomAuthenticationExtension()
displayName := "Verified ID Claim Validation (updated)"
requestBody.SetDisplayName(&displayName) 
description := "Updated description for Verified ID claim validation"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
customAuthenticationExtensions, err := graphClient.Identity().CustomAuthenticationExtensions().ByCustomAuthenticationExtensionId("customAuthenticationExtension-id").Patch(context.Background(), requestBody, nil)


```