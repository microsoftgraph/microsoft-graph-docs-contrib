---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphinformationprotection "github.com/microsoftgraph/msgraph-beta-sdk-go/informationprotection"
	  //other-imports
)

requestParameters := &graphinformationprotection.ThreatAssessmentRequestsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"results"},
}
configuration := &graphinformationprotection.ThreatAssessmentRequestsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
threatAssessmentRequests, err := graphClient.InformationProtection().ThreatAssessmentRequests().ByThreatAssessmentRequestId("threatAssessmentRequest-id").Get(context.Background(), configuration)


```