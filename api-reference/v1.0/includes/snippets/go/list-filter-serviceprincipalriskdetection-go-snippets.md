---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-sdk-go/identityprotection"
	  //other-imports
)


requestFilter := "riskEventType eq 'investigationsThreatIntelligence' or riskLevel eq 'medium'"

requestParameters := &graphidentityprotection.IdentityProtectionServicePrincipalRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentityprotection.IdentityProtectionServicePrincipalRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
servicePrincipalRiskDetections, err := graphClient.IdentityProtection().ServicePrincipalRiskDetections().Get(context.Background(), configuration)


```