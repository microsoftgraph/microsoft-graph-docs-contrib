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

requestBody := graphmodelswindowsupdates.NewPolicyApproval()
catalogEntryId := "1d8864c1-531f-4d5b-8225-8653ef4316d8"
requestBody.SetCatalogEntryId(&catalogEntryId) 
status := graphmodels.SUSPENDED_APPROVALSTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
approvals, err := graphClient.Admin().Windows().Updates().Policies().ByPolicyId("policy-id").Approvals().ByPolicyApprovalId("policyApproval-id").Patch(context.Background(), requestBody, nil)


```