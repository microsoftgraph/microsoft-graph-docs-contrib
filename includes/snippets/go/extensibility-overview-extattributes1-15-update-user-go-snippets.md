---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUser()
onPremisesExtensionAttributes := graphmodels.NewOnPremisesExtensionAttributes()
extensionAttribute1 := "skypeId.adeleVance"
onPremisesExtensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
extensionAttribute13 := null
onPremisesExtensionAttributes.SetExtensionAttribute13(&extensionAttribute13) 
requestBody.SetOnPremisesExtensionAttributes(onPremisesExtensionAttributes)

result, err := graphClient.UsersById("user-id").Patch(context.Background(), requestBody, nil)


```