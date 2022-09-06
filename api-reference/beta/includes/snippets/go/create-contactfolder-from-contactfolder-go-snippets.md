---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContactFolder()
displayName := "Family"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().ContactFoldersById("contactFolder-id").ChildFolders().Post(requestBody)


```