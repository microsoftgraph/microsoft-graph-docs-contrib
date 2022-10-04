---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Seattle District Technical Schools"
requestBody.SetDisplayName(&displayName) 
description := "Seattle district technical schools administration"
requestBody.SetDescription(&description) 
visibility := "HiddenMembership"
requestBody.SetVisibility(&visibility) 

result, err := graphClient.Directory().AdministrativeUnits().Post(context.Background(), requestBody, nil)


```