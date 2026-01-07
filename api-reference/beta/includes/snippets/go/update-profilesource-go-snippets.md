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

requestBody := graphmodels.NewProfileSource()
sourceId := "bamboohr1"
requestBody.SetSourceId(&sourceId) 
kind := "BambooHR"
requestBody.SetKind(&kind) 
displayName := "BambooHR Updated"
requestBody.SetDisplayName(&displayName) 
webUrl := "https://bamboohr.contoso.com/login"
requestBody.SetWebUrl(&webUrl) 


profileSourceLocalization := graphmodels.NewProfileSourceLocalization()
displayName := "HR-Platform"
profileSourceLocalization.SetDisplayName(&displayName) 
webUrl := "http://bamboohr.contoso.com/en-us/login"
profileSourceLocalization.SetWebUrl(&webUrl) 
languageTag := "en-us"
profileSourceLocalization.SetLanguageTag(&languageTag) 
profileSourceLocalization1 := graphmodels.NewProfileSourceLocalization()
displayName := "HR-Plattform"
profileSourceLocalization1.SetDisplayName(&displayName) 
webUrl := "http://bamboohr.contoso.com/de/login"
profileSourceLocalization1.SetWebUrl(&webUrl) 
languageTag := "de"
profileSourceLocalization1.SetLanguageTag(&languageTag) 

localizations := []graphmodels.ProfileSourceLocalizationable {
	profileSourceLocalization,
	profileSourceLocalization1,
}
requestBody.SetLocalizations(localizations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sourceId := "{sourceId}"
profileSources, err := graphClient.Admin().People().ProfileSourcesWithSourceId(&sourceId).Patch(context.Background(), requestBody, nil)


```