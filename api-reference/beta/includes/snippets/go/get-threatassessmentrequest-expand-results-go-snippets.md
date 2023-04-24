---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetQueryParameters{
	Expand: [] string {"results"},
}
configuration := &graphconfig.InformationProtectionThreatAssessmentRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.InformationProtection().ThreatAssessmentRequests().ByThreatAssessmentRequestId("threatAssessmentRequest-id").Get(context.Background(), configuration)


```