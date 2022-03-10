---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewGroup()
description := "Contoso Life v2.0"
requestBody.SetDescription(&description)
displayName := "Contoso Life Renewed"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.GroupRequestBuilderPatchOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Patch(options)


```