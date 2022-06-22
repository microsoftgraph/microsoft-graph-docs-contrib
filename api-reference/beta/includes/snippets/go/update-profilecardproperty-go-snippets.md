---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewProfileCardProperty()
requestBody.SetAnnotations( []ProfileCardAnnotation {
	msgraphsdk.NewProfileCardAnnotation(),
	SetLocalizations( []DisplayNameLocalization {
		msgraphsdk.NewDisplayNameLocalization(),
languageTag := "no-NB"
		SetLanguageTag(&languageTag)
displayName := "Kostnads Senter"
		SetDisplayName(&displayName)
	}
}
organizationId := "organization-id"
profileCardPropertyId := "profileCardProperty-id"
graphClient.OrganizationById(&organizationId).Settings().ProfileCardPropertiesById(&profileCardPropertyId).Patch(requestBody)


```