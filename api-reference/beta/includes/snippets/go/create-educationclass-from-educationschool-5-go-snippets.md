---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/beta/education/classes/11006",
}
educationSchoolId := "educationSchool-id"
educationClassId := "educationClass-id"
graphClient.Education().SchoolsById(&educationSchoolId).ClassesById(&educationClassId).Post(requestBody)


```