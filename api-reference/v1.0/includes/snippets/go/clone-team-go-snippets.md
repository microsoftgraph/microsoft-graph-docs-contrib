---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Teams/Item/Clone"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewClonePostRequestBody()
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

graphClient.Teams().ByTeamId("team-id").Clone().Post(context.Background(), requestBody, nil)


```