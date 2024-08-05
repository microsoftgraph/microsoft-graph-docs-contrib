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

requestBody := graphmodels.NewCommunity()
displayName := "Financial Advice for Software Engineers"
requestBody.SetDisplayName(&displayName) 
description := "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients."
requestBody.SetDescription(&description) 
privacy := graphmodels.PUBLIC_COMMUNITYPRIVACY 
requestBody.SetPrivacy(&privacy) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
communities, err := graphClient.EmployeeExperience().Communities().Post(context.Background(), requestBody, nil)


```