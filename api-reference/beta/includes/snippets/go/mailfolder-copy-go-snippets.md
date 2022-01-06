---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
destinationId := "destinationId-value"
requestBody.SetDestinationId(&destinationId)
options := &msgraphsdk.CopyRequestBuilderPostOptions{
	Body: requestBody,
}
mailFolderId := "mailFolder-id"
result, err := graphClient.Me().MailFoldersById(&mailFolderId).Copy().Post(options)


```