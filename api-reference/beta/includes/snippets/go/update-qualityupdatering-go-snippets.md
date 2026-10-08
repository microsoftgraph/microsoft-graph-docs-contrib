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
displayName := "Test Policy 123"
requestBody.SetDisplayName(&displayName) 
description := "Pre-production test policy"
requestBody.SetDescription(&description) 
deferralInDays := int32(5)
requestBody.SetDeferralInDays(&deferralInDays) 
isPaused := true
requestBody.SetIsPaused(&isPaused) 
isHotpatchEnabled := true
requestBody.SetIsHotpatchEnabled(&isHotpatchEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
rings, err := graphClient.Admin().Windows().Updates().Policies().ByPolicyId("policy-id").Rings().ByRingId("ring-id").Patch(context.Background(), requestBody, nil)


```