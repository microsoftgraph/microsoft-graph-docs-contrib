---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewContactFolder()
parentFolderId := "parentFolderId-value"
requestBody.SetParentFolderId(&parentFolderId) 
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Me().ContactFoldersById("contactFolder-id").Patch(context.Background(), requestBody, nil)


```