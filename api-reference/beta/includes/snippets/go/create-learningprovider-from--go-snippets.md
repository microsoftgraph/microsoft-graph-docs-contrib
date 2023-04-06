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

result, err := graphClient.EmployeeExperience().LearningProviders().Post(context.Background(), requestBody, nil)


```