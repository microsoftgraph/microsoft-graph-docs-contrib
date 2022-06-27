---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEducationClass()
description := "History - World History 1"
requestBody.SetDescription(&description)
displayName := "World History Level 1"
requestBody.SetDisplayName(&displayName)
educationClassId := "educationClass-id"
graphClient.Education().ClassesById(&educationClassId).Patch(requestBody)


```