---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewLearningProvider()
displayName := "Microsoft"
requestBody.SetDisplayName(&displayName) 
squareLogoWebUrlForDarkTheme := "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png"
requestBody.SetSquareLogoWebUrlForDarkTheme(&squareLogoWebUrlForDarkTheme) 
longLogoWebUrlForDarkTheme := "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png"
requestBody.SetLongLogoWebUrlForDarkTheme(&longLogoWebUrlForDarkTheme) 
squareLogoWebUrlForLightTheme := "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png"
requestBody.SetSquareLogoWebUrlForLightTheme(&squareLogoWebUrlForLightTheme) 
longLogoWebUrlForLightTheme := "https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png"
requestBody.SetLongLogoWebUrlForLightTheme(&longLogoWebUrlForLightTheme) 
loginWebUrl := "https://www.linkedin.com/learning-login/teams"
requestBody.SetLoginWebUrl(&loginWebUrl) 
isCourseActivitySyncEnabled := true
requestBody.SetIsCourseActivitySyncEnabled(&isCourseActivitySyncEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
learningProviders, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").Patch(context.Background(), requestBody, nil)


```