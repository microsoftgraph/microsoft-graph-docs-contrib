---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewGetUserOwnedObjectsPostRequestBody()
userId := "55ac777c-109e-4022-b58c-470c8fcb6892"
requestBody.SetUserId(&userId) 
type := "Group"
requestBody.SetType(&type) 

result, err := graphClient.Directory().DeletedItems().GetUserOwnedObjects().Post(context.Background(), requestBody, nil)


```