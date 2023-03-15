---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewContactFolder()
displayName := "Family"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().ContactFoldersById("contactFolder-id").ChildFolders().Post(context.Background(), requestBody, nil)


```