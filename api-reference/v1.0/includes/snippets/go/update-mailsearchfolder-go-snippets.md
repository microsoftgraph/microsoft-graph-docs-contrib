---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewMailFolder()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.mailSearchFolder",
	"filterQuery": "contains(subject, 'Analytics')",
}
options := &msgraphsdk.MailFolderRequestBuilderPatchOptions{
	Body: requestBody,
}
mailFolderId := "mailFolder-id"
graphClient.Me().MailFoldersById(&mailFolderId).Patch(options);


```