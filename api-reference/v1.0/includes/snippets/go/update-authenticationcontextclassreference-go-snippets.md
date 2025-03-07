---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAuthenticationContextClassReference()
displayName := "Contoso medium"
requestBody.SetDisplayName(&displayName) 
description := "Medium protection level defined for Contoso policy"
requestBody.SetDescription(&description) 
isAvailable := true
requestBody.SetIsAvailable(&isAvailable) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationContextClassReferences, err := graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferences().ByAuthenticationContextClassReferenceId("authenticationContextClassReference-id").Patch(context.Background(), requestBody, nil)


```