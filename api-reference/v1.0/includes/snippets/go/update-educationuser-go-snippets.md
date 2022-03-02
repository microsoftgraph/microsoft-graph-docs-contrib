---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEducationUser()
displayName := "Rogelio Cazares"
requestBody.SetDisplayName(&displayName)
givenName := "Rogelio"
requestBody.SetGivenName(&givenName)
middleName := "Fernando"
requestBody.SetMiddleName(&middleName)
surname := "Cazares"
requestBody.SetSurname(&surname)
options := &msgraphsdk.EducationUserRequestBuilderPatchOptions{
	Body: requestBody,
}
educationUserId := "educationUser-id"
graphClient.Education().UsersById(&educationUserId).Patch(options)


```