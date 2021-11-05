---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewGroup()
requestBody.SetAdditionalData(map[string]interface{}{
	"members@odata.bind":  []String {
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
		"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
	}
}
options := &msgraphsdk.GroupRequestBuilderPatchOptions{
	Body: requestBody,
}
groupId := "group-id"
graphClient.GroupsById(&groupId).Patch(options);


```