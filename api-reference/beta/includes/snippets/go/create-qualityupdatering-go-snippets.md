---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

requestBody := graphmodelswindowsupdates.NewRing()
displayName := "Ring0 - IT devices"
requestBody.SetDisplayName(&displayName) 
description := "First deployment ring to test updates before going to prod."
requestBody.SetDescription(&description) 
includedGroupAssignment := graphmodelswindowsupdates.NewIncludedGroupAssignment()
requestBody.SetIncludedGroupAssignment(includedGroupAssignment)
excludedGroupAssignment := graphmodelswindowsupdates.NewExcludedGroupAssignment()
requestBody.SetExcludedGroupAssignment(excludedGroupAssignment)
deferralInDays := int32(5)
requestBody.SetDeferralInDays(&deferralInDays) 
isPaused := false
requestBody.SetIsPaused(&isPaused) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
rings, err := graphClient.Admin().Windows().Updates().Policies().ByPolicyId("policy-id").Rings().Post(context.Background(), requestBody, nil)


```