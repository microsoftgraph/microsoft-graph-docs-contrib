---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceUpdate()
"@odata.id" := "https://graph.microsoft.com/v1.0/education/me/rubrics/ceb3863e-6912-4ea9-ac41-3c2bb7b6672d"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").Rubric().$ref().Put(context.Background(), requestBody, nil)


```