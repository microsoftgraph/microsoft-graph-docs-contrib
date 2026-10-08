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
displayName := "HR Platform"
requestBody.SetDisplayName(&displayName) 
kind := "BambooHR"
requestBody.SetKind(&kind) 
webUrl := "https://bamboohr.contoso.com/login"
requestBody.SetWebUrl(&webUrl) 


profileSourceLocalization := graphmodels.NewProfileSourceLocalization()
displayName := "HR-Plattform"
profileSourceLocalization.SetDisplayName(&displayName) 
webUrl := "http://bamboohr.contoso.com/de/login"
profileSourceLocalization.SetWebUrl(&webUrl) 
languageTag := "de"
profileSourceLocalization.SetLanguageTag(&languageTag) 

localizations := []graphmodels.ProfileSourceLocalizationable {
	profileSourceLocalization,
}
requestBody.SetLocalizations(localizations)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
profileSources, err := graphClient.Admin().People().ProfileSources().Post(context.Background(), requestBody, nil)


```