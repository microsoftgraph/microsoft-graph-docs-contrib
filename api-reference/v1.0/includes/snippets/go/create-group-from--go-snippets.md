---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/v1.0/groups/{groupId}",
}
printerShareId := "printerShare-id"
groupId := "group-id"
graphClient.Print().SharesById(&printerShareId).AllowedGroupsById(&groupId).Post(requestBody)


```