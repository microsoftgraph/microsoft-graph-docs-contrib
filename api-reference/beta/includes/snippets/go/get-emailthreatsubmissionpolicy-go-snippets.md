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



emailThreatSubmissionPolicies, err := graphClient.Security().ThreatSubmission().EmailThreatSubmissionPolicies().ByEmailThreatSubmissionPolicyId("emailThreatSubmissionPolicy-id").Get(context.Background(), nil)


```