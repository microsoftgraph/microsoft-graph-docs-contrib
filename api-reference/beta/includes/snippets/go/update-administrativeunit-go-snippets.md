---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewAdministrativeUnit()
displayName := "displayName-value"
requestBody.SetDisplayName(&displayName)
description := "description-value"
requestBody.SetDescription(&description)
visibility := "visibility-value"
requestBody.SetVisibility(&visibility)
options := &msgraphsdk.AdministrativeUnitRequestBuilderPatchOptions{
	Body: requestBody,
}
administrativeUnitId := "administrativeUnit-id"
graphClient.AdministrativeUnitsById(&administrativeUnitId).Patch(options)


```