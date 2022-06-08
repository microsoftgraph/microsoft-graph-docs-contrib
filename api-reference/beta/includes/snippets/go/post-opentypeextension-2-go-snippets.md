---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExtension()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.openTypeExtension",
	"extensionName": "Com.Contoso.Referral",
	"companyName": "Wingtip Toys",
	"dealValue": ,
	"expirationDate": "2015-12-03T10:00:00.000Z",
}
messageId := "message-id"
result, err := graphClient.Me().MessagesById(&messageId).Extensions().Post(requestBody)


```