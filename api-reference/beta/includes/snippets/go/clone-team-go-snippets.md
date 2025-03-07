---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphteams.NewClonePostRequestBody()
displayName := "Library Assist"
requestBody.SetDisplayName(&displayName) 
description := "Self help community for library"
requestBody.SetDescription(&description) 
mailNickname := "libassist"
requestBody.SetMailNickname(&mailNickname) 
partsToClone := graphmodels.APPS,TABS,SETTINGS,CHANNELS,MEMBERS_CLONABLETEAMPARTS 
requestBody.SetPartsToClone(&partsToClone) 
visibility := graphmodels.PUBLIC_TEAMVISIBILITYTYPE 
requestBody.SetVisibility(&visibility) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Teams().ByTeamId("team-id").Clone().Post(context.Background(), requestBody, nil)


```