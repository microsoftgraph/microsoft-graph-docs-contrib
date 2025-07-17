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

requestBody := graphmodels.NewStrongAuthenticationRequirements()
perUserMfaState := graphmodels.DISABLED_PERUSERMFASTATE 
requestBody.SetPerUserMfaState(&perUserMfaState) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
requirements, err := graphClient.Users().ByUserId("user-id").Authentication().Requirements().Patch(context.Background(), requestBody, nil)


```