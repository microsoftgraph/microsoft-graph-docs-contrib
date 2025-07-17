---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsnetworkaccess "github.com/microsoftgraph/msgraph-beta-sdk-go/models/networkaccess"
	  //other-imports
)

requestBody := graphmodelsnetworkaccess.NewFilteringProfile()
name := "Security Profile for UserA"
requestBody.SetName(&name) 
state := graphmodels.ENABLED_STATUS 
requestBody.SetState(&state) 
priority := int64(100)
requestBody.SetPriority(&priority) 
policies := []graphmodelsnetworkaccess.PolicyLinkable {

}
requestBody.SetPolicies(policies)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
filteringProfiles, err := graphClient.NetworkAccess().FilteringProfiles().Post(context.Background(), requestBody, nil)


```