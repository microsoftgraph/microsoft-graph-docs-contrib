---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



detectionRules, err := graphClient.Security().Rules().DetectionRules().ByDetectionRuleId("detectionRule-id").Get(context.Background(), nil)


```