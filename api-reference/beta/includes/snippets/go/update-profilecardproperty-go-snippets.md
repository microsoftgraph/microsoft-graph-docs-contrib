---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profileCardProperties, err := graphClient.Admin().People().ProfileCardProperties().ByProfileCardPropertyId("profileCardProperty-id").Patch(context.Background(), requestBody, nil)


```