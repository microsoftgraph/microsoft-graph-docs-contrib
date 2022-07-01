---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewProfileCardProperty()
directoryPropertyName := "CustomAttribute1"
requestBody.SetDirectoryPropertyName(&directoryPropertyName)
requestBody.SetAnnotations( []ProfileCardAnnotation {
	msgraphsdk.NewProfileCardAnnotation(),
displayName := "Cost Center"
	SetDisplayName(&displayName)
	SetLocalizations( []DisplayNameLocalization {
		msgraphsdk.NewDisplayNameLocalization(),
languageTag := "ru-RU"
		SetLanguageTag(&languageTag)
displayName := "центр затрат"
		SetDisplayName(&displayName)
	}
}
organizationId := "organization-id"
result, err := graphClient.OrganizationById(&organizationId).Settings().ProfileCardProperties().Post(requestBody)


```