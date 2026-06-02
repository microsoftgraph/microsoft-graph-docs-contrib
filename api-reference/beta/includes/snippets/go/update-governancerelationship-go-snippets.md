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

requestBody := graphmodelstenantgovernanceservices.NewGovernanceRelationship()
status := graphmodels.TERMINATED_RELATIONSHIPSTATUS 
requestBody.SetStatus(&status) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
governanceRelationships, err := graphClient.Directory().TenantGovernance().GovernanceRelationships().ByGovernanceRelationshipId("governanceRelationship-id").Patch(context.Background(), requestBody, nil)


```