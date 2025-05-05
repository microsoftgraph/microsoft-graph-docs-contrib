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

requestBody := graphmodels.NewConditionalAccessPolicy()
conditions := graphmodels.NewConditionalAccessConditionSet()
applications := graphmodels.NewConditionalAccessApplications()
includeApplications := []string {
	"5dc48733-b5df-475c-a49b-fa307ef00853",
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
users := graphmodels.NewConditionalAccessUsers()
includeUsers := []string {
	"00aa00aa-bb11-cc22-dd33-44ee44ee44ee",
}
users.SetIncludeUsers(includeUsers)
conditions.SetUsers(users)
requestBody.SetConditions(conditions)
displayName := "UserA Access to AI and Bing"
requestBody.SetDisplayName(&displayName) 
sessionControls := graphmodels.NewConditionalAccessSessionControls()
globalSecureAccessFilteringProfile := graphmodels.NewGlobalSecureAccessFilteringProfileSessionControl()
profileId := "dddddddd-9999-0000-1111-eeeeeeeeeeee"
globalSecureAccessFilteringProfile.SetProfileId(&profileId) 
isEnabled := true
globalSecureAccessFilteringProfile.SetIsEnabled(&isEnabled) 
sessionControls.SetGlobalSecureAccessFilteringProfile(globalSecureAccessFilteringProfile)
requestBody.SetSessionControls(sessionControls)
state := graphmodels.ENABLED_CONDITIONALACCESSPOLICYSTATE 
requestBody.SetState(&state) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.Identity().ConditionalAccess().Policies().Post(context.Background(), requestBody, nil)


```