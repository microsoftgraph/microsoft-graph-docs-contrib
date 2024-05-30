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

requestBody := graphmodels.NewAuthenticationFlowsPolicy()
selfServiceSignUp := graphmodels.NewSelfServiceSignUpAuthenticationFlowConfiguration()
isEnabled := true
selfServiceSignUp.SetIsEnabled(&isEnabled) 
requestBody.SetSelfServiceSignUp(selfServiceSignUp)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationFlowsPolicy, err := graphClient.Policies().AuthenticationFlowsPolicy().Patch(context.Background(), requestBody, nil)


```