---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEmailThreatSubmissionPolicy()
isReportToMicrosoftEnabled := false
requestBody.SetIsReportToMicrosoftEnabled(&isReportToMicrosoftEnabled) 

graphClient.Security().ThreatSubmission().EmailThreatSubmissionPoliciesById("emailThreatSubmissionPolicy-id").Patch(requestBody)


```