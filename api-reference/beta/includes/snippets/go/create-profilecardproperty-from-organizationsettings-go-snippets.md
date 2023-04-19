---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

result, err := graphClient.Organization().ByOrganization().Id("organization-id").Settings().ProfileCardProperties().Post(context.Background(), requestBody, nil)


```