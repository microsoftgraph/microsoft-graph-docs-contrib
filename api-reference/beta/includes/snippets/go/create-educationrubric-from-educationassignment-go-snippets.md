---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewReferenceUpdateSchema()
@odata.id := "https://graph.microsoft.com/v1.0/education/me/rubrics/{id}"
requestBody.Set@odata.id(&@odata.id)
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).Rubric().$ref().Put(requestBody)


```