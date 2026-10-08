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

requestBody := graphmodelswindowsupdates.NewPolicy()
displayName := "Patch Tuesday Test"
requestBody.SetDisplayName(&displayName) 
description := "Quality update policy to test upcoming Patch Tuesday updates"
requestBody.SetDescription(&description) 


approvalRule := graphmodelswindowsupdates.NewQualityUpdateApprovalRule()
deferralInDays := int32(0)
approvalRule.SetDeferralInDays(&deferralInDays) 
classification := graphmodels.NONSECURITY_QUALITYUPDATECLASSIFICATION 
approvalRule.SetClassification(&classification) 
cadence := graphmodels.OUTOFBAND_QUALITYUPDATECADENCE 
approvalRule.SetCadence(&cadence) 

approvalRules := []graphmodelswindowsupdates.ApprovalRuleable {
	approvalRule,
}
requestBody.SetApprovalRules(approvalRules)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.Admin().Windows().Updates().Policies().ByPolicyId("policy-id").Patch(context.Background(), requestBody, nil)


```