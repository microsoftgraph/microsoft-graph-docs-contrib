---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEmailThreatSubmissionPolicy()
isReportToMicrosoftEnabled := false
requestBody.SetIsReportToMicrosoftEnabled(&isReportToMicrosoftEnabled) 

result, err := graphClient.Security().ThreatSubmission().EmailThreatSubmissionPolicies().ByEmailThreatSubmissionPolicieId("emailThreatSubmissionPolicy-id").Patch(context.Background(), requestBody, nil)


```