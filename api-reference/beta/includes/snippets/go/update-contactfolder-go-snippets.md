---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContactFolder()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId)
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
contactFolderId := "contactFolder-id"
graphClient.Me().ContactFoldersById(&contactFolderId).Patch(requestBody)


```