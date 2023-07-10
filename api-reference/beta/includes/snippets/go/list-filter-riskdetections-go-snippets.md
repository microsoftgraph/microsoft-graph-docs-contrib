---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentityprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/identityprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "riskEventType eq 'unfamiliarFeatures' or riskLevel eq 'medium'"

requestParameters := &graphidentityprotection.IdentityProtectionRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentityprotection.IdentityProtectionRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskDetections().Get(context.Background(), configuration)


```