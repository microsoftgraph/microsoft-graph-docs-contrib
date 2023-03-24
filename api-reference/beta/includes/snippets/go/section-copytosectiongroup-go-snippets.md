---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewCopyToSectionGroupPostRequestBody()
id := "id-value"
requestBody.SetId(&id) 
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 
renameAs := "renameAs-value"
requestBody.SetRenameAs(&renameAs) 

result, err := graphClient.Me().Onenote().SectionsById("onenoteSection-id").CopyToSectionGroup().Post(context.Background(), requestBody, nil)


```