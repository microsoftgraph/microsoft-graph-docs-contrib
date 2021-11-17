---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewMailFolder()
displayName := "Weekly digests"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.mailSearchFolder",
	"includeNestedFolders": true,
	"sourceFolderIds":  []String {
		"AQMkADYAAAIBDAAAAA==",
	}
	"filterQuery": "contains(subject, 'weekly digest')",
}
options := &msgraphsdk.ChildFoldersRequestBuilderPostOptions{
	Body: requestBody,
}
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).ChildFolders().Post(options)


```