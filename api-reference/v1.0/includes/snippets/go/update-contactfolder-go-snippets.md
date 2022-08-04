---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContactFolder()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId) 
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 

graphClient.Me().ContactFoldersById("contactFolder-id").Patch(requestBody)


```