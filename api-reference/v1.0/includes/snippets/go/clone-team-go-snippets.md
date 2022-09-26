---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

graphClient.TeamsById("team-id").Clone().Post(context.Background(), requestBody, nil)


```