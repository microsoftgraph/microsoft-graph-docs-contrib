---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEmailThreatSubmissionPolicy()
isReportToMicrosoftEnabled := true
requestBody.SetIsReportToMicrosoftEnabled(&isReportToMicrosoftEnabled) 

result, err := graphClient.Security().ThreatSubmission().EmailThreatSubmissionPolicies().Post(context.Background(), requestBody, nil)


```