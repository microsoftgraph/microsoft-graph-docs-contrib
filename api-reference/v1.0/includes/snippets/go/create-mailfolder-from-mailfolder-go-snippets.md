---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMailFolder()
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 
isHidden := true
requestBody.SetIsHidden(&isHidden) 

result, err := graphClient.Me().MailFoldersById("mailFolder-id").ChildFolders().Post(requestBody)


```