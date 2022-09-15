---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewItemAddress()
allowedAudiences := graphmodels.ME_ALLOWEDAUDIENCES 
requestBody.SetAllowedAudiences(&allowedAudiences) 
displayName := "Secret Hideout"
requestBody.SetDisplayName(&displayName) 

graphClient.UsersById("user-id").Profile().AddressesById("itemAddress-id").Patch(context.Background(), requestBody, nil)


```