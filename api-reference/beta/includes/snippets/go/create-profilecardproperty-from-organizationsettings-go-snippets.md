---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewProfileCardProperty()
directoryPropertyName := "CustomAttribute1"
requestBody.SetDirectoryPropertyName(&directoryPropertyName) 


profileCardAnnotation := graphmodels.NewProfileCardAnnotation()
displayName := "Cost Center"
profileCardAnnotation.SetDisplayName(&displayName) 


displayNameLocalization := graphmodels.NewDisplayNameLocalization()
languageTag := "ru-RU"
displayNameLocalization.SetLanguageTag(&languageTag) 
displayName := "центр затрат"
displayNameLocalization.SetDisplayName(&displayName) 

localizations := []graphmodels.DisplayNameLocalizationable {
	displayNameLocalization,

}
profileCardAnnotation.SetLocalizations(localizations)

annotations := []graphmodels.ProfileCardAnnotationable {
	profileCardAnnotation,

}
requestBody.SetAnnotations(annotations)

result, err := graphClient.OrganizationById("organization-id").Settings().ProfileCardProperties().Post(requestBody)


```