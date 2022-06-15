---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewReferenceUpdateSchema()
@odata.id := "https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0"
requestBody.Set@odata.id(&@odata.id)
userId := "user-id"
graphClient.UsersById(&userId).Manager().$ref().Put(requestBody)


```