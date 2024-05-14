---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewProfileCardProperty()


profileCardAnnotation := graphmodels.NewProfileCardAnnotation()
displayName := "Cost Center"
profileCardAnnotation.SetDisplayName(&displayName) 


displayNameLocalization := graphmodels.NewDisplayNameLocalization()
languageTag := "no"
displayNameLocalization.SetLanguageTag(&languageTag) 
displayName := "Kostnadssenter"
displayNameLocalization.SetDisplayName(&displayName) 

localizations := []graphmodels.DisplayNameLocalizationable {
	displayNameLocalization,
}
profileCardAnnotation.SetLocalizations(localizations)

annotations := []graphmodels.ProfileCardAnnotationable {
	profileCardAnnotation,
}
requestBody.SetAnnotations(annotations)

profileCardProperties, err := graphClient.Admin().People().ProfileCardProperties().ByProfileCardPropertyId("profileCardProperty-id").Patch(context.Background(), requestBody, nil)


```