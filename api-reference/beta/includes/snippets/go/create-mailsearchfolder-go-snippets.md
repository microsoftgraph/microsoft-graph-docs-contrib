---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMailFolder()
"@odata.type" := "microsoft.graph.mailSearchFolder"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "Weekly digests"
requestBody.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	includeNestedFolders := true
requestBody.SetIncludeNestedFolders(&includeNestedFolders) 
	sourceFolderIds := []string {
		"AQMkADYAAAIBDAAAAA==",

	}
	"filterQuery" : "contains(subject, 'weekly digest')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MailFoldersById("mailFolder-id").ChildFolders().Post(requestBody)


```