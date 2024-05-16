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

requestBody := graphmodelswindowsupdates.NewComplianceChange()
isRevoked := true
requestBody.SetIsRevoked(&isRevoked) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
complianceChanges, err := graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicyId("updatePolicy-id").ComplianceChanges().ByComplianceChangeId("complianceChange-id").Patch(context.Background(), requestBody, nil)


```