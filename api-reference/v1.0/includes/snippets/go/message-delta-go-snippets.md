---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "odata.maxpagesize=2"
}
options := &msgraphsdk.DeltaRequestBuilderGetOptions{
	H: headers,
}
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).Messages().Delta()().Get(options)


```