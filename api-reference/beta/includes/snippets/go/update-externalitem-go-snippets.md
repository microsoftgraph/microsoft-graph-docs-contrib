---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExternalItem()
requestBody.SetAcl( []Acl {
	msgraphsdk.NewAcl(),
	SetAdditionalData(map[string]interface{}{
		"type": "everyone",
		"value": "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
		"accessType": "grant",
	}
}
externalConnectionId := "externalConnection-id"
externalItemId := "externalItem-id"
graphClient.External().ConnectionsById(&externalConnectionId).ItemsById(&externalItemId).Patch(requestBody)


```