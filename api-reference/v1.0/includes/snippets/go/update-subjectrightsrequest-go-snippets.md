---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSubjectRightsRequest()
"@odata.type" := "#microsoft.graph.subjectRightsRequest"
requestBody.Set"@odata.type"(&"@odata.type") 
internalDueDateTime , err := time.Parse(time.RFC3339, "2021-08-30T00:00:00Z")
requestBody.SetInternalDueDateTime(&internalDueDateTime) 

graphClient.Privacy().SubjectRightsRequestsById("subjectRightsRequest-id").Patch(requestBody)


```