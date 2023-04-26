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

result, err := graphClient.Organization().ByOrganization().Id("organization-id").Settings().ProfileCardProperties().ByProfileCardPropertieId("profileCardProperty-id").Patch(context.Background(), requestBody, nil)


```