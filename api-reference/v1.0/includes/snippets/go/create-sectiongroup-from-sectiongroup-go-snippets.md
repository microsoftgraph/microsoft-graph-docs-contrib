---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"displayName": "Section group name",
}
sectionGroupId := "sectionGroup-id"
graphClient.Me().Onenote().SectionGroupsById(&sectionGroupId).SectionGroups().Post(requestBody)


```