---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/identityprotection"
	  //other-imports
)


requestFilter := "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'"

requestParameters := &graphidentityprotection.IdentityProtectionRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentityprotection.IdentityProtectionRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
riskDetections, err := graphClient.IdentityProtection().RiskDetections().Get(context.Background(), configuration)


```