---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewApplication()
displayName := "New display name"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.ApplicationRequestBuilderPatchOptions{
	Body: requestBody,
}
applicationId := "application-id"
graphClient.ApplicationsById(&applicationId).Patch(options)


```