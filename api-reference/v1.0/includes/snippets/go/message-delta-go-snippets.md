---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

headers := map[string]string{
	"Prefer": "odata.maxpagesize=2"
}
options := &msgraphsdk.MessageRequestBuilderGetOptions{
	H: headers,
}
mailFolderId := "mailFolder-id"
messageId := "message-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).MessagesById(&messageId).Get(options)


```