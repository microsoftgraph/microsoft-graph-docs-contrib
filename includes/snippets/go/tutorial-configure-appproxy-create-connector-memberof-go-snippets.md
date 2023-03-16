---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/3e6f4c35-a04b-4d03-b98a-66fff89b72e6"
requestBody.SetOdataId(&odataId) 

graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorsById("connector-id").MemberOf().Ref().Post(context.Background(), requestBody, nil)


```