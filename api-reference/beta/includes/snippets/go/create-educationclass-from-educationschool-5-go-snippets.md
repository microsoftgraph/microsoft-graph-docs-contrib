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
options := &msgraphsdk.RefRequestBuilderPostOptions{
	Body: requestBody,
}
educationSchoolId := "educationSchool-id"
result, err := graphClient.Education().SchoolsById(&educationSchoolId).Classes().$ref().Post(options)


```