---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewExtension()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.outlookServices.openTypeExtension",
	"extensionName": "Com.Contoso.Estimate",
	"companyName": "Contoso",
	"expirationDate": "2016-07-30T11:00:00.000Z",
	"DealValue": ,
	"topPicks":  []String {
		"Employees only",
		"Add spouse or guest",
		"Add family",
	}
}
options := &msgraphsdk.ExtensionRequestBuilderPatchOptions{
	Body: requestBody,
}
groupId := "group-id"
conversationThreadId := "conversationThread-id"
postId := "post-id"
extensionId := "extension-id"
graphClient.GroupsById(&groupId).ThreadsById(&conversationThreadId).PostsById(&postId).ExtensionsById(&extensionId).Patch(options)


```