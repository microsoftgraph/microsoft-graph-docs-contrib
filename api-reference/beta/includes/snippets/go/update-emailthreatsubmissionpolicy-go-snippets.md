---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEmailThreatSubmissionPolicy()
isReportToMicrosoftEnabled := false
requestBody.SetIsReportToMicrosoftEnabled(&isReportToMicrosoftEnabled) 

result, err := graphClient.Security().ThreatSubmission().EmailThreatSubmissionPoliciesById("emailThreatSubmissionPolicy-id").Patch(context.Background(), requestBody, nil)


```