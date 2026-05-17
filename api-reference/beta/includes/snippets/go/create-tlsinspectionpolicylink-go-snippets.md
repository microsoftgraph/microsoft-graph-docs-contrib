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

requestBody := graphmodelsnetworkaccess.NewPolicyLink()
state := graphmodels.ENABLED_STATUS 
requestBody.SetState(&state) 
policy := graphmodelsnetworkaccess.NewTlsInspectionPolicy()
id := "b712c469-e7cd-e7cb-738f-94b199570b0d"
policy.SetId(&id) 
requestBody.SetPolicy(policy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.NetworkAccess().FilteringProfiles().ByFilteringProfileId("filteringProfile-id").Policies().Post(context.Background(), requestBody, nil)


```