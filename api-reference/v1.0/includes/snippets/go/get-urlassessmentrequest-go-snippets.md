---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



threatAssessmentRequests, err := graphClient.InformationProtection().ThreatAssessmentRequests().ByThreatAssessmentRequestId("threatAssessmentRequest-id").Get(context.Background(), nil)


```