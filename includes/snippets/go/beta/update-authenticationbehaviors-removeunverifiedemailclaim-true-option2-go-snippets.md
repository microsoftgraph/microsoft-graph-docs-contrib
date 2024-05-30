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

requestBody := graphmodels.NewApplication()
authenticationBehaviors := graphmodels.NewAuthenticationBehaviors()
removeUnverifiedEmailClaim := true
authenticationBehaviors.SetRemoveUnverifiedEmailClaim(&removeUnverifiedEmailClaim) 
requestBody.SetAuthenticationBehaviors(authenticationBehaviors)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```