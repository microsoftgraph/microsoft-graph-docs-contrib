---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewLearningContent()
title := "Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle"
requestBody.SetTitle(&title) 
description := "A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application."
requestBody.SetDescription(&description) 
contentWebUrl := "https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/"
requestBody.SetContentWebUrl(&contentWebUrl) 
sourceName := "MsLearn"
requestBody.SetSourceName(&sourceName) 
thumbnailWebUrl := "https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF"
requestBody.SetThumbnailWebUrl(&thumbnailWebUrl) 
languageTag := "en-us"
requestBody.SetLanguageTag(&languageTag) 
numberOfPages := int32(9)
requestBody.SetNumberOfPages(&numberOfPages) 
duration , err := abstractions.ParseISODuration("PT20M")
requestBody.SetDuration(&duration) 
format := "Book"
requestBody.SetFormat(&format) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-01-01T00:00:00Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2021-04-01T04:26:06.1995367Z")
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime) 
contributors := []string {
	"Scott Simpson",

}
requestBody.SetContributors(contributors)
additionalTags := []string {
	"Create private or public teams",
	"Add members to teams",

}
requestBody.SetAdditionalTags(additionalTags)
skillTags := []string {
	"Create teams",
	"Teams channels",
	"Teams members",

}
requestBody.SetSkillTags(skillTags)
isActive := true
requestBody.SetIsActive(&isActive) 
isPremium := false
requestBody.SetIsPremium(&isPremium) 
isSearchable := true
requestBody.SetIsSearchable(&isSearchable) 

result, err := graphClient.EmployeeExperience().LearningProviders().ByLearningProviderId("learningProvider-id").LearningContents().ByLearningContentId("learningContent-id").Patch(context.Background(), requestBody, nil)


```