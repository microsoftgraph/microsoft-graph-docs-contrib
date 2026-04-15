---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelstenantgovernanceservices "github.com/microsoftgraph/msgraph-beta-sdk-go/models/tenantgovernanceservices"
	  //other-imports
)

requestBody := graphmodelstenantgovernanceservices.NewGovernanceRequest()
status := graphmodels.ACCEPTED_REQUESTSTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governanceRequests, err := graphClient.Directory().TenantGovernance().GovernanceRequests().ByGovernanceRequestId("governanceRequest-id").Patch(context.Background(), requestBody, nil)


```