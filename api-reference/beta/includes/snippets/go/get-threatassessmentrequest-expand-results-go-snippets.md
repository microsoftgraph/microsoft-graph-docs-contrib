---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphinformationprotection.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetQueryParameters{
	Expand: [] string {"results"},
}
configuration := &graphinformationprotection.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.InformationProtection().ThreatAssessmentRequests().ByThreatAssessmentRequestId("threatAssessmentRequest-id").Get(context.Background(), configuration)


```