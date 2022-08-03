---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationProxy/connectorGroups/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.OnPremisesPublishingProfilesById("onPremisesPublishingProfile-id").ConnectorsById("connector-id").MemberOf().$ref().Post(requestBody)


```