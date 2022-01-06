---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/v1.0/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignmentCategories/ec98f158-341d-4fea-9f8c-14a250d489ac",
}
options := &msgraphsdk.EducationCategoryRequestBuilderPostOptions{
	Body: requestBody,
}
educationClassId := "educationClass-id"
educationAssignmentId := "educationAssignment-id"
educationCategoryId := "educationCategory-id"
graphClient.Education().ClassesById(&educationClassId).AssignmentsById(&educationAssignmentId).CategoriesById(&educationCategoryId).Post(options)


```