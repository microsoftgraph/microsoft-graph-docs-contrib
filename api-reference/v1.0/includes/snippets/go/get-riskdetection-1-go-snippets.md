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



riskDetections, err := graphClient.IdentityProtection().RiskDetections().ByRiskDetectionId("riskDetection-id").Get(context.Background(), nil)


```