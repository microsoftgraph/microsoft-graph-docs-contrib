---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewDirectorySetting()
requestBody.SetAdditionalData(map[string]interface{}{
}
options := &msgraphsdk.SettingsRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Settings().Post(options)


```