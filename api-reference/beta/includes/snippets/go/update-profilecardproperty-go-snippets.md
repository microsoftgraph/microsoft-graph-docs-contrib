---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewProfileCardProperty()


profileCardAnnotation := graphmodels.NewProfileCardAnnotation()


displayNameLocalization := graphmodels.NewDisplayNameLocalization()
languageTag := "no-NB"
displayNameLocalization.SetLanguageTag(&languageTag) 
displayName := "Kostnads Senter"
displayNameLocalization.SetDisplayName(&displayName) 

localizations := []graphmodels.DisplayNameLocalizationable {
	displayNameLocalization,

}
profileCardAnnotation.SetLocalizations(localizations)

annotations := []graphmodels.ProfileCardAnnotationable {
	profileCardAnnotation,

}
requestBody.SetAnnotations(annotations)

result, err := graphClient.OrganizationById("organization-id").Settings().ProfileCardPropertiesById("profileCardProperty-id").Patch(context.Background(), requestBody, nil)


```