---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewProfileCardProperty()
requestBody.SetAnnotations( []ProfileCardAnnotation {
	msgraphsdk.NewProfileCardAnnotation(),
	SetAdditionalData(map[string]interface{}{
		"localizations":  []Object {
		}
	}
}
options := &msgraphsdk.ProfileCardPropertyRequestBuilderPatchOptions{
	Body: requestBody,
}
organizationId := "organization-id"
profileCardPropertyId := "profileCardProperty-id"
graphClient.OrganizationById(&organizationId).Settings().ProfileCardPropertiesById(&profileCardPropertyId).Patch(options)


```