---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGroup()
requestBody.SetAssignedLabels( []AssignedLabel {
	msgraphsdk.NewAssignedLabel(),
	SetAdditionalData(map[string]interface{}{
		"labelId": "45cd0c48-c540-4358-ad79-a3658cdc5b88",
	}
}
options := &msgraphsdk.GroupRequestBuilderPatchOptions{
	Body: requestBody,
}
groupId := "group-id"
graphClient.GroupsById(&groupId).Patch(options)


```