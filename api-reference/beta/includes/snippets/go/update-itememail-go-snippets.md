---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewItemEmail()
displayName := "Business Email"
requestBody.SetDisplayName(&displayName)
type := "work"
requestBody.SetType(&type)
userId := "user-id"
itemEmailId := "itemEmail-id"
graphClient.UsersById(&userId).Profile().EmailsById(&itemEmailId).Patch(requestBody)


```