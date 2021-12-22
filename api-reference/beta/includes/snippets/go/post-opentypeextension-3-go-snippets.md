---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExtension()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.openTypeExtension",
	"extensionName": "Com.Contoso.Deal",
	"companyName": "Alpine Skis",
	"dealValue": ,
	"expirationDate": "2015-07-03T13:04:00.000Z",
}
options := &msgraphsdk.ExtensionsRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
eventId := "event-id"
result, err := graphClient.GroupsById(&groupId).EventsById(&eventId).Extensions().Post(options)


```