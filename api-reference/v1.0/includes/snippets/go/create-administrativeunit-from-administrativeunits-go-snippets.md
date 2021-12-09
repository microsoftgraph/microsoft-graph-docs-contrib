---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAdministrativeUnit()
displayName := "Seattle District Technical Schools"
requestBody.SetDisplayName(&displayName)
description := "Seattle district technical schools administration"
requestBody.SetDescription(&description)
visibility := "HiddenMembership"
requestBody.SetVisibility(&visibility)
options := &msgraphsdk.AdministrativeUnitsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Directory().AdministrativeUnits().Post(options)


```