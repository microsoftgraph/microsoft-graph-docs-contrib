---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewItemAddress()
allowedAudiences := "me"
requestBody.SetAllowedAudiences(&allowedAudiences)
displayName := "Secret Hideout"
requestBody.SetDisplayName(&displayName)
userId := "user-id"
itemAddressId := "itemAddress-id"
graphClient.UsersById(&userId).Profile().AddressesById(&itemAddressId).Patch(requestBody)


```